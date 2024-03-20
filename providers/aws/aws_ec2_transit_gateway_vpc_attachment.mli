(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_transit_gateway_vpc_attachment

val aws_ec2_transit_gateway_vpc_attachment :
  ?appliance_mode_support:string prop ->
  ?dns_support:string prop ->
  ?id:string prop ->
  ?ipv6_support:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_default_route_table_association:bool prop ->
  ?transit_gateway_default_route_table_propagation:bool prop ->
  subnet_ids:string prop list ->
  transit_gateway_id:string prop ->
  vpc_id:string prop ->
  unit ->
  aws_ec2_transit_gateway_vpc_attachment

val yojson_of_aws_ec2_transit_gateway_vpc_attachment :
  aws_ec2_transit_gateway_vpc_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  appliance_mode_support : string prop;
  dns_support : string prop;
  id : string prop;
  ipv6_support : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_default_route_table_association : bool prop;
  transit_gateway_default_route_table_propagation : bool prop;
  transit_gateway_id : string prop;
  vpc_id : string prop;
  vpc_owner_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?appliance_mode_support:string prop ->
  ?dns_support:string prop ->
  ?id:string prop ->
  ?ipv6_support:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_default_route_table_association:bool prop ->
  ?transit_gateway_default_route_table_propagation:bool prop ->
  subnet_ids:string prop list ->
  transit_gateway_id:string prop ->
  vpc_id:string prop ->
  string ->
  t

val make :
  ?appliance_mode_support:string prop ->
  ?dns_support:string prop ->
  ?id:string prop ->
  ?ipv6_support:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_default_route_table_association:bool prop ->
  ?transit_gateway_default_route_table_propagation:bool prop ->
  subnet_ids:string prop list ->
  transit_gateway_id:string prop ->
  vpc_id:string prop ->
  string ->
  t Tf_core.resource
