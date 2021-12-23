require 'rails_helper'

RSpec.describe "book_reviews/index", type: :view do
  before(:each) do
    assign(:book_reviews, [
      BookReview.create!(
        review: "MyText",
        name: "Name",
        rate: 2
      ),
      BookReview.create!(
        review: "MyText",
        name: "Name",
        rate: 2
      )
    ])
  end

  it "renders a list of book_reviews" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
