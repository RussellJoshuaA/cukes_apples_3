
Before do
  begin
    capabilities = {
        caps: {
            platformName: 'android',
            deviceName: '25dd7961611c7ece',
            app: "#{PROJECT_DIR}/resources/walmart.apk"
        }
    }

    @driver = Appium::Driver.new(capabilities, false)
    @driver.start_driver


    @driver.manage.timeouts.implicit_wait = 10


  rescue Exception => e
    p e.message
    p e.backtrace
  end
end

After do
  begin
    @driver.quit_driver

  rescue Exception => e
    p e.message
    p e.backtrace
  end
end