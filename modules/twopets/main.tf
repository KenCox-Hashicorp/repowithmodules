terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

resource "random_pet" "two_random_pets" {
  for_each = toset(["pet1", "pet2"])
}

