You can test


```bash
# pretend that cmd/binary/main.go file changed with -W
make -W cmd/binary1/main.go

# go build is only called if a .go dependency is newer that the target
make -W cmd/binary1/main.go bin/binary1

# go build won't be run because bin/binary1 does NOT depend on cmd/binary2/main.go
make -W cmd/binary2/main.go bin/binary1

# This will still run go build because bin/binary2 is a .PHONY target
# and I wanted to show that `go build` does it own build avoidance
make -W cmd/binary1/main.go bin/binary2

```

# pre-commit


```
pre-commit run
```
