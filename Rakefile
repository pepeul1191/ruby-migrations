#require_relative 'app'
require 'sequel'
require 'sqlite3'

task :default => :migrate

desc "Run migrations"
task :migrate do
    ActiveRecord::Migrator.migrate('db/migrations', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
end

desc "Run migration Sequel"
task :migrate_sequel do
    require_relative 'db/migrations/001_crear_usuarios_sequel'
    DB = Sequel.connect('sqlite://db/test.db')
    #CreateSessions.apply(DB, :up)
    puts "HOLA MUNDO"
end