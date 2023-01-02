# terraform-module-kubernetes-hashicorp-vault-initialization


### Requirements:
- You should be using this within the context of https://github.com/GlueOps/admiral
- Before you start have a connection to your kubernetes cluster. Make sure that you can run this command and all the vault-[0-2] pods running:
  
`kubectl get pods -n glueops-core-vault`
- This module takes no inputs and assumes that you are using vault with SSL enabled.
- Since we assumg the SSL enabled on Vault is using a self-signed cert then you will need to grab the CA:
  
`kubectl get secret/vault-ca-secret -n glueops-core-vault --template '{{index .data "ca.crt"}}' | base64 --decode > ca.crt`
- Setting this environment variable tells your system as well as golang (since it uses your system trust store) to trust your self-signed certificate:
  
`export SSL_CERT_FILE=$(pwd)/ca.crt`

### Before you can use the module you need to establish a connection to the svc/vault

- In a separate terminal on the same VM run:
```bash
kubectl -n glueops-core-vault port-forward svc/vault-ui 8200:8200
```


### In the existing terminal where you set the `SSL_CERT_FILE` value, apply the terraform.

```bash
terraform init
terraform apply
```
