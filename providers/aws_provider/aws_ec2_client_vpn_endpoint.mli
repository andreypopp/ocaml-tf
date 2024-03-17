(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_client_vpn_endpoint__authentication_options
type aws_ec2_client_vpn_endpoint__client_connect_options
type aws_ec2_client_vpn_endpoint__client_login_banner_options
type aws_ec2_client_vpn_endpoint__connection_log_options
type aws_ec2_client_vpn_endpoint

val aws_ec2_client_vpn_endpoint :
  ?description:string ->
  ?dns_servers:string list ->
  ?self_service_portal:string ->
  ?session_timeout_hours:float ->
  ?split_tunnel:bool ->
  ?tags:(string * string) list ->
  ?transport_protocol:string ->
  ?vpn_port:float ->
  client_cidr_block:string ->
  server_certificate_arn:string ->
  authentication_options:
    aws_ec2_client_vpn_endpoint__authentication_options list ->
  client_connect_options:
    aws_ec2_client_vpn_endpoint__client_connect_options list ->
  client_login_banner_options:
    aws_ec2_client_vpn_endpoint__client_login_banner_options list ->
  connection_log_options:
    aws_ec2_client_vpn_endpoint__connection_log_options list ->
  string ->
  unit
