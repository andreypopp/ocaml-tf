(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_log_subscription

type t = private {
  directory_id : string prop;
  id : string prop;
  log_group_name : string prop;
}

val aws_directory_service_log_subscription :
  ?id:string prop ->
  directory_id:string prop ->
  log_group_name:string prop ->
  string ->
  t
