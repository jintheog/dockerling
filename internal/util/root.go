// internal/util/root.go
package util

import (
	"fmt"
	"os"
	"path/filepath"
)

// GetProjectRoot returns the project root directory by going up from the executable.
func GetProjectRoot() (string, error) {
	executablePath, err := os.Executable()
	if err != nil {
		return "", fmt.Errorf("could not get executable path: %w", err)
	}

	binDir := filepath.Dir(executablePath)
	projectRoot := filepath.Join(binDir, "..")
	return filepath.Clean(projectRoot), nil
}
