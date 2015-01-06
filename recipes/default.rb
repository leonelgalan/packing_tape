#
# Cookbook Name:: packing_tape
# Recipe:: default
#
# Copyright (C) 2015 Leonel Galán
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'

include_recipe 'packing_tape::user'

include_recipe 'packing_tape::rbenv'

include_recipe 'hello_world'
