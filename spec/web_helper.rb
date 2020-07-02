def set_environment
  if ENV["RACK_ENV"] == "test"
    @connection = PG.connect(dbname: 'bookmark_manager_test')
  else
    @connection = PG.connect(dbname: 'bookmark_manager')		 
  end
end