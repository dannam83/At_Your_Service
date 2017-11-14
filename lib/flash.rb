require 'json'

class Flash
  attr_reader :now

  def initialize(req)
    cookie = req.cookies['at_your_service']

    @now = cookie ? JSON.parse(cookie) : {}
    @flash = {}
  end

  def [](key)
    @now[key.to_s] || @flash[key.to_s]
  end

  def []=(key, value)
    @flash[key.to_s] = value
  end

  def store_flash(res)
    res.set_cookie('at_your_service', value: @flash.to_json, path: '/')
  end
end
