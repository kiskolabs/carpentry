require File.expand_path("../no_robots_middleware", __FILE__)

module Carpentry
  class Engine < ::Rails::Engine
    isolate_namespace Carpentry

    initializer "carpentry.add_middleware" do |app|
      app.middleware.use Carpentry::NoRobotsMiddleware
    end
  end
end
