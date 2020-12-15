require 'elasticsearch/model'
class Book < ApplicationRecord
	has_many :book_categories
	has_many :categories, through: :book_categories
	validates :name, presence: true, length: {maximum: 50}
	validates :author, presence: true, length: {maximum: 50}
	validates :des, length: {maximum: 140}
	validates :category_ids, presence: true
	 include Elasticsearch::Model
     include Elasticsearch::Model::Callbacks

end
Book.__elasticsearch__.create_index!
Book.import