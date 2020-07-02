# frozen_string_literal: true

def set_environment
  @connection = if ENV['RACK_ENV'] == 'test'
                  PG.connect(dbname: 'bookmark_manager_test')
                else
                  PG.connect(dbname: 'bookmark_manager')
                end
end
