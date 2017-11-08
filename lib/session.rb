require 'json'

class Session

  def initialize(req)
    session_cookie = req.cookies["_rails_lite_app"]

    if session_cookie
      @data = JSON.parse(session_cookie)
    else
      @data = {}
    end
  end

  def [](key)
    @data[key]
  end

  def []=(key, val)
    @data[key] = val
  end

  def store_session(res)
    session_cookie = { path: '/', value: @data.to_json }
    res.set_cookie("_rails_lite_app", session_cookie)
  end
end
