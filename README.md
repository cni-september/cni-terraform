# cni-terraform

1) Clone this repo on an box which has aws access to create a ec2 instances and read&write on the bucket specified in variables.tf
As a best practice an IAM role should be assigned to the box or to use SAML api
Secret access keys should be used as last resort - not secure, just for testing

git clone https://github.com/cni-september/cni-terraform.git

cd cni-terraform

2) Init, plan and run:

terraform init

terraform plan -out cni.output

terraform apply "cni.output"

3) It should create an EC2 instance and a SG which will be attached to the EC2 instance 
