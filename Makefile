# -*- Mode: Makefile; indent-tabs-mode:t; tab-width: 4 -*-
export GOPATH=$(PWD)/gocodez

all:
	@echo $(GOPATH)
	go get github.com/sparrc/gdm
	go get github.com/influxdata/influxdb
	cd $(GOPATH)/src/github.com/influxdata/influxdb && $(GOPATH)/bin/gdm restore
	cd $(GOPATH)/src/github.com/influxdata/influxdb && go get ./...
	cd $(GOPATH)/src/github.com/influxdata/influxdb && go install ./...
install:
	mkdir -p $(SNAPCRAFT_PART_INSTALL)/bin/
	cp gocodez/bin/influxd $(SNAPCRAFT_PART_INSTALL)/bin/
clean:
	snapcraft clean
	rm *.snap
distclean: clean
 
