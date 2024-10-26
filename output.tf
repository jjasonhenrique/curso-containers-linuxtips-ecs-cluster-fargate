output "load_balncer_dns" {
  value = aws_lb.main.dns_name
}

output "lb_ssm_arn" {
  value = aws_ssm_parameter.lb_arn.id
}

output "lb_ssm_listener" {
  value = aws_ssm_parameter.lb_listener.id
}

output "load_balncer_dns_internal" {
  value = aws_lb.lb_internal.dns_name
}

output "lb_ssm_arn_internal" {
  value = aws_ssm_parameter.lb_internal_arn.id
}

output "lb_ssm_listener_internal" {
  value = aws_ssm_parameter.lb_internal_listener.id
}

output "cloudmap_ssm" {
  value = aws_ssm_parameter.cloudmap.id
}

output "service_connect_ssm" {
  value = aws_ssm_parameter.service_connect.id
}

output "service_connect_name_ssm" {
  value = aws_ssm_parameter.service_connect_name.id
}