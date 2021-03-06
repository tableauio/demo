package main

import (
	_ "github.com/tableauio/demo/examples/helloworld/protoconf"
	"github.com/tableauio/tableau"
	"github.com/tableauio/tableau/options"
)

func main() {
	tableau.GenConf(
		"protoconf",
		"../testdata/",
		"./_output/",
		options.LogLevel("debug"),
	)
}
