package mypackage3

import "rubenlaguna.com/golang-multi-executables/internal/mypackage1"

import "fmt"

func MyFunction() {
	fmt.Println("mypackage3.MyFunction invokes a function from mypackage1")
	mypackage1.MyFunction()
}
