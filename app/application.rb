require 'pry'
class Application 
  def call(env)
    resp = Rack::Response.new
    time = Time.now 
    binding.pry
    if time < time(12.0/24)
      resp.write "Good Morning!"
    else 
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end