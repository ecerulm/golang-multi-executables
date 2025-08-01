package main

import "fmt"
import "rubenlaguna.com/golang-multi-executables/internal/mypackage1"

func main() {
	fmt.Println("binary1")
	mypackage1.Myfunction()
}
