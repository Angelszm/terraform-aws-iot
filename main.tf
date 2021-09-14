resource "aws_iot_thing" "Test" {
  name            = var.thing_name
  thing_type_name = var.thing_type
}

resource "aws_iot_thing_type" "thingtype" {
  name = var.thing_type
}

resource "aws_iot_policy" "iot_policy" {
  name   = var.iot_policy
  policy = data.template_file.tf_iot_policy.rendered
}
