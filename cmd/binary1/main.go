package main

import "fmt"
import "rubenlaguna.com/golang-multi-executables/pkg/mypackage1"

func main() {
	fmt.Println("binary1")
	mypackage1.Myfunction()
}
