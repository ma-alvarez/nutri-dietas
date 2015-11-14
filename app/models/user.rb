class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  SOCIAL_SECURITY_TYPES = [['Particular','PARTICULAR'],['OSDE','OSDE'],['OMINT','OMINT'],['DOSUBA','DOSUBA'],['Galeno','GALENO'],['Swiss Medical','SWISS_MEDICAL'],['Simeco','SIMECO'],['Medicus','MEDICUS'],['SCIS','SCIS'],['Corpomedicim','CORPOMEDICIM'],['Premedic','PREMEDIC'],['Otra','OTRA']]
  SOCIAL_SECURITY_PLAN_TYPES = [['210','210'],['310','310'],['410','410'],['450','450'],['510','510'],['50','50'],['100','100'],['150','150'],['250','250'],['300','300'],['500','500'],['550','550'],['600','600'],['1100','1100'],['Premium','PREMIUM'],['Premium Gold','GOLD_PREMIUM'],['Azul','AZUL'],['0-50','0-50'],['PMO','PMO'],['C100','C100'],['200','200'],['300','300'],['400','400'],['Plata','PLATA'],['Oro','ORO'],['Graduados','GRADUADOS'],['Alumnos','ALUMNOS']]
  MARITAL_STATUS = [['Soltero','SOLTERO'],['Casado','CASADO'],['Viudo','VIUDO'],['Divorciado','DIVORCIADO']]
  SEX = [['Masculino','M'],['Femenino','F']]
  JOB_TYPE = [['Liviana','LIVIANA'],['Moderada','MODERADA'],['Pesada','PESADA']]
  JOB_HS = [['0',0],['1',1],['2',2],['3',3],['4',4],['5',5],['6',6],['7',7],['8',8],['9',9],['10',10],['11',11],['12',12],['13',13],['14',14]]
  COOKS = [['Usted','SI'],['Otro','NO']]
  BUYS = [['Usted','SI'],['Otro','NO']]
  SPORT = [[],['1',1],['2',2],['3',3],['4',4],['5',5],['6',6],['7',7]]

  has_one :diet
  has_many :histories
  accepts_nested_attributes_for :diet
  accepts_nested_attributes_for :histories

  def min_weight
    (self.histories.minimum("weight")).round(2)
  end

  def max_weight
    (self.histories.maximum("weight")).round(2)
  end

  def min_weight_date
    self.histories.min_by(&:weight).date.strftime('%d/%m/%Y')
  end

  def max_weight_date
    self.histories.max_by(&:weight).date.strftime('%d/%m/%Y')
  end

end
