class Notebook < ActiveRecord::Base
  has_many :notes
  has_many :notebook_path
  has_many :note_id
  has_many :new_notebook_path
  has_many :notebooks # through: :parts
end
