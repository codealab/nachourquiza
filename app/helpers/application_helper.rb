module ApplicationHelper
  
  def full_title(page_title)
    base_title = "Nacho Urquiza"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def head_title(title)
  	html = "<header><h1 class='page-title full-page-title'>#{title}</h1></header>"
  	html.html_safe
  end

end