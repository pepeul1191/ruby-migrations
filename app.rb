require 'active_record'
require 'sqlite3'
require 'logger'
require 'json'

ActiveRecord::Base.logger = Logger.new('debug.log')
configuration = YAML::load(IO.read('config/database.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])

class Usuario < ActiveRecord::Base
	self.table_name = "usuarios"
end

for u in Usuario.all
	puts u.nombre
end

def crear
	u = Usuario.new
	u.nombre = 'pablo'
	u.contrasenia = 'rojas'
	u.save
	puts u.id
end

crear