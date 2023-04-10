# Terraform AWS ECS Tutorial

## Setup

1. Install `docker ~> 20.10`
1. Install `terraform ~> 1.4`
1. Create a local `aws.tfvars.json` files with the following values from your instructor:

   ```json
   {
     "AWS_ACCESS_KEY_ID": "xxx",
     "AWS_SECRET_ACCESS_KEY": "yyy"
   }
   ```

1. Run `terraform init`

## References

- <https://github.com/1Mill/example-terraform-ecs/tree/main/examples/aws-resources>