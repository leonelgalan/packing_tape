#
# Cookbook Name:: packing_tape
# Recipe:: user
#
# Copyright (C) 2015 Leonel Galán
#
# All rights reserved - Do Not Redistribute
#

user_account node['user']['name'] do
  password node['user']['password']
  gid node['user']['group']
  home "/home/#{node['user']['name']}"
  shell '/bin/bash'
  supports manage_home: true
  ssh_keys Array(node['user']['ssh_key'])
end
