terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
    tfe = {
    }
  }
}

resource "random_pet" "tfe_pet" {
}

data "tfe_organization" "hashicorp_org" {
  name = "hashicorp"
}

data "tfe_project" "default_project" {
  name = "Default Project"
  organization = data.tfe_organization.hashicorp_org.name
}
