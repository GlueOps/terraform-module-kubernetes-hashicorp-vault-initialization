<!-- BEGIN_TF_DOCS -->
# terraform-module-kubernetes-hashicorp-vault-initialization

This Terraform module initializes and unseals vault. You can use this module to unseal vault whenever needed. This repo should be used in the context of deploying with an [admiral](https://github.com/glueops/admiral)

## Prerequisites

- Before you start have a connection to your kubernetes cluster. Make sure that you can run this command and all the vault-[0-2] pods with status "Running":
```bash
kubectl get pods -n glueops-core-vault
```

**Before you can use the module you need to establish a connection to the svc/vault**

- In a separate terminal on the same VM run:

```bash
kubectl -n glueops-core-vault port-forward svc/vault-ui 8200:8200
```

### Note

If you are using a self-signed SSL you need to let the vault SDK know to skip SSL verification. `export VAULT_SKIP_VERIFY=true`

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.3.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | 0.9.1 |
| <a name="requirement_vaultoperator"></a> [vaultoperator](#requirement\_vaultoperator) | 0.1.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.3.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.9.1 |
| <a name="provider_vaultoperator"></a> [vaultoperator](#provider\_vaultoperator) | 0.1.8 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_sensitive_file.foo](https://registry.terraform.io/providers/hashicorp/local/2.3.0/docs/resources/sensitive_file) | resource |
| [time_static.unseal-vault](https://registry.terraform.io/providers/hashicorp/time/0.9.1/docs/resources/static) | resource |
| [vaultoperator_init.default](https://registry.terraform.io/providers/rickardgranberg/vaultoperator/0.1.8/docs/resources/init) | resource |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->