class CreateNotebooks < ActiveRecord::Migration
  def change
    create_table :notebooks do |t|
      t.text :content

      t.string :name
      t.string :note
    

      #t.string :image
      t.timestamps
    end
  end
end
