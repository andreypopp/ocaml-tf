(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_event_connection

val aws_cloudwatch_event_connection :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_cloudwatch_event_connection

val yojson_of_aws_cloudwatch_event_connection :
  aws_cloudwatch_event_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  authorization_type : string prop;
  id : string prop;
  name : string prop;
  secret_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
