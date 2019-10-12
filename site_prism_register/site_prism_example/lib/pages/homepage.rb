class Pages::Homepage < SitePrism::Page

  set_url "http://newtours.demoaut.com/"
  set_url_matcher /com/
  element :sign_in_link, "table:nth-child(1) tbody:nth-child(1) tr:nth-child(1) td.mouseOut:nth-child(2) > a:nth-child(1)"

  def click_sign_in_link
    sign_in_link.click
  end



end
