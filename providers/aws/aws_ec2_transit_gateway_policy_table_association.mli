(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_transit_gateway_policy_table_association

val aws_ec2_transit_gateway_policy_table_association :
  ?id:string prop ->
  transit_gateway_attachment_id:string prop ->
  transit_gateway_policy_table_id:string prop ->
  unit ->
  aws_ec2_transit_gateway_policy_table_association

val yojson_of_aws_ec2_transit_gateway_policy_table_association :
  aws_ec2_transit_gateway_policy_table_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  resource_id : string prop;
  resource_type : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_policy_table_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  transit_gateway_attachment_id:string prop ->
  transit_gateway_policy_table_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  transit_gateway_attachment_id:string prop ->
  transit_gateway_policy_table_id:string prop ->
  string ->
  t Tf_core.resource
