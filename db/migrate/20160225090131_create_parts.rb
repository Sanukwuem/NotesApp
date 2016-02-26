class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.belongs_to :note, index: true
      t.belongs_to :notebook, index: true
      t.timestamps
    end
  end
end
