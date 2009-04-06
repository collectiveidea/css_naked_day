ActionView::Helpers::AssetTagHelper.module_eval do
    
  def stylesheet_link_tag_with_css_naked_day(*sources)
    if Date.today.is_css_naked_day?
      "<!-- No CSS today, It's CSS Naked Day!  See http://naked.dustindiaz.com/ for more info. -->"
    else
      stylesheet_link_tag_without_css_naked_day(*sources)
    end
  end

  alias_method_chain :stylesheet_link_tag, :css_naked_day
end

#
# Add a method to Date for checking CSS Naked Day
#
class Date
  def is_css_naked_day?
    month == 4 && day == 9
  end
end