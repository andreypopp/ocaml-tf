(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_logging_options

type t = private {
  default_log_level : string prop;
  disable_all_logs : bool prop;
  id : string prop;
  role_arn : string prop;
}

val aws_iot_logging_options :
  ?disable_all_logs:bool prop ->
  ?id:string prop ->
  default_log_level:string prop ->
  role_arn:string prop ->
  string ->
  t
