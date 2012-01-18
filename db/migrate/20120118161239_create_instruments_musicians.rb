class CreateInstrumentsMusicians < ActiveRecord::Migration
  def up
    create_table :instruments_musicians, :id => false do |t|
          t.integer :instrument_id
          t.integer :musician_id
        end
  end

  def down
    drop_table :instruments_musicians
  end
end