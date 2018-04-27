class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.belongs_to :User, index: true
      t.column :date_time,      :string
      t.column :file_name,      :string
    end
  end
end
