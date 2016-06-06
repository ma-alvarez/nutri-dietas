class AddActive < ActiveRecord::Migration
  def change
  	add_column :plans, :active, :boolean
	add_column :social_securities, :active, :boolean
  end
end
