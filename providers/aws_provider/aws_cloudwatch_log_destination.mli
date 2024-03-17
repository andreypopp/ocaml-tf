(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_log_destination

val aws_cloudwatch_log_destination :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  role_arn:string ->
  target_arn:string ->
  string ->
  unit
