(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ec2_transit_gateway_multicast_domain

val aws_ec2_transit_gateway_multicast_domain :
  ?auto_accept_shared_associations:string prop ->
  ?id:string prop ->
  ?igmpv2_support:string prop ->
  ?static_sources_support:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  transit_gateway_id:string prop ->
  unit ->
  aws_ec2_transit_gateway_multicast_domain

val yojson_of_aws_ec2_transit_gateway_multicast_domain :
  aws_ec2_transit_gateway_multicast_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  auto_accept_shared_associations : string prop;
  id : string prop;
  igmpv2_support : string prop;
  owner_id : string prop;
  static_sources_support : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  transit_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_accept_shared_associations:string prop ->
  ?id:string prop ->
  ?igmpv2_support:string prop ->
  ?static_sources_support:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  transit_gateway_id:string prop ->
  string ->
  t

val make :
  ?auto_accept_shared_associations:string prop ->
  ?id:string prop ->
  ?igmpv2_support:string prop ->
  ?static_sources_support:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  transit_gateway_id:string prop ->
  string ->
  t Tf_core.resource
