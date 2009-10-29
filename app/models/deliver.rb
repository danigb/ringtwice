
class Deliver
  def initialize(template, values = nil)
    @template = template
    @values = values.nil? ? {} : values
  end

  def template
    @template
  end

  def project
    @template.project
  end

  def parameters
    @template.context.keys
  end

  def render
    @template.render(@values)
  end

  def path(action = nil)
    url = []
    url << action unless action.nil?
    url << self.project
    url << self.template
    url
  end

end