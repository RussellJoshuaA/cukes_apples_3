Then(/the app is on the (.+) page/) do |page_name|
  page = page_name.split.collect{ |word| word.capitalize }.join + 'Page'
  @current_page = Kernel.const_get(page).new(@driver)
  @current_page.on_page?
end

Then(/^the app navigates to the Share Your Location page$/) do
  location_page = ShareYourLocationPage.new(@driver)
  fail unless location_page.title == 'Share your location'
end

And(/^the user selects (.+)$/) do |element_name|
  element = element_name.downcase.tr(' ', '_')
  @current_page.send(element)
end



