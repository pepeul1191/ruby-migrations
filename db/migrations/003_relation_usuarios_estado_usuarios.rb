Sequel.migration do
  	up do
	    alter_table(:usuarios) do
			#add_column :estado_usuario_id, Integer 
		   add_foreign_key :estado_usuario_id, :estado_usuarios
	    end
	    #create_join_table(estado_usuario_id: :usuarios, id: :estado_usuarios)
  	end

	down do
		drop_column :usuarios, :estado_usuario_id
		#drop_join_table(estado_usuario_id: :usuarios, id: :estado_usuarios)
	end
end