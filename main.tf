locals {
  vault_url = "https://127.0.0.1:8200"
}

provider "vaultoperator" {
  vault_addr = local.vault_url
}

resource "vaultoperator_init" "default" {
  secret_shares    = 1
  secret_threshold = 1
}

resource "local_sensitive_file" "foo" {
  content  = jsonencode({ "vault_address" = "${local.vault_url}", "root_token" = "${vaultoperator_init.default.root_token}", "keys" = "${vaultoperator_init.default.keys}" })
  filename = "../vault_access.json"
}

resource "time_static" "unseal-vault" {
  for_each = toset(["0", "1", "2"])
  triggers = {
    rerun = timestamp()
  }
  provisioner "local-exec" {
    command = "sleep 30 && kubectl -n glueops-core-vault exec -it vault-${each.key} -- vault operator unseal ${vaultoperator_init.default.keys[0]}"
  }
  depends_on = [
    vaultoperator_init.default,
    time_static.unseal-vault["0"]
  ]
}
