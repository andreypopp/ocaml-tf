(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ec2_client_vpn_authorization_rule

val aws_ec2_client_vpn_authorization_rule :
  ?access_group_id:string prop ->
  ?authorize_all_groups:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  client_vpn_endpoint_id:string prop ->
  target_network_cidr:string prop ->
  unit ->
  aws_ec2_client_vpn_authorization_rule

val yojson_of_aws_ec2_client_vpn_authorization_rule :
  aws_ec2_client_vpn_authorization_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_group_id : string prop;
  authorize_all_groups : bool prop;
  client_vpn_endpoint_id : string prop;
  description : string prop;
  id : string prop;
  target_network_cidr : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_group_id:string prop ->
  ?authorize_all_groups:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  client_vpn_endpoint_id:string prop ->
  target_network_cidr:string prop ->
  string ->
  t

val make :
  ?access_group_id:string prop ->
  ?authorize_all_groups:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  client_vpn_endpoint_id:string prop ->
  target_network_cidr:string prop ->
  string ->
  t Tf_core.resource
