// Package yaml is an implementation of YAML functions that always fail.
//
// This implementation is used to replace the default implementation
// to avoid linking with [gopkg.in/yaml.v3]:
package yaml

import "errors"

var errNotImplemented = errors.New("YAML functions are not available (see https://pkg.go.dev/github.com/stretchr/testify/assert/yaml)")

func Unmarshal([]byte, interface{}) error {
	return errNotImplemented
}
