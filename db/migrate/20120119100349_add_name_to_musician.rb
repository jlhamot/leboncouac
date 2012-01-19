class AddNameToMusician < ActiveRecord::Migration
  def change
    add_column :musicians, :name, :string
  end
end
