# This repo provides code for using Terraform Azure.


## Azure creds Env Variables for bash:
export ARM_CLIENT_ID="00000000-0000-0000-0000-000000000000"         
export ARM_CLIENT_SECRET="12345678-0000-0000-0000-000000000000"     
export ARM_TENANT_ID="10000000-0000-0000-0000-000000000000"         
export ARM_SUBSCRIPTION_ID="20000000-0000-0000-0000-000000000000"       

## Azure creds Env Variables for PowerShell:        
> $env:ARM_CLIENT_ID = "00000000-0000-0000-0000-0000000000000"          
> $env:ARM_CLIENT_SECRET = "12345678-0000-0000-0000-000000000000"       
> $env:ARM_TENANT_ID = "10000000-0000-0000-0000-000000000000"           
> $env:ARM_SUBSCRIPTION_ID = "20000000-0000-0000-0000-000000000000"     

##terraform flow:
1. terraform init
2. terraform fmt
3. terraform validate
4. terraform plan
5. terraform apply


##topic of terraform
1.terraform resource
2.terraform  dependecies
3.terraform backend and locking
4.terraform variables
5.terraform init,fmt,validate,plan,apply,state,deploy
