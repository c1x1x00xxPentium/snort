name             "snort"
maintainer       "Joshua Timberman"
maintainer_email "cookbooks@housepub.org"
license          "Apache 2.0"
description      "Installs/Configures snort"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.10.1"

recipe "snort", "Installs snort packages based on platform"

%w{ ubuntu debian redhat centos fedora }.each do |os|
  supports os
end
