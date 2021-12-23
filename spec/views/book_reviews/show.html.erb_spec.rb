require 'rails_helper'

RSpec.describe "book_reviews/show", type: :view do
  before(:each) do
    @book_review = assign(:book_review, BookReview.create!(
      review: "MyText",
      name: "Name",
      rate: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
