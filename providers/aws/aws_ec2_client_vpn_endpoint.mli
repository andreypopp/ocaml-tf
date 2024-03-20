(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication_options

val authentication_options :
  ?active_directory_id:string prop ->
  ?root_certificate_chain_arn:string prop ->
  ?saml_provider_arn:string prop ->
  ?self_service_saml_provider_arn:string prop ->
  type_:string prop ->
  unit ->
  authentication_options

type client_connect_options

val client_connect_options :
  ?enabled:bool prop ->
  ?lambda_function_arn:string prop ->
  unit ->
  client_connect_options

type client_login_banner_options

val client_login_banner_options :
  ?banner_text:string prop ->
  ?enabled:bool prop ->
  unit ->
  client_login_banner_options

type connection_log_options

val connection_log_options :
  ?cloudwatch_log_group:string prop ->
  ?cloudwatch_log_stream:string prop ->
  enabled:bool prop ->
  unit ->
  connection_log_options

type aws_ec2_client_vpn_endpoint

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
  authentication_options:authentication_options list ->
  client_connect_options:client_connect_options list ->
  client_login_banner_options:client_login_banner_options list ->
  connection_log_options:connection_log_options list ->
  unit ->
  aws_ec2_client_vpn_endpoint

val yojson_of_aws_ec2_client_vpn_endpoint :
  aws_ec2_client_vpn_endpoint -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  authentication_options:authentication_options list ->
  client_connect_options:client_connect_options list ->
  client_login_banner_options:client_login_banner_options list ->
  connection_log_options:connection_log_options list ->
  string ->
  t

val make :
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
  authentication_options:authentication_options list ->
  client_connect_options:client_connect_options list ->
  client_login_banner_options:client_login_banner_options list ->
  connection_log_options:connection_log_options list ->
  string ->
  t Tf_core.resource
