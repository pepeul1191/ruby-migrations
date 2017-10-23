require_relative 'app'

task :default => :migrate

desc "Run migrations"
task :migrate do
    ActiveRecord::Migrator.migrate('migrations', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
end