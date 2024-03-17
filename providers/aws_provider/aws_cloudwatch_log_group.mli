(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_log_group

val aws_cloudwatch_log_group :
  ?kms_key_id:string ->
  ?retention_in_days:float ->
  ?skip_destroy:bool ->
  ?tags:(string * string) list ->
  string ->
  unit
