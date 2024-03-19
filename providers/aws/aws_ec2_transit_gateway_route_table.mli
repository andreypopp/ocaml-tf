(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ec2_transit_gateway_route_table

val aws_ec2_transit_gateway_route_table :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  transit_gateway_id:string prop ->
  unit ->
  aws_ec2_transit_gateway_route_table

val yojson_of_aws_ec2_transit_gateway_route_table :
  aws_ec2_transit_gateway_route_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  default_association_route_table : bool prop;
  default_propagation_route_table : bool prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  transit_gateway_id:string prop ->
  string ->
  t
