class Notebook < ActiveRecord::Base
  has_many :parts
  has_many :notes, through: :parts
end
