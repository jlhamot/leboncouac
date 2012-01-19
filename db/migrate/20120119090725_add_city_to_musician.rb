class AddCityToMusician < ActiveRecord::Migration
  def change
    add_column :musicians, :city, :string
  end
end
