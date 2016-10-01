module FlashMessageHelper

  CSS_CLASSES = {
    success: 'alert-success',
    notice: 'alert-success',
    error: 'alert-danger',
    alert: 'alert-danger',
    info: 'alert-info',
    warning: 'alert-warning'
  }.with_indifferent_access.freeze

  ICONS = {
    success: 'check',
    notice: 'check',
    error: 'ban',
    alert: 'ban',
    info: 'info',
    warning: 'warning'
  }.with_indifferent_access.freeze

  def bootstrap_css_class(flash_type)
    CSS_CLASSES[flash_type] || CSS_CLASSES[:warning]
  end

  def bootstrap_icon(flash_type)
    ICONS[flash_type] || ICONS[:warning]
  end

end
