require_relative 'config/database'
require 'json'

Dir[File.dirname(__FILE__) + "/models/*.rb"].each do |file| 
  	require file
end

puts '1 ++++++++++++++++++++++++++++++++++++'
puts DB[:estado_usuarios].select(:id, :nombre).all.to_a.to_json
puts '2 ++++++++++++++++++++++++++++++++++++'
puts EstadoUsuario.all.to_a.to_json
puts '3 ++++++++++++++++++++++++++++++++++++'
for u in EstadoUsuario.all
	puts u.nombre
end