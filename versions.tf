terraform {
  required_providers {
    vaultoperator = {
      version = "0.1.8"
      source  = "rickardgranberg/vaultoperator"
    }
    local = {
      version = "2.2.3"
      source  = "hashicorp/local"
    }
    time = {
      version = "0.9.1"
      source  = "hashicorp/time"
    }
  }
}
