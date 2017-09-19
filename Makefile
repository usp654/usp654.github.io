
.PHONY: build
build:
	R -e 'blogdown::build_site()'

push: build
	git status && \
	git commit -a -m"Updated course webiste" && \
	git push

publish: build
	cd docs && \
	git commit -a -m"Updated course webiste" && \
	git push

unbind:
	lsof -wni tcp:4000

serve:
	hugo server --watch
