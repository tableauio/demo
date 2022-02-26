package main

import (
	"github.com/tableauio/tableau"
)

func main() {
	tableau.Excel2Proto(
		"protoconf",
		"github.com/tableauio/demo/examples/helloworld/protoconf",
		"../testdata",
		"../proto",
	)
}
