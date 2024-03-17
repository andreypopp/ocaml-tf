(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_log_destination_policy

type t = private {
  access_policy : string prop;
  destination_name : string prop;
  force_update : bool prop;
  id : string prop;
}

val aws_cloudwatch_log_destination_policy :
  ?force_update:bool prop ->
  ?id:string prop ->
  access_policy:string prop ->
  destination_name:string prop ->
  string ->
  t
