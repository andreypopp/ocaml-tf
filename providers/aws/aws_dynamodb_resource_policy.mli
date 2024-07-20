(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dynamodb_resource_policy

val aws_dynamodb_resource_policy :
  ?confirm_remove_self_resource_access:bool prop ->
  policy:string prop ->
  resource_arn:string prop ->
  unit ->
  aws_dynamodb_resource_policy

val yojson_of_aws_dynamodb_resource_policy :
  aws_dynamodb_resource_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  confirm_remove_self_resource_access : bool prop;
  id : string prop;
  policy : string prop;
  resource_arn : string prop;
  revision_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?confirm_remove_self_resource_access:bool prop ->
  policy:string prop ->
  resource_arn:string prop ->
  string ->
  t

val make :
  ?confirm_remove_self_resource_access:bool prop ->
  policy:string prop ->
  resource_arn:string prop ->
  string ->
  t Tf_core.resource
