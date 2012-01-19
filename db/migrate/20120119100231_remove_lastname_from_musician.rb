class RemoveLastnameFromMusician < ActiveRecord::Migration
  def up
    remove_column :musicians, :lastname
  end

  def down
    add_column :musicians, :lastname, :string
  end
end
