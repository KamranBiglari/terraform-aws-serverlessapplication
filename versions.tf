terraform {
  required_version = ">= 1.0.11"
  required_providers {
    aws = ">= 5.0"
    http = {
      source  = "hashicorp/http"
      version = ">= 3.4.0"
    }
  }

}