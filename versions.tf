terraform {
  required_providers {
    vaultoperator = {
      source  = "rickardgranberg/vaultoperator"
    }
    local = {
      source  = "hashicorp/local"
    }
    time = {
      source  = "hashicorp/time"
    }
  }
}
