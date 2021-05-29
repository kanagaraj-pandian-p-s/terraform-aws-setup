# --- loadbalancing/main.tf ---

resource "aws_lb" "tf_lb" {
  name            = "tf-loadbalancer"
  subnets         = var.public_subnets
  security_groups = [var.public_sg]
  idle_timeout    = 400
}

resource "aws_lb_target_group" "tf_tg" {
  name     = "tf-lb-tg-${substr(uuid(), 0, 3)}"
  port     = var.tf_port
  protocol = var.tf_protocol
  vpc_id   = var.vpc_id
  lifecycle {
    ignore_changes        = [name]
    create_before_destroy = true
  }
  health_check {
    healthy_threshold   = var.lb_healthy_threshold
    unhealthy_threshold = var.lb_unhealthy_threshold
    timeout             = var.lb_timeout
    interval            = var.lb_interval
  }
}

resource "aws_lb_listener" "tf_lb_listerner" {
  load_balancer_arn = aws_lb.tf_lb.arn
  port              = var.listener_port
  protocol          = var.listener_protocol
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tf_tg.arn
  }
}