# AWS Infrastructure Provisioning with Terraform

This project provisions AWS infrastructure using Terraform. It sets up EC2 instances and S3 buckets using modular and reusable Terraform code.

## 📁 Project Structure

aws-handshake/ │

├── main.tf # Root Terraform configuration

├── main_ec2.tf # EC2 instance provisioning

├── main_s3.tf # S3 bucket provisioning

├── main_securityGroups.tf # Security group configuration

├── variables_ec2.tf # EC2 input variables

├── variables_s3.tf # S3 input variables

├── variables_securityGroups.tf # Security groups input variables

├── terraform.tfvars # Main variable values

├── vars_ec2.tfvars # EC2-specific variable values

├── vars_s3.tfvars # S3-specific variable values

├── outputs.tf # Outputs after resource creation

├── modules/

│ └── multi_s3/ # Custom module for multiple S3 buckets

  └── .terraform/ # Terraform-generated files and modules

## 🚀 What This Terraform Code Does

- ✅ Launches EC2 instances
- 📦 Creates one or more S3 buckets
- 🔐 Configures security groups
- 🧱 Uses modules for clean, reusable infrastructure

## 🛠️ Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- AWS CLI configured (`aws configure`)
- An AWS account with appropriate IAM permissions

## ⚙️ How to Use

1. **Clone this repository**

   git clone https://github.com/Aneesh2000/terraform-handshake-assessment.git

2. Initialize Terraform

   terraform init

3. add necessary details of the resources to be created in vars_ec2.tfvars & vars_s3.tfvars
4. Preview the plan

   terraform plan -var-file="terraform.tfvars"

5. Apply the configuration

   terraform apply -var-file="terraform.tfvars"

6. Destroy resources when done

   terraform destroy -var-file="terraform.tfvars"

📦 Modules Used
EC2 Instance Module
Reusable module sourced in .terraform/modules/ec2_instance. This handles the EC2 instance creation using best practices for input variables, outputs, and optional configurations.

Custom Multi-S3 Module
Located in modules/multi_s3/, this module allows for provisioning multiple S3 buckets by passing a list of names.

📝 Outputs
After running terraform apply, output values will be shown based on configurations in outputs.tf. These may include:

EC2 public IPs

S3 bucket names

Security group IDs

🧹 Cleanup
To delete all resources created by Terraform:

terraform destroy -var-file="terraform.tfvars"

---
