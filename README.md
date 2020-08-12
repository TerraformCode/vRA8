# Prerequisites
## Installing the vRealize Automation Terraform Provider

To start using the vRA Terraform provider you’ll need to have Terraform and Go installed on your local machine.

    mkdir -p ~/.terraform.d/plugins
    
    wget https://github.com/vmware/terraform-provider-vra/releases/download/v0.1.8/terraform-provider-vra-darwin_amd64-v0.1.8.tgz
    
    tar xvf terraform-provider-vra-darwin_amd64-v0.1.8.tgz
    
    mv terraform-provider-vra ~/.terraform.d/plugins

Move the provider file plugin folder.