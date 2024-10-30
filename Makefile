clean:
	bazelisk clean

build: clean
	bazelisk build --config=ios_simulator //:HelloWorld