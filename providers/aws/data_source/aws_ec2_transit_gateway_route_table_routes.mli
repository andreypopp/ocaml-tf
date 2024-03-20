(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type routes = {
  destination_cidr_block : string prop;
      (** destination_cidr_block *)
  prefix_list_id : string prop;  (** prefix_list_id *)
  state : string prop;  (** state *)
  transit_gateway_route_table_announcement_id : string prop;
      (** transit_gateway_route_table_announcement_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_ec2_transit_gateway_route_table_routes

val aws_ec2_transit_gateway_route_table_routes :
  ?id:string prop ->
  transit_gateway_route_table_id:string prop ->
  filter:filter list ->
  unit ->
  aws_ec2_transit_gateway_route_table_routes

val yojson_of_aws_ec2_transit_gateway_route_table_routes :
  aws_ec2_transit_gateway_route_table_routes -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  routes : routes list prop;
  transit_gateway_route_table_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  transit_gateway_route_table_id:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  transit_gateway_route_table_id:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
