#
# Cookbook Name:: packing_tape
# Recipe:: postgresql
#
# Copyright (C) 2015 Leonel Galán
#
# All rights reserved - Do Not Redistribute
#

node.default['postgresql']['password']['postgres'] = node['postgresql']['password']
node.default['build_essential']['compile_time'] = true

include_recipe 'postgresql::server'
include_recipe 'postgresql::ruby'
