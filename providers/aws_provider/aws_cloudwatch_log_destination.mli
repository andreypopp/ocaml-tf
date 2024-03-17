(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_log_destination

val aws_cloudwatch_log_destination :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  role_arn:string prop ->
  target_arn:string prop ->
  string ->
  unit
