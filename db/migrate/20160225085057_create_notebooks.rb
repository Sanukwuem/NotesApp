class CreateNotebooks < ActiveRecord::Migration
  def change
    create_table :notebooks do |t|
      t.text :content
      t.timestamps
    end
  end
end
