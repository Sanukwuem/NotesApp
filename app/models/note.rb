class Note < ActiveRecord::Base
  has_many :parts
  has_many :notebooks, through: :parts
end
