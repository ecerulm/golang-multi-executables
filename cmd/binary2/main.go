package main

import "fmt"
import "rubenlaguna.com/golang-multi-executables/internal/mypackage2"
import "rubenlaguna.com/golang-multi-executables/pkg/mypackage3"

func main() {
	fmt.Println("binary2")
	mypackage2.MyFunction()
	mypackage3.MyFunction()
}
