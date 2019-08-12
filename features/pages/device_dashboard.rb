# PageObject of Device Page

class DeviceDashboardPage < SitePrism::Page
  set_url '/devices'

  element :new_device, 'body > a'
  element :serial_number_text, 'body > table > thead > tr > th:nth-child(1)'
end