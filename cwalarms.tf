# Create Cloudwatch Alarms
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

module "cwalarms" {
  source             = "modules/cwalarms"
  unique_name        = "${var.unique_name}"
  stack_prefix       = "${var.stack_prefix}"
  rds_instance       = "${var.rds_instance}"
  up_threshold       = "${var.up_threshold}"
  up_evaluations     = "${var.up_evaluations}"
  down_threshold     = "${var.down_threshold}"
  down_evaluations   = "${var.down_evaluations}"
  credit_threshold   = "${var.credit_threshold}"
  credit_evaluations = "${var.credit_evaluations}"
}
