(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_route_table

type t = private {
  arn : string prop;
  default_association_route_table : bool prop;
  default_propagation_route_table : bool prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_id : string prop;
}

val aws_ec2_transit_gateway_route_table :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  transit_gateway_id:string prop ->
  string ->
  t
