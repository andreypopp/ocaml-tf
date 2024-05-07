(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_directory_service_log_subscription

val aws_directory_service_log_subscription :
  ?id:string prop ->
  directory_id:string prop ->
  log_group_name:string prop ->
  unit ->
  aws_directory_service_log_subscription

val yojson_of_aws_directory_service_log_subscription :
  aws_directory_service_log_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  directory_id : string prop;
  id : string prop;
  log_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  directory_id:string prop ->
  log_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  directory_id:string prop ->
  log_group_name:string prop ->
  string ->
  t Tf_core.resource
