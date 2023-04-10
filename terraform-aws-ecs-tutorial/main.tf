# * Part 1 - Setup.
terraform {
	required_version = "~> 1.1"

	required_providers {
		aws = {
			source  = "hashicorp/aws"
			version = "~> 4.56"
		}
		docker = {
			source  = "kreuzwerker/docker"
			version = "~> 3.0"
		}
	}
}

locals {
	container_name = "hello-world-container"
	container_port = 8080 # ! Must be same port from our Dockerfile that we EXPOSE
	example = "TODO_REPLACE_WITH_YOUR_NAME"
}

provider "aws" {
	region = "ca-central-1"

	default_tags {
		tags = { example = local.example }
	}
}

# * Give Docker permission to pusher Docker Images to AWS.
data "aws_caller_identity" "this" {}
data "aws_ecr_authorization_token" "this" {}
data "aws_region" "this" {}
locals { ecr_address = format("%v.dkr.ecr.%v.amazonaws.com", data.aws_caller_identity.this.account_id, data.aws_region.this.name) }
provider "docker" {
	registry_auth {
		address  = local.ecr_address
		password = data.aws_ecr_authorization_token.this.password
		username = data.aws_ecr_authorization_token.this.user_name
	}
}
