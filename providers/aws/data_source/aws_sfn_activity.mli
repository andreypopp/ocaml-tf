(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sfn_activity

val aws_sfn_activity :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  unit ->
  aws_sfn_activity

val yojson_of_aws_sfn_activity : aws_sfn_activity -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  creation_date : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
