require 'elasticsearch/model'
class Category < ApplicationRecord
	before_save :downcase_cate
	has_many :book_categories
	has_many :books, through: :book_categories
	validates :cate, presence: true, uniqueness: true, length: { maximum: 40 }
	include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
    private	
    def downcase_cate
    	self.cate = cate.downcase
    end
end
Category.__elasticsearch__.create_index!
Category.import