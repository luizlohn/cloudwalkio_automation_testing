Before do |scenario|
  if ENV['DEBUGGER'].eql?('true')
    @path_screenshots = "screenshots/#{scenario.feature.name}/#{scenario.name}"
    FileUtils.mkpath @path_screenshots
  end
end

After do |scenario|
  Capybara.current_session.driver.quit if scenario.failed?
end