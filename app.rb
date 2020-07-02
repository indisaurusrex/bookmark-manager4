require 'sinatra/base'
require './lib/bookmark'
require './spec/web_helper'
require 'pg'

class BookmarkManager < Sinatra::Base
  get "/" do
    "Bookmark Manager"
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get "/bookmarks/new" do
    erb :bookmarksnew
  end

  post "/bookmarks" do
    Bookmark.add(params['url'])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
