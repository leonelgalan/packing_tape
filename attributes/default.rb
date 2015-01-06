default['user']['name']     = 'deploy'
default['user']['password'] = nil # openssl passwd -1 'your_password'
default['user']['group']    = 'sudo'
default['user']['ssh_key']  = nil # cat ~/.ssh/id_rsa.pub

default['ruby']['version']  = '2.1.5'

default['postgresql']['version'] = '9.3'
default['postgresql']['password'] = 'postgres'
