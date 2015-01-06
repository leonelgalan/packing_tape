#
# Cookbook Name:: packing_tape
# Recipe:: nginx
#
# Copyright (C) 2015 Leonel Galán
#
# All rights reserved - Do Not Redistribute
#

template '/etc/sudoers.d/nginx' do
  source 'etc_sudoers.d_nginx.erb'
  mode 0400
end

include_recipe 'nginx'
