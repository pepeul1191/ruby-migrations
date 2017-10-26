Sequel.migration do
  	up do
	    create_table(:estado_usuarios) do
		      primary_key :id
		      String :usuario, null: false, size: 30
	    end
  	end

	down do
		drop_table(:estado_usuarios)
	end
end