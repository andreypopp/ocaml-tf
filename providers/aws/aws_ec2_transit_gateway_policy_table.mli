(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_transit_gateway_policy_table

val aws_ec2_transit_gateway_policy_table :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  transit_gateway_id:string prop ->
  unit ->
  aws_ec2_transit_gateway_policy_table

val yojson_of_aws_ec2_transit_gateway_policy_table :
  aws_ec2_transit_gateway_policy_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  state : string prop;
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

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  transit_gateway_id:string prop ->
  string ->
  t Tf_core.resource
