# Create Lambda Role
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

module "iamrole" {
  source       = "modules/iamrole"
  unique_name  = "${var.unique_name}"
  stack_prefix = "${var.stack_prefix}"
}
