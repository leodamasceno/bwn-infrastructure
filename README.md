# BWN Aplicativos AWS infrastructure on terraform

## Dependencies:
- Create an IAM user named bot-terraform and add it permissions to manage all the resources (EC2, RDS, S3)
- Create an Access Key for the bot-terraform use it and replace the current ones in the vars.tf file

## Directory structure
```
├── bwn-infrastructure
 └── ec2-instances.tf
 └── internet-gateway.tf
 └── load-balancer.tf
 └── provider.tf
 └── rds.tf
 └── route-table.tf
 └── s3.tf
 └── security-groups.tf
 └── subnet.tf
 |── user_data
  └── app-config.sh
 └── vars.tf
 └── vpc.tf
```

### Files
All the files are listed above. Please check the following comments which explains each one of files:
- ec2-instances.tf: It creates the launch configuration and auto scaling group. The ASG (Auto Scaling Group) is responsible for the instances, it sets a minimum, maxium and desired number of EC2 instances.
- internet-gateway.tf: The internet gateway (IGW) is created by this file, allowing the subnet via route tables to connect to the internet.
- load-balancer.tf: This file is responsible for the creation of the load balancer and its health checks.
- provider.tf: It sets the AWS credentials and region used by Terraform.
- rds.tf: This file stores the RDS cluster and instance configuration.
- route-table.tf: The route table will be created by this file and associated to the subnets (Private 1 and Private 2).
- s3.tf: This is not a configuration file to build the infrastructure. This file is used to share the tfstate file via AWS S3.
- security-groups.tf: It creates the three security groups, one for the ELB allowing access via port 80, another SG (Security Group) for the web access to the instances and one more to allow admin access to the instances via SSH.
- subnet.tf: It creates the two private subnets, one in each availability zone (us-east-1a and us-east-1b).
- user_data: This directory stores the *pp-config.sh script, used by terraform to install tomcat8 and start it.
- vars.tf: It stores all the variables used by the other terraform files.
- vpc.tf: Terraform will execute this file first to create the VPC. All the other componentes need to be created inside the VPC.

## Running terraform
You can see the current status of your infrastructure by typing:
```
# terraform plan
```
It will show you if there are any changes to be applied.

If you change the files, maybe because you added a new resource or changed an existent resource, you will need to do a plan first (Command above) and then apply these changes:
```
# terraform apply
```

You need to be inside this github repo, it will not work otherwise.
