import xlrd
import datetime
import sys
reload(sys)    # to re-enable sys.setdefaultencoding()
sys.setdefaultencoding('utf-8')

def escribir_archivo(array):
	try:
		f = open('salida/'+array[0]+'.txt','w')
		for i in range(len(array)):
			if i == len(array)-1:
				f.write(str(array[i]))
			else:
				f.write(str(array[i])+'\t')
		f.write('\r\n')
		f.close()
	except Exception as e:
		print e
		

def parse(filename):
	try:
		book = xlrd.open_workbook(filename)
		sh = book.sheet_by_index(0)
		if str(sh.cell_value(rowx=0, colx=0)) == 'A':
			values = []
			print "Parseando ARCHIVO:", sh.cell_value(rowx=4, colx=3)
			values.append(sh.cell_value(rowx=4, colx=3))#0 Nombre y Apellido
			values.append(sh.cell_value(rowx=5, colx=3))#1 Talla
			values.append(sh.cell_value(rowx=6, colx=3))#2 Sexo
			values.append(sh.cell_value(rowx=7, colx=3))#3 Peso actual
			peso_actual = str(values[3]).split(" ")
			values[3]=peso_actual[0].replace(",", ".")
			values.append(sh.cell_value(rowx=8, colx=3))#4 Edad
			values.append(sh.cell_value(rowx=9, colx=3))#5 Peso usual
			peso_usual = str(values[5]).split(" ")
			values[5]=peso_usual[0].replace(",", ".")
			values.append(sh.cell_value(rowx=10, colx=3))#6 Muneca
			fecha_nacimiento = xlrd.xldate_as_tuple(sh.cell_value(rowx=11, colx=3),1)
			fecha_nacimiento = str(fecha_nacimiento[0])+'-'+str(fecha_nacimiento[1])+'-'+str(fecha_nacimiento[2])
			values.append(fecha_nacimiento)#7 F.Nacimiento
			values.append(sh.cell_value(rowx=12, colx=3))#8 Ocupacion
			values.append(sh.cell_value(rowx=13, colx=3))#9 Fuma
			fuma= str(values[9]).split(":")
			fuma= fuma[0].split(" ")
			values[9]= fuma[0]
			values.append(sh.cell_value(rowx=14, colx=3))#10 Patologias
			values.append(sh.cell_value(rowx=15, colx=3))#11 Medicacion
			values.append(sh.cell_value(rowx=16, colx=3))#12 ACTIVIDAD FISICA
			values.append(sh.cell_value(rowx=17, colx=3))#13 PESO AL QUE QUIERE LLEGAR
			peso_obj = str(values[13]).split(" ")
			values[13]=peso_obj[0].replace(",", ".")
			values.append(sh.cell_value(rowx=18, colx=3))#14 PESO DE ALTA
			peso_alta = str(values[14]).split(" ")
			values[14]=peso_alta[0].replace(",", ".")
			values.append(sh.cell_value(rowx=19, colx=3))#15 OBRA SOCIAL N
			values.append(sh.cell_value(rowx=20, colx=3))#16 OBJETIVO
			values.append(sh.cell_value(rowx=21, colx=3))#17 DIRECCION
			values.append(sh.cell_value(rowx=22, colx=3))#18 TELEFONO
			values.append(sh.cell_value(rowx=23, colx=3))#19 MAIL
			values.append(sh.cell_value(rowx=4, colx=7))#20 ALIMENTACION ESPECIAL
			values.append(sh.cell_value(rowx=5, colx=7))#21 Comentarios
			values.append(sh.cell_value(rowx=6, colx=7))#22 Recomendacion
			values.append(sh.cell_value(rowx=32, colx=3))#23 PESO Minimo
			peso_min = str(values[23]).split(" ")
			values[23]=peso_min[0].replace(",", ".")
			values.append(sh.cell_value(rowx=33, colx=3))#24 PESO Maximo
			peso_max = str(values[24]).split(" ")
			values[24]=peso_max[0].replace(",", ".")
			values.append(sh.cell_value(rowx=34, colx=3))#25 Con quien vive
			values.append(sh.cell_value(rowx=35, colx=3))#26 Quien cocina
			values.append(sh.cell_value(rowx=36, colx=3))#27 Quien hace las compras
			escribir_archivo(values)
		else:
			print "OTRO FORMATO"
	except Exception as e:
		print "ERROR ARCHIVO"

if __name__ == '__main__':
	for i in range(len(sys.argv)-1):
		parse(sys.argv[i+1])
