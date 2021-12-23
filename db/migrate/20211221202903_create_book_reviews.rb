class CreateBookReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :book_reviews do |t|
      t.belongs_to :book, index: true, foreign_key: true
      t.text :review
      t.string :name
      t.float :rate

      t.timestamps
    end
  end
end
