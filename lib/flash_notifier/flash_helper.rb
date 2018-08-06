module FlashHelper
  def build_flash *args
    options = args.last.is_a?(::Hash) ? args.pop.with_indifferent_access : {}
    html = content_tag(:div, '', data: { flash_notifier_options: options })
    flash.each do |type, message|
      flash_type = (%w(notice success).include?(type)) ? 'success' : (( %w(alert error).include?(type)) ? 'error' : (%w(warning info).include?(type) ? type : 'info' ))
      html += content_tag(:div, '' , data: { flash_notifier: 'inside gem', flash_type: flash_type, flash_msg: message })
    end
    html.html_safe
  end

  def build_bootstrap_flash
    alert_klasses = {
        success: 'alert-success',
        error: 'alert-danger',
        alert: 'alert-warning',
        notice: 'alert-info'
    }
    html = ''
    flash.each do |type, message|
      html += content_tag :div, class: "alert #{alert_klasses[type.to_sym] || type.to_s} alert-dismissible fade show", role: 'alert' do
        inner_html = link_to 'x', '#', class: 'close', data: {dismiss: 'alert'}, aria_label: 'close', title: 'close'
        inner_html += content_tag :div, message, class: 'text'
        inner_html.html_safe
      end
    end
    html.html_safe
  end
end