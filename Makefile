.DEFAULT=image

image:
	docker build -t darkmod-build .

darkmod:
	docker run -v /home/timw/projects/darkmod/src/trunk:/darkmod -w /darkmod --rm darkmod-build:latest ./linuxBuild.sh

clean:
	docker run -v /home/timw/projects/darkmod/src/trunk:/darkmod -w /darkmod --rm darkmod-build:latest scons -c