terraform {
  cloud {
    organization = "opensource-construction"

    workspaces {
      name = "osc-tfe"
    }
  }
}
