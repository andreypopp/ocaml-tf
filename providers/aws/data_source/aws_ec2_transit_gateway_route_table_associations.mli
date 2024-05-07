(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_transit_gateway_route_table_associations

val aws_ec2_transit_gateway_route_table_associations :
  ?id:string prop ->
  ?timeouts:timeouts ->
  transit_gateway_route_table_id:string prop ->
  filter:filter list ->
  unit ->
  aws_ec2_transit_gateway_route_table_associations

val yojson_of_aws_ec2_transit_gateway_route_table_associations :
  aws_ec2_transit_gateway_route_table_associations -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ids : string list prop;
  transit_gateway_route_table_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  transit_gateway_route_table_id:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  transit_gateway_route_table_id:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
