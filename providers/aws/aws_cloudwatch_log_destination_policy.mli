(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_log_destination_policy

val aws_cloudwatch_log_destination_policy :
  ?force_update:bool prop ->
  ?id:string prop ->
  access_policy:string prop ->
  destination_name:string prop ->
  unit ->
  aws_cloudwatch_log_destination_policy

val yojson_of_aws_cloudwatch_log_destination_policy :
  aws_cloudwatch_log_destination_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_policy : string prop;
  destination_name : string prop;
  force_update : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_update:bool prop ->
  ?id:string prop ->
  access_policy:string prop ->
  destination_name:string prop ->
  string ->
  t

val make :
  ?force_update:bool prop ->
  ?id:string prop ->
  access_policy:string prop ->
  destination_name:string prop ->
  string ->
  t Tf_core.resource
