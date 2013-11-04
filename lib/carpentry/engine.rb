module Carpentry
  class Engine < ::Rails::Engine
    initializer "carpentry.add_middleware" do |app|
      app.middleware.use Carpentry::NoRobotsMiddleware
    end
  end
end
