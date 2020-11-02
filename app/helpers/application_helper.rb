module ApplicationHelper
  def app_title(page_title: '')
    if page_title.blank?
      ENV.fetch('APP_NAME')
    else
      "#{page_title} - #{ENV.fetch('APP_NAME')}"
    end
  end
end
