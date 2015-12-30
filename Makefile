# -*- Mode: Makefile; indent-tabs-mode:t; tab-width: 4 -*-
export GOPATH=$(PWD)/parts/influxdb

all:
	@echo $(GOPATH)
	mkdir -p $(GOPATH)/src/github.com/influxdb
	cd $(GOPATH)/src/github.com/influxdb && git clone git@github.com:influxdb/influxdb.git
	cd $(GOPATH)/src/github.com/influxdb/influxdb && git checkout v0.9.6.1
	cd $(GOPATH)/src/github.com/influxdb/influxdb && go get -u -f -t ./...
	cd $(GOPATH)/src/github.com/influxdb/influxdb && go clean ./...
	cd $(GOPATH)/src/github.com/influxdb/influxdb && go install ./...
install:
	mkdir -p $(DESTDIR)/bin/
	mkdir -p $(DESTDIR)/etc/
	cp bin/start-service.sh $(DESTDIR)/bin/
	cp -r etc/* $(DESTDIR)/etc/
	cp $(GOPATH)/bin/influxd $(DESTDIR)/bin/
	cp types.db $(DESTDIR)
clean:
	snapcraft clean
	rm *.snap
distclean: clean
 
