package main

import "fmt"

func main() {
	fmt.Println("Slices")

	var s []int
	printSlice("Empty slice", s)

	// # Step 1. Append to variable s one element with value 0
	printSlice("One element", s)

	// # Step 2. Append one more element
	printSlice("Two elements", s)

	// # Step 3. Apeend 3 more values. The values should be: 2, 3, 4
	// Hint1: Please use only one line of code
	// Hint2: Remember than Append method can support multiple parameters
	printSlice("Even more elements", s)

	// 
	// # Step 4. Get a slice containing only the first 2 elements of slice s
	fs := ...
	printSlice("slice with first two elements", fs)

	// # Step 5. Print the length of slice s
	fmt.Println("Length of s:", ...)

	// # Step 6. Get a slice containing only the last 2 elements of slice s
	ls := ...
	printSlice("slice with first two elements", ls)
}

func printSlice(msg string, s []int) {
	fmt.Printf("%v len=%d cap=%d %v\n", msg, len(s), cap(s), s)
}
