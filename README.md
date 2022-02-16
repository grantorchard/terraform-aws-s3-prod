# Usage

### Basic deployment
This example deploys a simple s3 bucket without backups, logging, replication, or encryption.
```
module "object storage" {
  source  = "app.terraform.io/grantorchard/s3/aws"
  version = "0.0.3"

	name = "blue"
	environment = "development"
}
```

### Production deployment
This example enables backups, logging, replication, and encryption.
Suitable for production usage.
```
module "object storage" {
  source  = "app.terraform.io/grantorchard/s3/aws"
  version = "0.0.3"

	name = "blue"
	environment = "production"
}
```