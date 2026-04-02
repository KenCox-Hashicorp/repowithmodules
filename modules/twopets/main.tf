terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

resource "random_pet" "mypet2a" {
}

resource "random_pet" "mypet2b" {
}

resource "random_id" "myid2ab" {
  keepers = {
    petida = resource.random_pet.mypet2a.id
    petidb = resource.random_pet.mypet2b.id
  }
  byte_length = 8
}
