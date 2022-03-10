package main

import (
	"github.com/tableauio/tableau"
)

func main() {
	tableau.GenProto(
		"protoconf",
		"github.com/tableauio/demo/examples/helloworld/protoconf",
		"../testdata",
		"../proto",
	)
}
