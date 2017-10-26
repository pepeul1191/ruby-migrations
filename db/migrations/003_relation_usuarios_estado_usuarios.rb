Sequel.migration do
  	up do
	    alter_table(:usuarios) do
		      add_column :estado_usuario_id, Integer 
	    end
  	end

	down do
		drop_column :usuarios, :estado_usuario_id
	end
end