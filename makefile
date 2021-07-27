POLLEN := $(wildcard *.ptree *.p *.pm *.pp ./*/*.pm ./*/*.pp ./*/*.p)
CLJS := $(wildcard cljs-src/viz/*.cljs *.edn)
JS-OUT := js/*.js
POLLEN-TARGET := ../notebook-out/*
POLLEN-OUT := tfidfwastaken.github.io/
POLLEN-OUT-CNAME := ../notebook-out/CNAME
PUBLISH_REMOTE := git@github.com:tfidfwastaken/tfidfwastaken.github.io.git

all: build
build: ${JS-OUT} ${POLLEN-TARGET}

${JS-OUT}: ${CLJS}
	@echo "changed:" ${CLJS}
	clojure -m figwheel.main -O advanced -bo deploy

${POLLEN-TARGET}: ${POLLEN}
	@echo "changed:" ${POLLEN}
	raco pollen render -r
	raco pollen publish . /tmp/render
	cp -r /tmp/render/* ${POLLEN-OUT} && rm ${POLLEN-OUT}/makefile && rm -r ${POLLEN-OUT}/${POLLEN-OUT}
	git clean -xdf

clean:
	git clean -xdf

.ONESHELL:
publish: build
	cd ${POLLEN-OUT} ; git add --all && git commit -m "Update website: $$(cd .. && git log -1 --pretty=%B)"
	git add ${POLLEN-OUT} && git commit -m "Update website gitlink"
	git push --recurse-submodules=on-demand

.PHONY: all build clean publish setup
