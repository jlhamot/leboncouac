class AddActiveToMusician < ActiveRecord::Migration
  def change
    add_column :musicians, :active, :boolean, default: false
  end
end
