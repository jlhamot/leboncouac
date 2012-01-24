class AddStyleToMusician < ActiveRecord::Migration
  def change
    add_column :musicians, :style, :string
  end
end
