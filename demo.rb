require 'active_record'
require 'sqlite3'
require 'logger'
require 'json'

# --------------------------------------------------------------------------------------

ActiveRecord::Base.logger = Logger.new('debug.log')
configuration = YAML::load(IO.read('config/database.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])

# --------------------------------------------------------------------------------------

class Usuario < ActiveRecord::Base
	belongs_to :estado_usuarios
	has_one :estado_usuarios
	self.table_name = 'usuarios'
	#self.primary_key = 'id'
end

class EstadoUsuario < ActiveRecord::Base
	has_many :usuarios
	self.table_name = 'estado_usuarios'
	#self.primary_key = 'id'
end

# --------------------------------------------------------------------------------------

def crear(usuario, contrasenia)
	u = Usuario.new
	u.nombre = usuario
	u.contrasenia = contrasenia
	u.save
	puts u.id
	for u in Usuario.all
		#puts u.nombre
		puts u.to_json
	end
end

def listar_usuarios
	#for u in Usuario.joins(:estado_usuario_id)
		#puts u.nombre
		#puts u.to_json
	#end
end

#crear('carlos', 'tevez')
listar_usuarios