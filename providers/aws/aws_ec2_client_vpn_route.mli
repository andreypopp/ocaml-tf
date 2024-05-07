(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ec2_client_vpn_route

val aws_ec2_client_vpn_route :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  client_vpn_endpoint_id:string prop ->
  destination_cidr_block:string prop ->
  target_vpc_subnet_id:string prop ->
  unit ->
  aws_ec2_client_vpn_route

val yojson_of_aws_ec2_client_vpn_route :
  aws_ec2_client_vpn_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_vpn_endpoint_id : string prop;
  description : string prop;
  destination_cidr_block : string prop;
  id : string prop;
  origin : string prop;
  target_vpc_subnet_id : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  client_vpn_endpoint_id:string prop ->
  destination_cidr_block:string prop ->
  target_vpc_subnet_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  client_vpn_endpoint_id:string prop ->
  destination_cidr_block:string prop ->
  target_vpc_subnet_id:string prop ->
  string ->
  t Tf_core.resource
