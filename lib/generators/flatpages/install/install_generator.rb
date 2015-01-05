require 'rails/generators/active_record'

module Flatpages
  module Generators
    class InstallGenerator < ActiveRecord::Generators::Base
      include Rails::Generators::Migration

      desc "Installs flatpages"

      def self.source_root
        @_source_root ||= File.expand_path("../templates", __FILE__)
      end

      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def setup_directory
        empty_directory "app/admin"

        template 'active_admin/flatpage.rb.erb', 'app/admin/flatpage.rb'
      end

      def copy_migrations
        migration_template "create_flatpage.rb", "db/migrate/create_flatpage.rb"
      end
    end
  end
end
