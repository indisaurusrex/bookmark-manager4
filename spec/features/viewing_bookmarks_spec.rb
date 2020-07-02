# frozen_string_literal: true

feature 'Viewing bookmarks' do
  scenario 'Visiting the index page' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end

feature 'Viewing bookmarks' do
  scenario 'A user is able to view bookmarks' do
    Bookmark.add('http://www.makersacademy.com')
    Bookmark.add('http://www.google.com')
    
    visit '/bookmarks'
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.google.com'
  end
end
