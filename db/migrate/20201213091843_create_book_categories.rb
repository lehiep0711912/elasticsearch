class CreateBookCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :book_categories do |t|
      t.integer :book_id, foreign_key: true
      t.integer :category_id, foreign_key: true

      t.timestamps
    end
  end
end
