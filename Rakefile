def run_tests(deviceName, platformName, platformVersion, app)
  system("deviceName=\"#{deviceName}\" platformName=\"#{platformName}\" platformVersion=\"#{platformVersion}\" app=\"#{app}\" parallel_split_test spec")
end

task :Galaxy_S5_Device do
  run_tests('Samsung Galaxy S5 Device', 'Android', '4.4', 'http://saucelabs.com/example_files/ContactManager.apk')
end

task :Galaxy_S4_Device do
  run_tests('Samsung Galaxy S4 Device', 'Android', '4.4', 'http://saucelabs.com/example_files/ContactManager.apk')
end

multitask :test_sauce => [
    :Galaxy_S5_Device,
    :Galaxy_S4_Device

  ] do
    puts 'Running automation'
end

