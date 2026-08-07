<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 />
    <br />
		<img alt="DPS Title" src="https://raw.githubusercontent.com/twplatformlabs/static/master/EMPCPlatformStarterKitsImage.png?sanitize=true" width=350/>
	</p>
  <br />
  <h3>pskctl</h3>
    <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/twplatformlabs/pskctl"></a> <a href="https://github.com"><img src="https://img.shields.io/badge/-social-blank.svg?style=social&logo=github"></a>
</div>
<br />

Platform starter kits control plane cli.  

### Quickstart

Download the latest version from [releases](https://github.com/twplatformlabs/pskctl/releases).  

Login to generate local access credentials. Reference example based on oauth2-oidc device-auth-flow managed by auth0.com and with Social integration to GitHub to provide authn and authz through a teams membership claim.  
```bash
pskctl login
```
This will create a configuration file at ~/.pskctl/config.yaml.  

Among the credentials generated will be a JWT bearer and refresh token that is used by a kubernetes oidc provider to authenticate your access to the kubernetes api. The token contains your claims in the form of your team memberships within the authorizing GitHub Organization. You will only be able to access the kubernetes api where the oidc provider can both successfully authenticate your token, and where at least one prior clusterroldbindings matches your claims.  

List available clusters  
```bash
pskctl list clusters
```
Platform admininstrator can use `export PSKCTL_DEFAULTSHOWHIDDEN=true` to include all clusters in the output.  

Generate a kubeconfig to stdout. Defaults to production cluster, since that is where the example developer environments exist. Use `--cluster` flag to specify.   
```bash
pskctl get kubeconfig

apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ABCDefgh12345==
    server: https://12341567890.gr7.us-east-1.eks.amazonaws.com
  name: prod-us-east-1
contexts:
- context:
    cluster: prod-us-east-1
    user: oidc-user@prod-us-east-1
  name: prod-us-east-1
current-context: prod-us-east-1
kind: Config
preferences: {}
users:
- name: oidc-user@prod-us-east-1
  user:
    auth-provider:
      config:
        client-id: ABCDefgh12345
        idp-issuer-url: https://pskctl.us.auth0.com/
        refresh-token: ABCDefgh12345
      name: oidc
```
