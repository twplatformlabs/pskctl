package cmd

import (
	"fmt"
	"github.com/spf13/cobra"
)

var versionCmd = &cobra.Command{
	Use:               "version",
	Short:             "Print the client version information",
	Long:              `Show the pskctl cli version information.

Will be in semantic form. Example:

$ pskctl version
0.2.0`,
	DisableAutoGenTag: true,
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println(Version)
	},
}

func init() {
	rootCmd.AddCommand(versionCmd)
}
