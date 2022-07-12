terraform {
  cloud {
    organization = "hui-terraform"

    workspaces {
      name = "workspace-hui"
    }
  }
}