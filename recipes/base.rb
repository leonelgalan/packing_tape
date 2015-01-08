#
# Cookbook Name:: packing_tape
# Recipe:: base
#
# Copyright (C) 2015 Leonel Galán
#
# All rights reserved - Do Not Redistribute
#

node.default['apt']['compile_time_update'] = true
include_recipe 'apt'

include_recipe 'packing_tape::user'

include_recipe 'packing_tape::rbenv'

include_recipe 'packing_tape::nginx'

include_recipe 'packing_tape::postgresql'

include_recipe 'nodejs'
