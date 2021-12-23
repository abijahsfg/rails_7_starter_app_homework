require 'rails_helper'

RSpec.describe "book_reviews/new", type: :view do
  before(:each) do
    assign(:book_review, BookReview.new(
      review: "MyText",
      name: "MyString",
      rate: 1
    ))
  end

  it "renders new book_review form" do
    render

    assert_select "form[action=?][method=?]", book_reviews_path, "post" do

      assert_select "textarea[name=?]", "book_review[review]"

      assert_select "input[name=?]", "book_review[name]"

      assert_select "input[name=?]", "book_review[rate]"
    end
  end
end
