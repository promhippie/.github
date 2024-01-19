terraform {
  backend "s3" {
    bucket = "promhippie-terraform"
    key    = "github"
    region = "eu-central-1"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.45.0"
    }
  }

  required_version = ">= 1.0"
}

provider "github" {
  owner = "promhippie"
}
