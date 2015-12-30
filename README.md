# snapcraft-influxdb

The purpose is to use [snapcraft](https://developer.ubuntu.com/en/snappy/build-apps/snapcraft-advanced-features/) to build the influxdb as snap package.  

## Requirement

You need to have a go 1.5.2 environment by using gvm for go version control:
```bash
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source ./.gvm/scripts/gvm
gvm install go1.4
gvm use go1.4
gvm install go1.5.2
gvm use go1.5.2 --default
```

Importantly, installing snapcraft:
```bash
sudo add-apt-repository ppa:snappy-dev/tools
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

## snapcraft commands

`snapcraft pull`: get source  
`snapcraft build`: build parts  
`snapcraft stage`: put parts into staging area  
`snapcraft snap`: put parts into snap area  
`snapcraft all`: make a snap package  
