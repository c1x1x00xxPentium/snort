#
# Cookbook:: snort
# Attributes:: default
#
# Copyright:: 2010-2016, Chef Software, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform_family']
when 'debian'
  default['snort']['home_net'] = '192.168.0.0/16'
when 'rhel'
  default['snort']['home_net']            = 'any'
  default['snort']['rpm']['daq_version']  = '2.0.6-1.centos7'
  default['snort']['rpm']['daq_checksum'] = '9e3a45d6b265d3cc7868220eb9152a73803adda7829f150f7c8b5d707c6b4c43'
  default['snort']['rpm']['version']      = '2.9.8.2-1.centos7'
  default['snort']['rpm']['checksum']     = '26180bf866a1ffea0b5ffcd716667656aba8fec063f923885167e71f1cc3deb1'
when 'fedora'
  default['snort']['home_net']            = 'any'
  default['snort']['rpm']['daq_version']  = '2.0.6-1.f21'
  default['snort']['rpm']['daq_checksum'] = '698c31e5381d572e3b43c922e2471acdfe1027c0c545abdb7d0a5dd751198ffd'
  default['snort']['rpm']['version']      = '2.9.8.2-1.f21'
  default['snort']['rpm']['checksum']     = '29ad88e71ea1a20421b485023306b42b523963cfc49a097a1dcc251002d75985'
else
  default['snort']['home_net'] = 'any'
end

default['snort']['database'] = 'none'
