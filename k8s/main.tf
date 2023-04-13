terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "dop_v1_068639f1969b8acc8cfe0a364d97acb4734ffe71df8d2c6f147abf78be9076fd"
}