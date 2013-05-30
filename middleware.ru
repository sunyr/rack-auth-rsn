require 'rack'

class MiddleW
  def initialize app
    @app = app
  end

  def call env
    env['setinmiddle'] = "Main"
    res = @app.call env
    Rack::Response.new(res.body << "Middleware")
  end
end

use MiddleW
run lambda {|env| Rack::Response.new(env['setinmiddle'])}
