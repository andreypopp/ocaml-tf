(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_realtime_log_config__endpoint__kinesis_stream_config

type aws_cloudfront_realtime_log_config__endpoint
type aws_cloudfront_realtime_log_config

val aws_cloudfront_realtime_log_config :
  ?id:string prop ->
  fields:string prop list ->
  name:string prop ->
  sampling_rate:float prop ->
  endpoint:aws_cloudfront_realtime_log_config__endpoint list ->
  string ->
  unit
