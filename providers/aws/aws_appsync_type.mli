(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appsync_type

val aws_appsync_type :
  ?id:string prop ->
  api_id:string prop ->
  definition:string prop ->
  format:string prop ->
  unit ->
  aws_appsync_type

val yojson_of_aws_appsync_type : aws_appsync_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_id : string prop;
  arn : string prop;
  definition : string prop;
  description : string prop;
  format : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  api_id:string prop ->
  definition:string prop ->
  format:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  api_id:string prop ->
  definition:string prop ->
  format:string prop ->
  string ->
  t Tf_core.resource
