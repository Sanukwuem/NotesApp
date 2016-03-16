class Notebook < ActiveRecord::Base
  has_many :notes





  #has_many :notebook_path
  #has_many :note_id
  #has_many :new_notebook_path
  #has_many :notebooks # through: :parts

=begin
  attr_accessible :title, :content

validates :title, presence: true, uniqueness: true
validates :content, presence: true

# It returns the articles whose titles contain one or more words that form the query
def self.search(query)
  # where(:title, query) -> This would return an exact match of the query
  where("title like ?", "%#{query}%")
end
=end
end
