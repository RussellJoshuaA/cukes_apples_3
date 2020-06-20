class WelcomePage < BasePage

  element(:title, id: 'com.walmart.android:id/welcomeTitle')
  button(:next, id: 'com.walmart.android:id/actionButton')
  button(:get_started, id: 'com.walmart.android:id/actionButton')

  def on_page?
    self.title?
  end

end