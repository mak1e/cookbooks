#
# Cookbook Name:: rails_enterprise
# Recipe:: default
#
# Author:: Joshua Timberman (<joshua@opscode.com>)
#
# Copyright 2009-2010, Opscode, Inc.
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

include_recipe "ruby_enterprise"

ree_gem "rake" do
  version "0.8.7"
end

ree_gem "rails" do
  if node[:rails_enterprise][:version]
    version node[:rails_enterprise][:version]
    action :install
  else
    action :install
  end
end
