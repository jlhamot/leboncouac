class AddCommentToMusician < ActiveRecord::Migration
  def change
    add_column :musicians, :comment, :text
  end
end
