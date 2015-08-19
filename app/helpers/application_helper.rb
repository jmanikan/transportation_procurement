module ApplicationHelper

  # Gives user title by the page (top of tab)
  def full_title(page_title = '')
    base_title = "Transportation Procurement"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
