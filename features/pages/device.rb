# PageObject of Device Page

class DevicePage < SitePrism::Page
  set_url '/devices'

  element :device_serial, '#device_serial_number'
  element :add_button, 'body > form > div.actions > input[type=submit]'
  element :enable_device, 'device_enabled'
  element :back_button, 'body > a'
  element :success_message, '#notice'
  element :error_message, '#error_explanation > ul > li'
end