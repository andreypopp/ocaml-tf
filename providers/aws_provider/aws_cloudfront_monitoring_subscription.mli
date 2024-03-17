(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_monitoring_subscription__monitoring_subscription__realtime_metrics_subscription_config

type aws_cloudfront_monitoring_subscription__monitoring_subscription
type aws_cloudfront_monitoring_subscription

val aws_cloudfront_monitoring_subscription :
  ?id:string prop ->
  distribution_id:string prop ->
  monitoring_subscription:
    aws_cloudfront_monitoring_subscription__monitoring_subscription
    list ->
  string ->
  unit
