module ApplicationHelper

  def app_data
    as_html_data(view: javascript_view_name, environment: Rails.env)
  end

  def body_css_class
    controller_name = convert_to_dashed(controller_path)
    @css_class_name ||= "#{controller_name} #{convert_to_dashed(controller_name + ' ' + fmt_action_name)}"
  end

  def active_link(link_controller_name, link_action_name)
    controller_name == link_controller_name && link_action_name == action_name ? 'active' : ''
  end

  def decorate(model, decorator_class = nil)
    decorator_class ||= "#{model.class}Decorator".constantize
    decorator = decorator_class.new(model)
    block_given? ? yield(decorator) : decorator
  end

  private

  def as_html_data(hash)
    hash.transform_keys { |k| "data-#{convert_to_dashed(k)}" }
  end

  def javascript_view_name
    "#{controller_path.camelcase.gsub('::', '_')}.#{fmt_action_name}View"
  end

  def fmt_action_name
    case action_name
    when 'update'
      'Edit'
    when 'create'
      'New'
    else
      action_name.camelcase
    end
  end

  def convert_to_dashed(string)
    string.to_s.underscore.humanize.parameterize
  end

end
