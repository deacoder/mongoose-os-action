# Mongoose OS docker action

This action bundles Mongoose OS with mos tool to build firmware.

## Inputs

### `mos-yml-path`

**Required** Path to mos.yml. Default `"."`.

### `platform`

**Required** The platform to build firmware for. Default `"esp8266"`.

## Outputs

None

## Example usage

```yaml
uses: dea82/mongoose-os-action@v1.0.0
with:
  mos-yml-path: .
  platform: esp8266
```
