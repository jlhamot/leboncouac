class AddLevelToMusician < ActiveRecord::Migration
  def change
    add_column :musicians, :level, :string
  end
end
