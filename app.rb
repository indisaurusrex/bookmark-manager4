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

  post "/bookmarks" do
    $url = params['url']
    p "The url from params is #{$url}"
    Bookmark.add
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
