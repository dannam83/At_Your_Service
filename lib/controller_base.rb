require 'active_support'
require 'active_support/core_ext'
require 'erb'
require_relative './session'
require 'byebug'
require 'active_support/inflector'

class ControllerBase
  attr_reader :req, :res, :params

  def initialize(req, res, route_params = {})
    @req, @res = req, res
    @already_built_response = false
    @params = route_params.merge(req.params)
  end

  def already_built_response?
    @already_built_response
  end

  def redirect_to(url)
    raise "double render error" if already_built_response?

    @res["Location"] = url
    @res.status = 302
    @already_built_response = true
    session.store_session(@res)

    nil
  end

  def render_content(content, content_type)
    raise "double render error" if already_built_response?

    @res.write(content)
    @res['Content-Type'] = content_type
    @already_built_response = true
    session.store_session(@res)

    nil
  end

  def render(template_name)
    controller_name = self.class.to_s.underscore
    path = "views/#{controller_name}/#{template_name}.html.erb"
    view = ERB.new(File.read(path)).result(binding)
    render_content(view, 'text/html')
  end

  def session
    @session ||= Session.new(@req)
  end

  def invoke_action(name)
    self.send(name)
    render(name) unless already_built_response?
  end
end
