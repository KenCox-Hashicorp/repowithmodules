terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

resource "random_pet" "mypet1_v2" {
}

resource "random_id" "myid1_v2" {
  keepers = {
    petid = resource.random_pet.mypet1_v2.id
  }
  byte_length = 8
}
