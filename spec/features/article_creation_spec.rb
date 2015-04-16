require 'rails_helper'

RSpec.describe "User creates an article" do
  context "with valid attributes" do
    it 'saves and displays the song title' do
      visit new_article_path
      fill_in "article[title]", with: "My favorite Ice Cream"
      fill_in "article[body]", with: "Chocolate"
      click_link_or_button "Create Article"
      expect(page).to have_content "My favorite Ice Cream"
      expect(page).to have_content "Chocolate"
    end
  end
end
