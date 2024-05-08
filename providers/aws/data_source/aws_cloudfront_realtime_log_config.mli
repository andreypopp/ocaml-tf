(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint__kinesis_stream_config = {
  role_arn : string prop;  (** role_arn *)
  stream_arn : string prop;  (** stream_arn *)
}

type endpoint = {
  kinesis_stream_config : endpoint__kinesis_stream_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** kinesis_stream_config *)
  stream_type : string prop;  (** stream_type *)
}

type aws_cloudfront_realtime_log_config

val aws_cloudfront_realtime_log_config :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_cloudfront_realtime_log_config

val yojson_of_aws_cloudfront_realtime_log_config :
  aws_cloudfront_realtime_log_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  endpoint : endpoint list prop;
  fields : string list prop;
  id : string prop;
  name : string prop;
  sampling_rate : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
