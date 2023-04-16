terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = "dop_v1_9830681b23aff72298cb16732b89d22bdab72cfeee8084dd8d2a8fbf42c96b61"
}

resource "digitalocean_droplet" "jenkins-vm" {
  image    = "ubuntu-22-04-x64"
  name     = "jenkins-vm"
  region   = var.region
  size     = "s-2vcpu-2gb"
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
}

data "digitalocean_ssh_key" "ssh_key" {
  name = var.ssh_key_name
}

resource "digitalocean_kubernetes_cluster" "k8s" {
  name    = "k8s"
  region  = var.region
  version = "1.26.3-do.0"

  node_pool {
    name       = "k8s-pool"
    size       = "s-2vcpu-2gb"
    node_count = 2
  }
}

variable "do_token" {
  default = ""
}

variable "ssh_key_name" {
  default = ""
}

variable "region" {
  default = ""
}

output "jenkins-ip" {
  value = digitalocean_droplet.jenkins-vm.ipv4_address
}

resource "local_file" "kube-config" {
  content  = digitalocean_kubernetes_cluster.k8s.kube_config.0.raw_config
  filename = "kube_config.yaml"
}

