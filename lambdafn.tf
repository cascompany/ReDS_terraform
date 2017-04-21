# Build and Create Lambda resources
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

module "lambdafn" {
  source             = "modules/lambdafn"
  unique_name        = "${var.unique_name}"
  lambda_file        = "tmp/${var.stack_prefix}-${var.unique_name}.zip"
  stack_prefix       = "${var.stack_prefix}"
  aws_iam_role_arn   = "${module.iamrole.aws_iam_role_arn}"
  alarms_yaml_render = "${data.template_file.alarms.rendered}"
  vars_yaml_render   = "${data.template_file.vars.rendered}"
}
