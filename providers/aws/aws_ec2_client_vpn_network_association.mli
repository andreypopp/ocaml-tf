(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ec2_client_vpn_network_association

val aws_ec2_client_vpn_network_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  client_vpn_endpoint_id:string prop ->
  subnet_id:string prop ->
  unit ->
  aws_ec2_client_vpn_network_association

val yojson_of_aws_ec2_client_vpn_network_association :
  aws_ec2_client_vpn_network_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  association_id : string prop;
  client_vpn_endpoint_id : string prop;
  id : string prop;
  subnet_id : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  client_vpn_endpoint_id:string prop ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  client_vpn_endpoint_id:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
