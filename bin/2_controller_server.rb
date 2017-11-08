require 'rack'
require_relative '../lib/controller_base'

class MyController < ControllerBase

  def go
    dug_phrases = [
      "Hi there!",
      "My name is Dug. I have just met you, and I love you!",
      "Hi! I am a great tracker..SQUIRREL!!",
      "I was hiding under your porch because I love you. Can I stay?",
      "I can smell you!"
    ]
    if @req.path == "/Dug"
      render_content(dug_phrases.sample, "text/html")
    else
      redirect_to("/Dug")
    end
  end

end

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  MyController.new(req, res).go
  res.finish
end

Rack::Server.start(
  app: app,
  Port: 3000
)
