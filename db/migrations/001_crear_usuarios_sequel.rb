require 'sequel'

class CrearUsuariosSequel < Sequel::Migration
    def up
      create_table :sessions do
        primary_key :id
        String :session_id, :size => 32, :unique => true
        DateTime :created_at
        text :data
      end
    end
  
    def down
      # You can use raw SQL if you need to
      self << 'DROP TABLE sessions'
    end
  end