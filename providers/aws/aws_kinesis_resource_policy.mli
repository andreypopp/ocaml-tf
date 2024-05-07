(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_kinesis_resource_policy

val aws_kinesis_resource_policy :
  policy:string prop ->
  resource_arn:string prop ->
  unit ->
  aws_kinesis_resource_policy

val yojson_of_aws_kinesis_resource_policy :
  aws_kinesis_resource_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  policy : string prop;
  resource_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  policy:string prop ->
  resource_arn:string prop ->
  string ->
  t

val make :
  policy:string prop ->
  resource_arn:string prop ->
  string ->
  t Tf_core.resource
