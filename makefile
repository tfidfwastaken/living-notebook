POLLEN := $(wildcard *.ptree *.p *.pm *.pp ./*/*.pm ./*/*.pp ./*/*.p)
CLJS := $(wildcard cljs-src/viz/*.cljs *.edn)
JS-OUT := js/*.js
POLLEN-TARGET := ../notebook-out/*
POLLEN-OUT := ../notebook-out/
PUBLISH_REMOTE := git@github.com:tfidfwastaken/tfidfwastaken.github.io.git

all: build
build: ${JS-OUT} ${POLLEN-TARGET}

${JS-OUT}: ${CLJS}
	@echo "changed:" ${CLJS}
	clojure -m figwheel.main -O advanced -bo deploy

${POLLEN-TARGET}: ${POLLEN}
	@echo "changed:" ${POLLEN}
	mkdir -p ${POLLEN-OUT}
	raco pollen publish . ${POLLEN-OUT}

clean:
	rm -rf compiled/
	rm -rf target/
	rm -rf /tmp/notebook-out

.ONESHELL:
publish: build
	cd ${POLLEN-OUT}
	@pwd
	git add .
ifdef m
	git commit -m "$$m"
else
	git commit -m "Updated website"
endif
	git push origin master

setup:
	git init ${POLLEN-OUT}
	cd ${POLLEN-OUT}
	git remote add origin ${PUBLISH_REMOTE}

.PHONY: all build clean publish setup
