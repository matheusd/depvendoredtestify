// Package yaml is an implementation of YAML functions that always fail.
//
// This is a copy of the original yaml_fail.go file, but made default on this
// module to enforce default builds to NOT require the [gopkg.in/yaml.v3]
// package.
package yaml

import "errors"

var errNotImplemented = errors.New("YAML functions are not available (see https://pkg.go.dev/matheusd.com/depvendoredtestify/assert/yaml)")

func Unmarshal([]byte, interface{}) error {
	return errNotImplemented
}
