class RemoveFirstnameFromMusician < ActiveRecord::Migration
  def up
    remove_column :musicians, :firstname
  end

  def down
    add_column :musicians, :firstname, :string
  end
end
