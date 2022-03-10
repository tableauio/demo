package main

import (
	_ "github.com/tableauio/demo/cmd/test/testpb"
	"github.com/tableauio/tableau"
	"github.com/tableauio/tableau/options"
)

func main() {
	tableau.GenConf(
		"test",
		"./testdata/",
		"./_output/json/",
		options.LogLevel("debug"),
	)
}
