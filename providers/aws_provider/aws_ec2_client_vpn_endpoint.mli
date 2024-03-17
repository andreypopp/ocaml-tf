(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_client_vpn_endpoint__authentication_options
type aws_ec2_client_vpn_endpoint__client_connect_options
type aws_ec2_client_vpn_endpoint__client_login_banner_options
type aws_ec2_client_vpn_endpoint__connection_log_options
type aws_ec2_client_vpn_endpoint

type t = private {
  arn : string prop;
  client_cidr_block : string prop;
  description : string prop;
  dns_name : string prop;
  dns_servers : string list prop;
  id : string prop;
  security_group_ids : string list prop;
  self_service_portal : string prop;
  self_service_portal_url : string prop;
  server_certificate_arn : string prop;
  session_timeout_hours : float prop;
  split_tunnel : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transport_protocol : string prop;
  vpc_id : string prop;
  vpn_port : float prop;
}

val aws_ec2_client_vpn_endpoint :
  ?description:string prop ->
  ?dns_servers:string prop list ->
  ?id:string prop ->
  ?security_group_ids:string prop list ->
  ?self_service_portal:string prop ->
  ?session_timeout_hours:float prop ->
  ?split_tunnel:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transport_protocol:string prop ->
  ?vpc_id:string prop ->
  ?vpn_port:float prop ->
  client_cidr_block:string prop ->
  server_certificate_arn:string prop ->
  authentication_options:
    aws_ec2_client_vpn_endpoint__authentication_options list ->
  client_connect_options:
    aws_ec2_client_vpn_endpoint__client_connect_options list ->
  client_login_banner_options:
    aws_ec2_client_vpn_endpoint__client_login_banner_options list ->
  connection_log_options:
    aws_ec2_client_vpn_endpoint__connection_log_options list ->
  string ->
  t
