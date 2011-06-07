require "carpentry/no_robots_middleware"

module Carpentry
  class Engine < ::Rails::Engine
    config.app_middleware.use NoRobotsMiddleware
  end
end
