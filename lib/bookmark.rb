class Bookmark
  def self.all
<<<<<<< HEAD
    if ENV["RACK_ENV"] == "test"
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
      result = connection.exec("SELECT * FROM bookmarks;")
      result.map { |bookmark| bookmark['url'] }
=======
    [
      "http://www.makersacademy.com",
      "http://www.google.com"
     ]
>>>>>>> parent of d26df61... add pg gem and connect db
  end
end
