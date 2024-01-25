package cmd

const (
	LoginClientId = "5TzP0V6D4p6oktZrkJ4GbRmUSHpPCx6Q"
	LoginScope    = "openid offline_access profile email"
	LoginAudience = "https://pskctl.us.auth0.com/api/v2/"
	IdpIssuerUrl  = "https://pskctl.us.auth0.com/"

	DefaultShowHidden = false
	DefaultCluster    = "prod-i01-aws-us-east-2"

	ConfigEnvDefault             = "PSKCTL"
	ConfigFileDefaultName        = "config"
	ConfigFileDefaultType        = "yaml"
	ConfigFileDefaultLocation    = "/.pskctl" // path will begin with $HOME dir
	ConfigFileDefaultLocationMsg = "config file (default is $HOME/.pskctl/config.yaml)"
)
