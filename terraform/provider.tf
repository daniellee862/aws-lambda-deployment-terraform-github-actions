terraform {
  cloud {
    organization = "northcoders-daniel"

    workspaces {
      name = "lambda-terraform-gh-actions"
    }
  }
}


provider "aws" {
    region = "us-east-1"
    access_key = "AKIASNH52EVFTTK4CCXS"
    secret_key = "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"
}