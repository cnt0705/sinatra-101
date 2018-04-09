require 'active_record'
require 'mysql2'

ActiveRecord::Base.configurations = YAML.load_file('config/database.yml')
ActiveRecord::Base.establish_connection(:development)

class Users < ActiveRecord::Base
  def initialize
  end
end
