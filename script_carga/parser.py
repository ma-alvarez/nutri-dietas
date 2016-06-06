import xlrd
import datetime
import sys
reload(sys)    # to re-enable sys.setdefaultencoding()
sys.setdefaultencoding('utf-8')

def escribir_archivo(array):
	try:
		f = open('salida/'+array[0]+array[1]+str(datetime.datetime.now())+'.txt','w')
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
			print 
			nom_apellido = str(sh.cell_value(rowx=4, colx=3))
			if (nom_apellido.count(' ')==1):
				array = nom_apellido.split(' ')
				values.append(array[0])#0 Nombre
				values.append(array[1])#1 Apellido
			elif (nom_apellido.count(' ')==2):
				array = nom_apellido.split(' ')
				values.append(array[0]+' '+array[1])#0 Nombre
				values.append(array[2])#1 Apellido
			else:
				array = nom_apellido.split(' ')
				values.append(array[0]+' '+array[1])#0 Nombre
				values.append(array[2]+ ' '+array[2])#1 Apellido
			
			values.append(sh.cell_value(rowx=5, colx=3))#2 Talla

			sexo = str(sh.cell_value(rowx=6, colx=3)).split(" ")
			values.append(str(sexo[0]))#3 Sexo

			peso_actual = str(sh.cell_value(rowx=7, colx=3)).split(" ")
			values.append(peso_actual[0].replace(",", "."))#4 Peso actual

			values.append(sh.cell_value(rowx=8, colx=3))#5 Edad

			peso_usual = str(sh.cell_value(rowx=9, colx=3)).split(" ")
			values.append(peso_usual[0].replace(",", "."))#6 Peso usual

			values.append(sh.cell_value(rowx=10, colx=3))#7 Muneca

			fecha_nacimiento = xlrd.xldate_as_tuple(sh.cell_value(rowx=11, colx=3),1)
			fecha_nacimiento = str(fecha_nacimiento[0])+'-'+str(fecha_nacimiento[1])+'-'+str(fecha_nacimiento[2])
			values.append(fecha_nacimiento)#8 F.Nacimiento

			values.append(sh.cell_value(rowx=12, colx=3))#9 Ocupacion

			fuma= str(sh.cell_value(rowx=13, colx=3)).split(":")
			fuma= fuma[0].split(" ")
			values.append(fuma[0])#10 Fuma

			values.append(sh.cell_value(rowx=15, colx=3))#11 Medicacion

			peso_obj = str(sh.cell_value(rowx=17, colx=3)).split(" ")
			values.append(peso_obj[0].replace(",", "."))#12 PESO AL QUE QUIERE LLEGAR

			peso_alta = str(sh.cell_value(rowx=18, colx=3)).split(" ")
			values.append(peso_alta[0].replace(",", "."))#13 PESO DE ALTA

			values.append(sh.cell_value(rowx=20, colx=3))#14 OBJETIVO
			values.append(sh.cell_value(rowx=21, colx=3))#15 DIRECCION
			values.append(sh.cell_value(rowx=23, colx=3))#16 MAIL
			values.append(sh.cell_value(rowx=5, colx=7))#17 Comentarios
			values.append(sh.cell_value(rowx=6, colx=7))#18 Recomendacion

			peso_min = str(sh.cell_value(rowx=32, colx=3)).split(" ")
			values.append(peso_min[0].replace(",", "."))#19 PESO Minimo

			peso_max = str(sh.cell_value(rowx=33, colx=3)).split(" ")
			values.append(peso_max[0].replace(",", "."))#20 PESO Maximo

			values.append(sh.cell_value(rowx=34, colx=3))#21 Con quien vive
			values.append(sh.cell_value(rowx=35, colx=3))#22 Quien cocina
			values.append(sh.cell_value(rowx=36, colx=3))#23 Quien hace las compras
			escribir_archivo(values)
		else:
			print "OTRO FORMATO"
	except Exception as e:
		print "ERROR ARCHIVO"

if __name__ == '__main__':
	for i in range(len(sys.argv)-1):
		parse(sys.argv[i+1])
