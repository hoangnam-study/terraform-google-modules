provider "google" {
  project = "bigdata-learning-463402"
  region  = "asia-southeast1"
  zone    = "asia-southeast1-a"
}

module "vm" {
  source  = "../src"
  vm_name = "my-vm"

}

output "ip" {
  value = module.vm.ip
}

output "private_ip" {
  value = module.vm.private_ip
}
