(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ec2_transit_gateway_multicast_domain_association

val aws_ec2_transit_gateway_multicast_domain_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  subnet_id:string prop ->
  transit_gateway_attachment_id:string prop ->
  transit_gateway_multicast_domain_id:string prop ->
  unit ->
  aws_ec2_transit_gateway_multicast_domain_association

val yojson_of_aws_ec2_transit_gateway_multicast_domain_association :
  aws_ec2_transit_gateway_multicast_domain_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  subnet_id : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_multicast_domain_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  subnet_id:string prop ->
  transit_gateway_attachment_id:string prop ->
  transit_gateway_multicast_domain_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  subnet_id:string prop ->
  transit_gateway_attachment_id:string prop ->
  transit_gateway_multicast_domain_id:string prop ->
  string ->
  t Tf_core.resource
