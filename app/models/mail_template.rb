class MailTemplate < ActiveRecord::Base
  belongs_to :project

  validates_presence_of :name, :project, :processor

  DEFAULTS = {:mime_version => '1.0', :charset => 'UTF-8', :content_type => 'text/html'}
  PROCESSORS = [:mustache]

  def initialize(options = {})
    super(options.merge(DEFAULTS))
  end

  def render(values)
    values ||= {}
    if processor == 'mustache'
      ctx = values.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
      Mustache.render(body, context.merge(ctx))
    else
      body
    end
  end

  def context
    @context ||= create_context
  end

  def to_param
    "#{id}-#{name.parameterize}"
  end

  def path(action = nil)
    url = []
    url << action unless action.nil?
    url << self.project
    url << self
    url
  end

  private
  def create_context
    m = Mustache.new
    def m.context
      unless @whitehash
        @whitehash = Hash.new

        def @whitehash.[](name)
          self[name] = 'generated'
          ''
        end
        #def @whitehash.has_key?(name); true; end
      end
      @whitehash
    end

    m.render(body)
    @context = m.context
  end

end


