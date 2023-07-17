package main

import "fmt"

func main() {
	// # Step 1. Declaration of variable small_array is invalid.
	// Please fix the declaration
	var small_array [2]
	small_array[0] = 10
	small_array[1] = 20
	fmt.Printf("%v\n", small_array)

	// # Step 2. Declare an array called "temperatures" which needs to be
	// an array of 10 elements of type float32
	fmt.Printf("%v\n", temperatures)

	// # Step 3. The following array declaration is valid
	// Please make sure the array has the following values:
	// 1, 2, 3, 4, 5
	// Hint: you need only one line to fix this code
	var pressure = []float32
	fmt.Printf("%v\n", pressure)
}