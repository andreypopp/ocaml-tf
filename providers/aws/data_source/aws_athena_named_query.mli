(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_athena_named_query

val aws_athena_named_query :
  ?id:string prop ->
  ?workgroup:string prop ->
  name:string prop ->
  unit ->
  aws_athena_named_query

val yojson_of_aws_athena_named_query : aws_athena_named_query -> json

(** RESOURCE REGISTRATION *)

type t = private {
  database : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  querystring : string prop;
  workgroup : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?workgroup:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?workgroup:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
