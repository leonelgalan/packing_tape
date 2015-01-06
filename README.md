# packing_tape-cookbook

Installs/Configures packing_tape

## Supported Platforms

* Ubuntu 14.04

## Attributes

| Key | Type | Description  | Default |
|---|---|---|---|
| `node['packing_tape']['bacon']` | Boolean | whether to include bacon |  `true` |

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
