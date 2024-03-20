(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_s3control_access_grants_instance_resource_policy

val aws_s3control_access_grants_instance_resource_policy :
  ?account_id:string prop ->
  policy:string prop ->
  unit ->
  aws_s3control_access_grants_instance_resource_policy

val yojson_of_aws_s3control_access_grants_instance_resource_policy :
  aws_s3control_access_grants_instance_resource_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource
