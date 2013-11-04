module Carpentry
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def create_directory_with_gitkeep
        empty_directory "app/views/carpentry/prototypes"
        create_file "app/views/carpentry/prototypes/.gitkeep"
      end

      def add_carpentry_routes
        route 'mount_carpentry_at "/p"'
      end
    end
  end
end
