terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

resource "random_pet" "mypet1" {
}

resource "random_id" "myid1" {
  keepers = {
    petid = resource.random_pet.mypet1.id
  }
  byte_length = 8
}
