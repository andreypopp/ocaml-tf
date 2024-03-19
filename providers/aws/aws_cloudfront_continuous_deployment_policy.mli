(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type staging_distribution_dns_names

val staging_distribution_dns_names :
  ?items:string prop list ->
  quantity:float prop ->
  unit ->
  staging_distribution_dns_names

type traffic_config__single_header_config

val traffic_config__single_header_config :
  header:string prop ->
  value:string prop ->
  unit ->
  traffic_config__single_header_config

type traffic_config__single_weight_config__session_stickiness_config

val traffic_config__single_weight_config__session_stickiness_config :
  idle_ttl:float prop ->
  maximum_ttl:float prop ->
  unit ->
  traffic_config__single_weight_config__session_stickiness_config

type traffic_config__single_weight_config

val traffic_config__single_weight_config :
  weight:float prop ->
  session_stickiness_config:
    traffic_config__single_weight_config__session_stickiness_config
    list ->
  unit ->
  traffic_config__single_weight_config

type traffic_config

val traffic_config :
  type_:string prop ->
  single_header_config:traffic_config__single_header_config list ->
  single_weight_config:traffic_config__single_weight_config list ->
  unit ->
  traffic_config

type aws_cloudfront_continuous_deployment_policy

val aws_cloudfront_continuous_deployment_policy :
  enabled:bool prop ->
  staging_distribution_dns_names:staging_distribution_dns_names list ->
  traffic_config:traffic_config list ->
  unit ->
  aws_cloudfront_continuous_deployment_policy

val yojson_of_aws_cloudfront_continuous_deployment_policy :
  aws_cloudfront_continuous_deployment_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enabled : bool prop;
  etag : string prop;
  id : string prop;
  last_modified_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  enabled:bool prop ->
  staging_distribution_dns_names:staging_distribution_dns_names list ->
  traffic_config:traffic_config list ->
  string ->
  t
