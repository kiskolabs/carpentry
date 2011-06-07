module Carpentry
  class NoRobotsMiddleware
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)

      if env["carpentry.prototype"] && status == 200
        no_robots_tag = %{<meta name="robots" content="noindex, nofollow"/>\n}
        response.body = response.body.sub("</head>", "#{no_robots_tag}</head>")
      end

      [status, headers, response]
    end
  end
end
