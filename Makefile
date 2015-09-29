JUNIT_DIR?=junit_reports
FEATURES_DIR?=features

run_all_in_parallel:
	make -j test_Samsung_Galaxy_S5_4.4_real_device test_Samsung_Galaxy_S4_4.4_real_device

test_Samsung_Galaxy_S5_4.4_real_device:
	deviceName='Samsung Galaxy S5 Device' platformVersion='4.4' platformName="Android" \
		app='http://saucelabs.com/example_files/ContactManager.apk' \
		make parallel_split_test

test_Samsung_Galaxy_S4_4.4_real_device:
	deviceName='Samsung Galaxy S4 Device' platformVersion='4.4' platformName="Android" \
		app='http://saucelabs.com/example_files/ContactManager.apk' \
		make parallel_split_test

parallel_split_test:
	parallel_split_test spec

