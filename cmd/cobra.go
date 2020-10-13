package cmd

import (
	"errors"
	"os"

	"github.com/spf13/cobra"

	"go-admin/cmd/api"
	"go-admin/cmd/migrate"
)

var rootCmd = &cobra.Command{
	Use:          "go-admin",
	Short:        "go-admin",
	SilenceUsage: true,
	Long:         `go-admin`,
	Args: func(cmd *cobra.Command, args []string) error {
		if len(args) < 1 {
			return errors.New("requires at least one arg")
		}
		return nil
	},
	PersistentPreRunE: func(*cobra.Command, []string) error { return nil },
	Run: func(cmd *cobra.Command, args []string) {
	},
}

func init() {
	rootCmd.AddCommand(api.StartCmd)
	rootCmd.AddCommand(migrate.StartCmd)
}

// Execute : apply commands
func Execute() {
	if err := rootCmd.Execute(); err != nil {
		os.Exit(-1)
	}
}
