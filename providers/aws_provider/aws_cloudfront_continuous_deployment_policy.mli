(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_continuous_deployment_policy__staging_distribution_dns_names

type aws_cloudfront_continuous_deployment_policy__traffic_config__single_header_config

type aws_cloudfront_continuous_deployment_policy__traffic_config__single_weight_config__session_stickiness_config

type aws_cloudfront_continuous_deployment_policy__traffic_config__single_weight_config

type aws_cloudfront_continuous_deployment_policy__traffic_config
type aws_cloudfront_continuous_deployment_policy

val aws_cloudfront_continuous_deployment_policy :
  enabled:bool prop ->
  staging_distribution_dns_names:
    aws_cloudfront_continuous_deployment_policy__staging_distribution_dns_names
    list ->
  traffic_config:
    aws_cloudfront_continuous_deployment_policy__traffic_config list ->
  string ->
  unit
