package config

import (
	"path/filepath"
	"runtime"
)

func GetConfigDirPath() (string, bool) {
	_, b, _, ok := runtime.Caller(0)
	basePath := filepath.Dir(b)

	return filepath.Dir(basePath), ok
}
