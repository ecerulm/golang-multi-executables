.DEFAULT_GOAL := all


.PHONY: all clean

all: bin/binary1 bin/binary2

clean:
	$(info Delete bin/ files)
# the - in front of rm means ignore errors
	-rm -f bin/* &>/dev/null


bin/binary1: cmd/binary1/*.go pkg/*/*.go
# we don't need to do much because go build already does build avoidance
	go build -o bin/ ./cmd/binary1

bin/binary2: cmd/binary2/*.go pkg/*/*.go
	go build -o bin/ ./cmd/binary2
