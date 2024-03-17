(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_realtime_log_config__endpoint__kinesis_stream_config

type aws_cloudfront_realtime_log_config__endpoint
type aws_cloudfront_realtime_log_config

val aws_cloudfront_realtime_log_config :
  ?id:string ->
  fields:string list ->
  name:string ->
  sampling_rate:float ->
  endpoint:aws_cloudfront_realtime_log_config__endpoint list ->
  string ->
  unit
