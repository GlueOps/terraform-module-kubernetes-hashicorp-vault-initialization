<!-- BEGIN_TF_DOCS -->
# terraform-module-kubernetes-hashicorp-vault-initialization

This terraform module is to help yo intialize and unseal vault. This is part of the opionated GlueOps Platform. If you came here directly then you should probably visit https://github.com/glueops/admiral as that is the start point.

## Prerequisites

- https://github.com/GlueOps/terraform-module-kubernetes-hashicorp-vault-initialization/wiki

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.4.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | 0.9.1 |
| <a name="requirement_vaultoperator"></a> [vaultoperator](#requirement\_vaultoperator) | 0.1.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.4.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.9.1 |
| <a name="provider_vaultoperator"></a> [vaultoperator](#provider\_vaultoperator) | 0.1.8 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_sensitive_file.foo](https://registry.terraform.io/providers/hashicorp/local/2.4.0/docs/resources/sensitive_file) | resource |
| [time_static.unseal-vault](https://registry.terraform.io/providers/hashicorp/time/0.9.1/docs/resources/static) | resource |
| [vaultoperator_init.default](https://registry.terraform.io/providers/rickardgranberg/vaultoperator/0.1.8/docs/resources/init) | resource |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
