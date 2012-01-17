class AddEmailToMusician < ActiveRecord::Migration
  def change
    add_column :musicians, :email, :string
  end
end
