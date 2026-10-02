# Bug reproduction

## [`scenario1/`](scenario1/)

1. Open `scenario1` on VSCode in an empty profile
1. Install only the [HashiCorp Terraform](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform) extension (version `2.40.0`)
    - `terraform_data` `store` block is not recognized in `main.tf`
1. Run `terraform init`
1. Reload window in VSCode (command `Developer: Reload Window`)
    - `terraform_data` `store` block is recognized

## [`scenario2/`](scenario2/)

1. Open `scenario1` on VSCode in an empty profile
1. Install only the [HashiCorp Terraform](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform) extension (version `2.40.0`)
    - `terraform_data` `store` block is not recognized in `modules/module1/main.tf`
1. Run `terraform init`
1. Reload window in VSCode (command `Developer: Reload Window`)
    - `terraform_data` `store` block is not recognized in `modules/module1/main.tf`
1. Run `terraform plan -out plan.out`
1. Reload window in VSCode (command `Developer: Reload Window`)
    - `terraform_data` `store` block is not recognized in `modules/module1/main.tf`
1. Run `terraform apply plan.out`
1. Reload window in VSCode (command `Developer: Reload Window`)
    - `terraform_data` `store` block is not recognized in `modules/module1/main.tf`
