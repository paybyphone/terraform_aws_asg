// module terraform_aws_asg

// primary_subnet is a data source that provides information about the first
// subnet supplied to the module.
data "aws_subnet" "primary_subnet" {
  id = "${var.subnet_ids[0]}"
}

// autoscaling_instance_security_group provides the security group for 
// instances in the launch configuration.
module "autoscaling_instance_security_group" {
  source       = "github.com/paybyphone/terraform_aws_security_group?ref=v0.1.0"
  project_path = "${var.project_path}"
  vpc_id       = "${data.aws_subnet.primary_subnet.vpc_id}"
}
