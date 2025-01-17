require "rails_helper"

RSpec.describe BookReviewsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/book_reviews").to route_to("book_reviews#index")
    end

    it "routes to #new" do
      expect(get: "/book_reviews/new").to route_to("book_reviews#new")
    end

    it "routes to #show" do
      expect(get: "/book_reviews/1").to route_to("book_reviews#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/book_reviews/1/edit").to route_to("book_reviews#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/book_reviews").to route_to("book_reviews#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/book_reviews/1").to route_to("book_reviews#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/book_reviews/1").to route_to("book_reviews#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/book_reviews/1").to route_to("book_reviews#destroy", id: "1")
    end
  end
end
