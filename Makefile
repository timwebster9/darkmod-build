.DEFAULT=image

image:
	docker build -t darkmod-build .

darkmod:
	docker run -v /home/timw/projects/darkmod/src/trunk:/darkmod -w /darkmod --rm darkmod-build:latest scons BUILD="release" TARGET_ARCH="x64" -j12

clean:
	docker run -v /home/timw/projects/darkmod/src/trunk:/darkmod -w /darkmod --rm darkmod-build:latest scons -c