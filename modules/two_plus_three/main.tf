terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

module "first_get_twopets" {
  source = "git::https://github.com/KenCox-Hashicorp/repowithmodules.git//modules/twopets?ref=4.0.0"
}

module "then_get_threepets" {
  source = "git::https://github.com/KenCox-Hashicorp/repowithmodules.git//modules/threepets?ref=4.0.0"
}
