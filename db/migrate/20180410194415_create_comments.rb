class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :User, index: true
      t.belongs_to :Photo, index: true
      t.column :date_time,      :string
      t.column :comment_text,     :string
    end
  end
end
