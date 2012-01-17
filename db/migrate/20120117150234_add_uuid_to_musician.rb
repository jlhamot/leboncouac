require 'SecureRandom'

class AddUuidToMusician < ActiveRecord::Migration
  def change
    add_column :musicians, :uuid, :string
  end
end
