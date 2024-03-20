(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type associations = {
  gateway_id : string prop;  (** gateway_id *)
  main : bool prop;  (** main *)
  route_table_association_id : string prop;
      (** route_table_association_id *)
  route_table_id : string prop;  (** route_table_id *)
  subnet_id : string prop;  (** subnet_id *)
}

type routes = {
  carrier_gateway_id : string prop;  (** carrier_gateway_id *)
  cidr_block : string prop;  (** cidr_block *)
  core_network_arn : string prop;  (** core_network_arn *)
  destination_prefix_list_id : string prop;
      (** destination_prefix_list_id *)
  egress_only_gateway_id : string prop;
      (** egress_only_gateway_id *)
  gateway_id : string prop;  (** gateway_id *)
  instance_id : string prop;  (** instance_id *)
  ipv6_cidr_block : string prop;  (** ipv6_cidr_block *)
  local_gateway_id : string prop;  (** local_gateway_id *)
  nat_gateway_id : string prop;  (** nat_gateway_id *)
  network_interface_id : string prop;  (** network_interface_id *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_peering_connection_id : string prop;
      (** vpc_peering_connection_id *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_route_table

val aws_route_table :
  ?gateway_id:string prop ->
  ?id:string prop ->
  ?route_table_id:string prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_route_table

val yojson_of_aws_route_table : aws_route_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  associations : associations list prop;
  gateway_id : string prop;
  id : string prop;
  owner_id : string prop;
  route_table_id : string prop;
  routes : routes list prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?gateway_id:string prop ->
  ?id:string prop ->
  ?route_table_id:string prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?gateway_id:string prop ->
  ?id:string prop ->
  ?route_table_id:string prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
