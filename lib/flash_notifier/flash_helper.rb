module FlashHelper
  def build_flash *args
    options = extract_args args
    html = append_options_to_dom options
    flash.each do |type, message|
      flash_type = (%w(notice success).include?(type)) ? 'success' : (( %w(alert error).include?(type)) ? 'error' : (%w(warning info).include?(type) ? type : 'info' ))
      html += content_tag(:div, '' , data: { flash_notifier: '', flash_type: flash_type, flash_msg: escape_javascript(message) })
    end
    html.html_safe
  end

  def build_bootstrap_flash *args
    options = extract_args args
    dismissible = options.has_key?(:dismiss) && options[:dismiss]
    timeout = options.has_key?(:timeout) ? options[:timeout] : 5000
    alert_klasses = {
        success: 'alert-success',
        error: 'alert-danger',
        alert: 'alert-warning',
        notice: 'alert-info'
    }
    html = ''
    flash.each do |type, message|
      html += content_tag :div, class: "alert #{alert_klasses[type.to_sym] || type.to_s} alert-dismissible fade in show #{options[:wrapper_class]}", role: 'alert', data: {flash_notifier: 'bootstrap'} do
        inner_html = link_to 'x', '#', class: 'close', data: {dismiss: 'alert'}, aria_label: 'close', title: 'close'
        inner_html += content_tag :div, message, class: 'text'
        inner_html.html_safe
      end
    end
    dismiss_alert_script = javascript_tag <<-JS
    	setTimeout(function(){
    		$.each($("[data-flash-notifier='bootstrap']"), function(index, alert){
    			$(alert).alert('close');
    		})
    	}, #{timeout});
    JS
    html += dismiss_alert_script if dismissible
    html.html_safe
  end

  private
  	def extract_args args
  		args.last.is_a?(::Hash) ? args.pop.with_indifferent_access : {}
  	end
  	def append_options_to_dom options
  		content_tag(:div, '', data: { flash_notifier_options: options })
  	end	
end
