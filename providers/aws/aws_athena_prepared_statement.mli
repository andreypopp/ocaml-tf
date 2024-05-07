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

type aws_athena_prepared_statement

val aws_athena_prepared_statement :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  query_statement:string prop ->
  workgroup:string prop ->
  unit ->
  aws_athena_prepared_statement

val yojson_of_aws_athena_prepared_statement :
  aws_athena_prepared_statement -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  query_statement : string prop;
  workgroup : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  query_statement:string prop ->
  workgroup:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  query_statement:string prop ->
  workgroup:string prop ->
  string ->
  t Tf_core.resource
