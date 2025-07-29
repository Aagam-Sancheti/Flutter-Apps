# podhelper.rb
#
# This file helps configure Flutter's CocoaPods integration.
# It contains utility functions used in the Podfile for installing all Flutter iOS dependencies.

def flutter_install_all_ios_pods(flutter_application_path)
  # This helper function automatically installs all necessary iOS Pods for Flutter projects
  flutter_ios_podfile = File.join(flutter_application_path, 'Flutter', 'podhelper.rb')
  
  # Ensure the file exists before attempting to load it
  if File.exist?(flutter_ios_podfile)
    load flutter_ios_podfile
  else
    raise "flutter_install_all_ios_pods: Could not find podhelper.rb in #{flutter_application_path}/Flutter"
  end
end
