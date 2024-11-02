resource "aws_ssm_parameter" "lb_arn" {
  name  = format("/%s/ecs/lb/id", var.project_name)
  type  = "String"
  value = aws_lb.main.arn
}

resource "aws_ssm_parameter" "lb_listener" {
  name  = format("/%s/ecs/listener/id", var.project_name)
  type  = "String"
  value = aws_lb_listener.main.id
}

resource "aws_ssm_parameter" "lb_internal_arn" {
  name  = format("/%s/ecs/lb/internal/id", var.project_name)
  type  = "String"
  value = aws_lb.lb_internal.arn
}

resource "aws_ssm_parameter" "lb_internal_listener" {
  name  = format("/%s/ecs/listener/internal/id", var.project_name)
  type  = "String"
  value = aws_lb_listener.internal.id
}

resource "aws_ssm_parameter" "cloudmap" {
  name  = format("/%s/ecs/cloudmap/namespace", var.project_name)
  type  = "String"
  value = aws_service_discovery_private_dns_namespace.main.id
}

resource "aws_ssm_parameter" "service_connect" {
  name  = format("/%s/ecs/service_connect/namespace", var.project_name)
  type  = "String"
  value = aws_service_discovery_private_dns_namespace.sc.id
}

resource "aws_ssm_parameter" "service_connect_name" {
  name  = format("/%s/ecs/service_connect/name", var.project_name)
  type  = "String"
  value = aws_service_discovery_private_dns_namespace.sc.name
}

resource "aws_ssm_parameter" "vpclink" {
  name  = format("/%s/apigateway/vpclink/id", var.project_name)
  type  = "String"
  value = aws_api_gateway_vpc_link.main.id
}