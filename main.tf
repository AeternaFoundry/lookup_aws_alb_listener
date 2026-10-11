data "aws_alb_listener" "alb_listener_lookup" {
  for_each = var.alb_listener_lookup

  arn               = each.value.arn
  load_balancer_arn = each.value.load_balancer_arn
  port              = each.value.port
  region            = each.value.region
  tags              = each.value.tags
}

