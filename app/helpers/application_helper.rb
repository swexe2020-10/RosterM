module ApplicationHelper
  def page_title
    title = "名簿管理システム"
    title = @page_title + " - " + title if @page_title
    title
  end
end
