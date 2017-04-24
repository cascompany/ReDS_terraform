data "aws_availability_zones" "available" {}

# Build YAML Templates
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

data "template_file" "alarms" {
  template = "${file("modules/lambdafn/alarms.yaml.template")}"

  vars {
    alarm-credits = "${module.cwalarms.reds-alarms-ReDSNoCredits_id}"
    alarm-low     = "${module.cwalarms.reds-alarms-ReDSAlarmLow_id}"
    alarm-high    = "${module.cwalarms.reds-alarms-ReDSAlarmHigh_id}"
  }
}

data "template_file" "vars" {
  template = "${file("modules/lambdafn/vars.yaml.template")}"

  vars {
    stack-prefix           = "${var.stack_prefix}"
    aws-region             = "${var.AWS_REGION}"
    rds-identifier         = "${var.rds_instance}"
    instance-size-1        = "${var.instance_size_1}"
    instance-size-2        = "${var.instance_size_2}"
    instance-size-3        = "${var.instance_size_3}"
    instance-size-4        = "${var.instance_size_4}"
    instance-size-5        = "${var.instance_size_5}"
    down-cron              = "${var.down_cron}"
    down-alarm-duration    = "${var.down_evaluations}"
    down-threshold         = "${var.down_threshold}"
    down-cooldown          = "${var.down_cooldown}"
    up-cron                = "${var.up_cron}"
    up-alarm-duration      = "${var.up_evaluations}"
    up-threshold           = "${var.up_threshold}"
    up-cooldown            = "${var.up_cooldown}"
    credits-alarm-duration = "${var.credit_evaluations}"
    credits-threshold      = "${var.credit_threshold}"
    credits-cooldown       = "${var.credits_cooldown}"
    enabled                = "${var.enabled}"
    scheduled-index        = "${var.scheduled_index}"
    schedule-enabled       = "${var.schedule_enabled}"
  }
}
