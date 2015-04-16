require 'rails_helper'

RSpec.describe "User creates a comment" do
  context "with valid attributes" do

    before do
      @article = Article.create(title: "Death Star", body: "That's no moon.")
    end

    it 'saves and displays the comment title and body' do
      visit article_path(@article)
      fill_in "comment[author_name]", with: "Han Solo"
      fill_in "comment[body]", with: "I have a bad feeling about this."
      click_link_or_button "Submit"
      expect(page).to have_content "Han Solo"
      expect(page).to have_content "I have a bad feeling about this."
    end
  end
end
