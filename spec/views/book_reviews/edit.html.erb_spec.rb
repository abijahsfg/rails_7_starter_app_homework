require 'rails_helper'

RSpec.describe "book_reviews/edit", type: :view do
  before(:each) do
    @book_review = assign(:book_review, BookReview.create!(
      review: "MyText",
      name: "MyString",
      rate: 1
    ))
  end

  it "renders the edit book_review form" do
    render

    assert_select "form[action=?][method=?]", book_review_path(@book_review), "post" do

      assert_select "textarea[name=?]", "book_review[review]"

      assert_select "input[name=?]", "book_review[name]"

      assert_select "input[name=?]", "book_review[rate]"
    end
  end
end
