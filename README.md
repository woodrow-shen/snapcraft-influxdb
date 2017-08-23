# snapcraft-influxdb

The purpose is to use [snapcraft](https://developer.ubuntu.com/en/snappy/build-apps/snapcraft-advanced-features/) to build the influxdb as snap package.  

<p align="center">
<a href="https://build.snapcraft.io/user/woodrow-shen/snapcraft-influxdb"><img src="https://build.snapcraft.io/badge/woodrow-shen/snapcraft-influxdb.svg" alt="Snap Status"></a>
</p>

## Requirement

You need to have a go 1.8.3 environment by using gvm for go version control.

Importantly, installing snapcraft:
```bash
sudo apt-get update
sudo apt-get install snapcraft
```

## How to build

Run `snapcraft` to build a snap.

## How to rebuild

```bash
snapcraft clean
snapcraft
```
