(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_ec2_transit_gateway_attachment

val aws_ec2_transit_gateway_attachment :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?transit_gateway_attachment_id:string prop ->
  filter:filter list ->
  unit ->
  aws_ec2_transit_gateway_attachment

val yojson_of_aws_ec2_transit_gateway_attachment :
  aws_ec2_transit_gateway_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  association_state : string prop;
  association_transit_gateway_route_table_id : string prop;
  id : string prop;
  resource_id : string prop;
  resource_owner_id : string prop;
  resource_type : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_id : string prop;
  transit_gateway_owner_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?transit_gateway_attachment_id:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?transit_gateway_attachment_id:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
