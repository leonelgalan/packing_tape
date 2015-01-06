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

## License and Authors

Author:: Leonel Galán (<leonel@smashingboxes.com>)
