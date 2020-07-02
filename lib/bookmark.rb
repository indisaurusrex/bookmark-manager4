class Bookmark
  def self.all
    set_environment
    result = @connection.exec("SELECT * FROM bookmarks;")	
    result.map { |bookmark| bookmark['url'] }		    
  end

  def self.add(url)
    set_environment
    @connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}');")
  end
end
