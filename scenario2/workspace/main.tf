terraform {
  backend "local" {}
}

module "module1" {
  source = "../modules/module1"
}