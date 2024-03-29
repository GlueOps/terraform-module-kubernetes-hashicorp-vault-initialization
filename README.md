<!-- BEGIN_TF_DOCS -->
# terraform-module-kubernetes-hashicorp-vault-initialization

This terraform module is to help you intialize and unseal vault. This module can be run multiple times, after it's first run it can be used to unseal a sealed vault cluster, so feel free to run it as many times as you like. This module is part of the opionated GlueOps Platform. If you came here directly then you should probably visit https://github.com/glueops/admiral as that is the starting point.

## Prerequisites to use this Terraform module

- All Vault Pods must be in at least a `Running` State
- Connection to the Vault cluster using `kubectl` port forwarding.
- Skip SSL verification

For more details see: https://github.com/GlueOps/terraform-module-kubernetes-hashicorp-vault-initialization/wiki

### Example usage of module

```hcl
module "initialize_vault_cluster" {
  source = "git::https://github.com/GlueOps/terraform-module-kubernetes-hashicorp-vault-initialization.git"
}
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_time"></a> [time](#provider\_time) | n/a |
| <a name="provider_vaultoperator"></a> [vaultoperator](#provider\_vaultoperator) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_sensitive_file.foo](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/sensitive_file) | resource |
| [time_static.unseal-vault](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |
| [vaultoperator_init.default](https://registry.terraform.io/providers/rickardgranberg/vaultoperator/latest/docs/resources/init) | resource |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
