# packing_tape-cookbook

Installs/Configures packing_tape

## Supported Platforms

* Ubuntu 14.04

## Attributes

| Key | Type | Description  | Default |
|---|---|---|---|
| `node['user']['name']` | String |   |  `'deploy'` |
| `node['user']['password']` | String | Shadow hash of password.  |  `nil` |
| `node['user']['group']` | String |   |  `'sudo'` |
| `node['user']['ssh_key']` | String |   |  `nil` |
| `node['ruby']['version']` | String |   |  `'2.1.5'` |
| `node['postgresql']['version']` | String |   |  `'9.3'` |
| `node['postgresql']['password']` | String |   |  `'postgres'` |

## Usage

### packing_tape::default

Include `packing_tape` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[packing_tape::default]"
  ]
}
```

## Vagrant

```shell
vagrant up
vagrant package
mv package.box packing_tape-vagrant.box
```

`vagrant package --output packing_tape-vagrant.box` is broken on 1.7.1, see https://github.com/mitchellh/vagrant/issues/5098.

## Packer

```zsh
berks vendor cookbooks

DIGITALOCEAN_API_TOKEN=your_digital_ocean_api_token packer build -only=digitalocean template.json

AWS_ACCESS_KEY=your_aws_access_key AWS_SECRET_KEY=your_aws_secret_key packer build -only=amazon-ebs template.json
```

## License and Authors

Author:: Leonel Galán (<leonel@smashingboxes.com>)
