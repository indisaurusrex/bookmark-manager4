# frozen_string_literal: true

require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      @connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
      @connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end

  describe '.add' do
    it 'adds a bookmark to the database' do
      Bookmark.add('www.makers.com')
      bookmarks = Bookmark.all
      expect(bookmarks).to include('www.makers.com')
    end
  end
end
