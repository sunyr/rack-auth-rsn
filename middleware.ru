require 'rack'

class FirstMiddleW
  def initialize app
    @app = app
  end

  def call env
    env['setinmiddle'] = env['setinmiddle'] ? env['setinmiddle'] + "M1" : "M1"
    puts "middleware 1 called"
    res = @app.call env
    Rack::Response.new(res.body << "First")
  end
end

class SecondMiddleW
  def initialize app
    @app = app
  end

  def call env
    env['setinmiddle'] = env['setinmiddle'] ? env['setinmiddle'] + "M2" : "M2"
    res = @app.call env
    Rack::Response.new(res.body << "Second")
  end
end


use FirstMiddleW
use SecondMiddleW
run lambda {|env| Rack::Response.new(env['setinmiddle'])}
