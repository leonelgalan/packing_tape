#
# Cookbook Name:: packing_tape
# Recipe:: rbenv
#
# Copyright (C) 2015 Leonel Galán
#
# All rights reserved - Do Not Redistribute
#

# Monkey patch for https://github.com/fnichol/chef-rbenv/issues/98
# Solution proposed in https://github.com/fnichol/chef-rbenv/issues/98#issuecomment-66515386
class Chef::Provider::Package::RbenvRubygems
  def rehash
    e = ::Chef::Resource::RbenvRehash.new(new_resource, @run_context)
    e.root_path rbenv_root
    e.user rbenv_user if rbenv_user
    e.action :nothing
    e.run_action(:run)
  end
end

node.default['rbenv'].merge!(
  user: node['user']['name'],
  rubies: Array(node['ruby']['version']),
  global: node['ruby']['version'],
  gems: {
    node['ruby']['version'] => [name: 'bundler']
  }
)

include_recipe 'ruby_build'
include_recipe 'rbenv::system'
