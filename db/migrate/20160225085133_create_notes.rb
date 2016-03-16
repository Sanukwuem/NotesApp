class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :content


      t.string :note
    

      t.integer :notebook_id


      #used for seeding
      #t.string :name
      #t.string :image
      #t.string :description

      t.references :notebook

      t.timestamps
    end
  end
end
