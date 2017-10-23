class CrearUsuarios < ActiveRecord::Migration[5.0]
    def change
        create_table :usuarios, force: true do |t|
            t.string :usuario
            t.string :contrasenia
        end
    end

    def down
        drop_table :users
    end
end