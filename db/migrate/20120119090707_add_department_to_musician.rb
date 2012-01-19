class AddDepartmentToMusician < ActiveRecord::Migration
  def change
    add_column :musicians, :department, :string
  end
end
