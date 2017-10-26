#require './config/database'

Sequel.migration do
  	up do
		DB.transaction do
	  		file = File.new('db/data/estado_usuarios.txt', 'r')

			while (line = file.gets)
				line_array = line.split('::')

				id = line_array[0]
				nombre = line_array[1].strip
				#puts id + " - " + nombre
				DB[:estado_usuarios].insert(id: id, nombre: nombre)
			end
		end
  	end

	down do
		DB[:estado_usuarios].delete
	end
end