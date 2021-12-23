json.extract! book_review, :id, :review, :name, :rate, :created_at, :updated_at
json.url book_review_url(book_review, format: :json)
