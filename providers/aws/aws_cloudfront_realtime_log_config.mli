(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint__kinesis_stream_config

val endpoint__kinesis_stream_config :
  role_arn:string prop ->
  stream_arn:string prop ->
  unit ->
  endpoint__kinesis_stream_config

type endpoint

val endpoint :
  stream_type:string prop ->
  kinesis_stream_config:endpoint__kinesis_stream_config list ->
  unit ->
  endpoint

type aws_cloudfront_realtime_log_config

val aws_cloudfront_realtime_log_config :
  ?id:string prop ->
  fields:string prop list ->
  name:string prop ->
  sampling_rate:float prop ->
  endpoint:endpoint list ->
  unit ->
  aws_cloudfront_realtime_log_config

val yojson_of_aws_cloudfront_realtime_log_config :
  aws_cloudfront_realtime_log_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  fields : string list prop;
  id : string prop;
  name : string prop;
  sampling_rate : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  fields:string prop list ->
  name:string prop ->
  sampling_rate:float prop ->
  endpoint:endpoint list ->
  string ->
  t

val make :
  ?id:string prop ->
  fields:string prop list ->
  name:string prop ->
  sampling_rate:float prop ->
  endpoint:endpoint list ->
  string ->
  t Tf_core.resource
