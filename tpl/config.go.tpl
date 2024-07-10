package cmd

type ClusterConfig struct {
	ClusterName 										string `yaml:"clusterName" json:"clusterName"`
	Hidden 													bool   `yaml:"hidden" json:"hidden"`
	ClusterEndpoint 								string `yaml:"clusterEndpoint" json:"clusterEndpoint"`
	Base64CertificateAuthorityData  string `yaml:"base64CertificateAuthorityData" json:"base64CertificateAuthorityData"`
	EfsCSIStorageID                 string `yaml:"efsCSIStorageID" json:"efsCSIStorageID"`
}

var ( 
	clustersList = []ClusterConfig{ 
		{
			clusterName: "sbx-i01-aws-us-east-1",
			hidden: true,
			clusterEndpoint: "{{ op://empc-lab/psk-aws-sbx-i01-aws-us-east-1/cluster-url }}",  
			base64CertificateAuthorityData: "{{ op://empc-lab/psk-aws-sbx-i01-aws-us-east-1/base64-certificate-authority-data }}",
			efsCSIStorageID: "{{ op://empc-lab/psk-aws-sbx-i01-aws-us-east-1/eks-efs-csi-storage-id }}",
		},
		{
			clusterName: "prod-i01-aws-us-east-2",
			hidden: false,
			clusterEndpoint: "{{ op://empc-lab/psk-aws-prod-i01-aws-us-east-2/cluster-url }}",
			base64CertificateAuthorityData: "{{ op://empc-lab/psk-aws-prod-i01-aws-us-east-2/base64-certificate-authority-data }}",
			efsCSIStorageID: "{{ op://empc-lab/psk-aws-prod-i01-aws-us-east-2/eks-efs-csi-storage-id }}",
		},
	}
)

const (
	LoginClientId = "{{ op://empc-lab/svc-auth0/pskctl-cli-client-id }}"
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
