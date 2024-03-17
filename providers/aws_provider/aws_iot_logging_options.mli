(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_logging_options

val aws_iot_logging_options :
  ?disable_all_logs:bool prop ->
  ?id:string prop ->
  default_log_level:string prop ->
  role_arn:string prop ->
  string ->
  unit
