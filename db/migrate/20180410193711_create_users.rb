class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :User_ids do |t|
      t.column :first_name,     :string
      t.column :last_name,      :string

    end
  end
end
