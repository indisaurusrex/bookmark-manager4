class Bookmark
  def self.all
    set_environment
    result = @connection.exec("SELECT * FROM bookmarks;")	
    result.map { |bookmark| bookmark['url'] }		    
  end

  def self.add
    set_environment
    p "the url in add method is #{$url}"
    @connection.exec("INSERT INTO bookmarks (url) VALUES('#{$url}');")
  end
end
