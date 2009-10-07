# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def title(label)
    "<h1>#{label}</h1>"
  end

  def submit_label(model)
    model.new_record? ? :create : :update
  end
end
