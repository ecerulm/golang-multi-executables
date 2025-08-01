package main

import "fmt"
import "rubenlaguna.com/golang-multi-executables/internal/mypackage2"

func main() {
	fmt.Println("binary2")
	mypackage2.Myfunction()
}
