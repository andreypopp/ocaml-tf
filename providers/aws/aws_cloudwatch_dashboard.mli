(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_dashboard

val aws_cloudwatch_dashboard :
  ?id:string prop ->
  dashboard_body:string prop ->
  dashboard_name:string prop ->
  unit ->
  aws_cloudwatch_dashboard

val yojson_of_aws_cloudwatch_dashboard :
  aws_cloudwatch_dashboard -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dashboard_arn : string prop;
  dashboard_body : string prop;
  dashboard_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  dashboard_body:string prop ->
  dashboard_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  dashboard_body:string prop ->
  dashboard_name:string prop ->
  string ->
  t Tf_core.resource
