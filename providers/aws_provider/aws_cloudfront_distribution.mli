(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_distribution__custom_error_response

type aws_cloudfront_distribution__default_cache_behavior__forwarded_values__cookies

type aws_cloudfront_distribution__default_cache_behavior__forwarded_values

type aws_cloudfront_distribution__default_cache_behavior__function_association

type aws_cloudfront_distribution__default_cache_behavior__lambda_function_association

type aws_cloudfront_distribution__default_cache_behavior
type aws_cloudfront_distribution__logging_config

type aws_cloudfront_distribution__ordered_cache_behavior__forwarded_values__cookies

type aws_cloudfront_distribution__ordered_cache_behavior__forwarded_values

type aws_cloudfront_distribution__ordered_cache_behavior__function_association

type aws_cloudfront_distribution__ordered_cache_behavior__lambda_function_association

type aws_cloudfront_distribution__ordered_cache_behavior
type aws_cloudfront_distribution__origin__custom_header
type aws_cloudfront_distribution__origin__custom_origin_config
type aws_cloudfront_distribution__origin__origin_shield
type aws_cloudfront_distribution__origin__s3_origin_config
type aws_cloudfront_distribution__origin
type aws_cloudfront_distribution__origin_group__failover_criteria
type aws_cloudfront_distribution__origin_group__member
type aws_cloudfront_distribution__origin_group
type aws_cloudfront_distribution__restrictions__geo_restriction
type aws_cloudfront_distribution__restrictions
type aws_cloudfront_distribution__viewer_certificate

type aws_cloudfront_distribution__trusted_key_groups__items = {
  key_group_id : string;  (** key_group_id *)
  key_pair_ids : string list;  (** key_pair_ids *)
}

type aws_cloudfront_distribution__trusted_key_groups = {
  enabled : bool;  (** enabled *)
  items : aws_cloudfront_distribution__trusted_key_groups__items list;
      (** items *)
}

type aws_cloudfront_distribution__trusted_signers__items = {
  aws_account_number : string;  (** aws_account_number *)
  key_pair_ids : string list;  (** key_pair_ids *)
}

type aws_cloudfront_distribution__trusted_signers = {
  enabled : bool;  (** enabled *)
  items : aws_cloudfront_distribution__trusted_signers__items list;
      (** items *)
}

type aws_cloudfront_distribution

val aws_cloudfront_distribution :
  ?aliases:string list ->
  ?comment:string ->
  ?continuous_deployment_policy_id:string ->
  ?default_root_object:string ->
  ?http_version:string ->
  ?id:string ->
  ?is_ipv6_enabled:bool ->
  ?price_class:string ->
  ?retain_on_delete:bool ->
  ?staging:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?wait_for_deployment:bool ->
  ?web_acl_id:string ->
  enabled:bool ->
  custom_error_response:
    aws_cloudfront_distribution__custom_error_response list ->
  default_cache_behavior:
    aws_cloudfront_distribution__default_cache_behavior list ->
  logging_config:aws_cloudfront_distribution__logging_config list ->
  ordered_cache_behavior:
    aws_cloudfront_distribution__ordered_cache_behavior list ->
  origin:aws_cloudfront_distribution__origin list ->
  origin_group:aws_cloudfront_distribution__origin_group list ->
  restrictions:aws_cloudfront_distribution__restrictions list ->
  viewer_certificate:
    aws_cloudfront_distribution__viewer_certificate list ->
  string ->
  unit
