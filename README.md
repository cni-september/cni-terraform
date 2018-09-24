# cni-terraform

1) Clone this repo on an box which has aws access to create a ec2 instances and read&write on the bucket specified in variables.tf
As a best practice an IAM role should be assigned to the box or to use SAML api
Secret access keys should be used as last resort - not secure, just for testing

git clone https://github.com/cni-september/cni-terraform.git

cd cni-terraform

2) Create the bucket needed for terraform state file:

create an s3 bucket as specified in state.tf:'cni-state-september' or update the name & region as you prefer

3) Init, plan and run:

terraform init

terraform plan -out "cni.output"

terraform apply "cni.output"

It should create an EC2 instance and a SG(inbound:22,80 - outbound all) which will be attached to the EC2 instance.After the instance will be created it will run the "userdata.sh" which will install Docker,Git and NodeJS and it will start a container based on docker hub repo: cniseptember/cni-docker

Verify if "terraform.tfstate" has been uploaded in the s3 bucked specified earlier

4) Verify if the app is working:
http://=public-up=
