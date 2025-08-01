.DEFAULT_GOAL := all


# go build is already smart enough to rebuild only when sources changes
# so we can make bin/binary2 a PHONY target so it always ru go build
# https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html
.PHONY: all clean bin/binary2

all: bin/binary1 bin/binary2

clean:
	$(info Delete bin/ files)
# the - in front of rm means ignore errors
	-rm -f bin/* &>/dev/null


# This shows how we can tell make to only run this target if  a .go
# file changes.
bin/binary1: cmd/binary1/*.go pkg/*/*.go
# we don't need to do much because go build already does build avoidance
	go build -o bin/ ./cmd/binary1

# This is a .PHONY target it shows that we can run go build always
# since go build does it's own smart dependency analysis and
# will only compile if here are changes in the source code
bin/binary2:
	go build -o bin/ ./cmd/binary2
