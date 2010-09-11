#
# Author:: Marius Ducea (marius@promethost.com)
# Cookbook Name:: drupal
# Attributes:: drupal
#
# Copyright 2010, Promet Solutions
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

default[:drupal][:version] = "6.19"
default[:drupal][:checksum] = "b2067b18408321af8595715e2c1fb0e9f20c188b4276bb616c066ff6ab26ee88"
default[:drupal][:dir] = "/var/www/drupal"
default[:drupal][:db][:database] = "drupal"
default[:drupal][:db][:user] = "drupal"

::Chef::Node.send(:include, Opscode::OpenSSL::Password)

set_unless[:drupal][:db][:password] = secure_password
default[:drupal][:src] = Chef::Config[:file_cache_path]

default[:drupal][:drush][:version] = "3.3"
default[:drupal][:drush][:checksum] = "9b7b8cf0c4426a5b3211cb349130ca9ef8222bb6b0a8dc7fdc24a8be4edd9755"
default[:drupal][:drush][:dir] = "/usr/local/drush"
