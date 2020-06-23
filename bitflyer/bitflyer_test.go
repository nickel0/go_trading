package bitflyer

import "testing"

func TestNew(t *testing.T) {
	api := New("xxx", "yyy")
	if api == nil {
		t.Error("Returned nil")
	}
}