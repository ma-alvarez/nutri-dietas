class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

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
    (self.histories.minimum("weight")).round(2) if !self.histories.empty? && !self.histories.nil?
  end

  def max_weight
    (self.histories.maximum("weight")).round(2) if !self.histories.empty? && !self.histories.nil?
  end

  def min_weight_date
    self.histories.min_by(&:weight).date.strftime('%d/%m/%Y')if !self.histories.empty? && !self.histories.nil?
  end

  def max_weight_date
    self.histories.max_by(&:weight).date.strftime('%d/%m/%Y') if !self.histories.empty? && !self.histories.nil?
  end
  
end
