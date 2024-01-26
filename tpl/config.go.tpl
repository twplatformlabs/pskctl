package cmd

const (
	LoginClientId = "{{ op://empc-lab/svc-auth0/pskctl-cli-client-id}}"
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
