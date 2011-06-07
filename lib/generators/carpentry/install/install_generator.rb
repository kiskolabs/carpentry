module Carpentry
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def create_directory_with_gitkeep
        empty_directory "app/views/carpentry/prototypes"
        create_file "app/views/carpentry/prototypes/.gitkeep"
      end
    end
  end
end
