Given("I access the devices page") do
  @device_elements = DevicePage.new
  @device_elements.load
  @dashboard = DeviceDashboardPage.new
  @dashboard.new_device.click
end

When("I add a new devices") do
  number =  '555-' + rand(999).to_s + '-555'
  @device_elements.device_serial.set number
  @device_elements.add_button.click
end

Then("should display a confirmation message") do
  expect(@device_elements.success_message.text).to eql("Device was successfully created.")
end

When("I fill device serial number") do
  @device_elements.device_serial.set '555-354-555'
end

When("I cancel") do
  @device_elements.back_button.click
end

Then("should back to bashboard") do
  @dashboard.serial_number_text.visible?
end

When("I try to input a {string}") do |string|
  @device_elements.device_serial.set string
  @device_elements.add_button.click
end

Then("should display a error message") do
  expect(@device_elements.error_message.text).to eql("Serial number format is invalid")
end

When("I try to add a devices with invalid serial number") do
  @device_elements.device_serial.set 'ABC1of101j'
  @device_elements.add_button.click
end
