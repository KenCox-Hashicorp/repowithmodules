terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

resource "random_pet" "mypet2a_v2" {
}

resource "random_pet" "mypet2b_v2" {
}

resource "random_id" "myid2ab_v2" {
  keepers = {
    petida = resource.random_pet.mypet2a_v2.id
    petidb = resource.random_pet.mypet2b_v2.id
  }
  byte_length = 8
}
