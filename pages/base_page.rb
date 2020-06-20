class BasePage

  def initialize(driver)
    @driver = driver
  end

  def self.element(name, locators)
    define_method(name) do
      @driver.find_element(locators).text
    end

    define_method("#{name}?") do
      @driver.find_element(locators)
    end
  end

  def self.button(name, locators)
    element(name, locators)
    define_method(name) do
      @driver.find_element(locators).click
    end
  end

end