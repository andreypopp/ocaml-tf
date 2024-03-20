(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iot_logging_options

val aws_iot_logging_options :
  ?disable_all_logs:bool prop ->
  ?id:string prop ->
  default_log_level:string prop ->
  role_arn:string prop ->
  unit ->
  aws_iot_logging_options

val yojson_of_aws_iot_logging_options :
  aws_iot_logging_options -> json

(** RESOURCE REGISTRATION *)

type t = private {
  default_log_level : string prop;
  disable_all_logs : bool prop;
  id : string prop;
  role_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disable_all_logs:bool prop ->
  ?id:string prop ->
  default_log_level:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
  ?disable_all_logs:bool prop ->
  ?id:string prop ->
  default_log_level:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource
