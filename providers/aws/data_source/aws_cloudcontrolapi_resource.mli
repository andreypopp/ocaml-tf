(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudcontrolapi_resource

val aws_cloudcontrolapi_resource :
  ?id:string prop ->
  ?role_arn:string prop ->
  ?type_version_id:string prop ->
  identifier:string prop ->
  type_name:string prop ->
  unit ->
  aws_cloudcontrolapi_resource

val yojson_of_aws_cloudcontrolapi_resource :
  aws_cloudcontrolapi_resource -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  identifier : string prop;
  properties : string prop;
  role_arn : string prop;
  type_name : string prop;
  type_version_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?role_arn:string prop ->
  ?type_version_id:string prop ->
  identifier:string prop ->
  type_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?role_arn:string prop ->
  ?type_version_id:string prop ->
  identifier:string prop ->
  type_name:string prop ->
  string ->
  t Tf_core.resource
