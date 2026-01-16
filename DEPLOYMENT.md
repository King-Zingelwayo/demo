# IndlovuCloud Website Deployment

## Prerequisites
- AWS CLI configured with appropriate credentials
- Terraform >= 1.0 installed

## Deployment Instructions

### Production Deployment
```bash
cd terraform
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
```

### Development Deployment
```bash
cd terraform
terraform plan -var-file="dev.tfvars"
terraform apply -var-file="dev.tfvars"
```

### Cleanup
```bash
terraform destroy -var-file="terraform.tfvars"
```

## Architecture
- S3 bucket with static website hosting enabled
- Public read access for website files
- Versioning enabled for file history
- Automatic content-type detection for uploads

## File Structure
```
├── website/
│   ├── index.html
│   ├── about.html
│   ├── contact.html
│   ├── styles.css
│   └── logo.svg
└── terraform/
    ├── provider.tf
    ├── variables.tf
    ├── s3.tf
    ├── outputs.tf
    ├── terraform.tfvars
    └── dev.tfvars
```

## Post-Deployment
After successful deployment, the website will be accessible via the S3 website endpoint URL provided in the Terraform outputs.