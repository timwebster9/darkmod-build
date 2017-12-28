.DEFAULT=all

all:
	docker build -t darkmod-build .

darkmod:
	docker run -v /home/timw/projects/darkmod/src/trunk:/darkmod -w /darkmod darkmod-build:latest ./linuxBuild.sh

clean:
	docker run -v /home/timw/projects/darkmod/src/trunk:/darkmod -w /darkmod darkmod-build:latest scons -c