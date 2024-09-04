(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication_options = {
  active_directory_id : string prop;  (** active_directory_id *)
  root_certificate_chain_arn : string prop;
      (** root_certificate_chain_arn *)
  saml_provider_arn : string prop;  (** saml_provider_arn *)
  self_service_saml_provider_arn : string prop;
      (** self_service_saml_provider_arn *)
  type_ : string prop; [@key "type"]  (** type *)
}

type client_connect_options = {
  enabled : bool prop;  (** enabled *)
  lambda_function_arn : string prop;  (** lambda_function_arn *)
}

type client_login_banner_options = {
  banner_text : string prop;  (** banner_text *)
  enabled : bool prop;  (** enabled *)
}

type connection_log_options = {
  cloudwatch_log_group : string prop;  (** cloudwatch_log_group *)
  cloudwatch_log_stream : string prop;  (** cloudwatch_log_stream *)
  enabled : bool prop;  (** enabled *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_client_vpn_endpoint

val aws_ec2_client_vpn_endpoint :
  ?client_vpn_endpoint_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ec2_client_vpn_endpoint

val yojson_of_aws_ec2_client_vpn_endpoint :
  aws_ec2_client_vpn_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  authentication_options : authentication_options list prop;
  client_cidr_block : string prop;
  client_connect_options : client_connect_options list prop;
  client_login_banner_options :
    client_login_banner_options list prop;
  client_vpn_endpoint_id : string prop;
  connection_log_options : connection_log_options list prop;
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
  tags : string Tf_core.assoc prop;
  transport_protocol : string prop;
  vpc_id : string prop;
  vpn_port : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_vpn_endpoint_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?client_vpn_endpoint_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
