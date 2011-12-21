class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
