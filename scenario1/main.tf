terraform {
  backend "local" {}
}

# From https://developer.hashicorp.com/terraform/language/resources/terraform-data#provide-data-for-the-replace_triggered_by-argument, second example

ephemeral "random_password" "test" {
  length = 16
}

resource "terraform_data" "test" {
  store {
    input     = ephemeral.random_password.test.result
    sensitive = false
    version   = 1
  }
}

output "password" {
  value = terraform_data.test.store.output
}
