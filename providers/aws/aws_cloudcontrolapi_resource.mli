(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_cloudcontrolapi_resource

val aws_cloudcontrolapi_resource :
  ?id:string prop ->
  ?role_arn:string prop ->
  ?schema:string prop ->
  ?type_version_id:string prop ->
  ?timeouts:timeouts ->
  desired_state:string prop ->
  type_name:string prop ->
  unit ->
  aws_cloudcontrolapi_resource

val yojson_of_aws_cloudcontrolapi_resource :
  aws_cloudcontrolapi_resource -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  desired_state : string prop;
  id : string prop;
  properties : string prop;
  role_arn : string prop;
  schema : string prop;
  type_name : string prop;
  type_version_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?role_arn:string prop ->
  ?schema:string prop ->
  ?type_version_id:string prop ->
  ?timeouts:timeouts ->
  desired_state:string prop ->
  type_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?role_arn:string prop ->
  ?schema:string prop ->
  ?type_version_id:string prop ->
  ?timeouts:timeouts ->
  desired_state:string prop ->
  type_name:string prop ->
  string ->
  t Tf_core.resource
