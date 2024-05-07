(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type monitoring_subscription__realtime_metrics_subscription_config

val monitoring_subscription__realtime_metrics_subscription_config :
  realtime_metrics_subscription_status:string prop ->
  unit ->
  monitoring_subscription__realtime_metrics_subscription_config

type monitoring_subscription

val monitoring_subscription :
  realtime_metrics_subscription_config:
    monitoring_subscription__realtime_metrics_subscription_config
    list ->
  unit ->
  monitoring_subscription

type aws_cloudfront_monitoring_subscription

val aws_cloudfront_monitoring_subscription :
  ?id:string prop ->
  distribution_id:string prop ->
  monitoring_subscription:monitoring_subscription list ->
  unit ->
  aws_cloudfront_monitoring_subscription

val yojson_of_aws_cloudfront_monitoring_subscription :
  aws_cloudfront_monitoring_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  distribution_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  distribution_id:string prop ->
  monitoring_subscription:monitoring_subscription list ->
  string ->
  t

val make :
  ?id:string prop ->
  distribution_id:string prop ->
  monitoring_subscription:monitoring_subscription list ->
  string ->
  t Tf_core.resource
