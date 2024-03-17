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
  key_group_id : string prop;  (** key_group_id *)
  key_pair_ids : string prop list;  (** key_pair_ids *)
}

type aws_cloudfront_distribution__trusted_key_groups = {
  enabled : bool prop;  (** enabled *)
  items : aws_cloudfront_distribution__trusted_key_groups__items list;
      (** items *)
}

type aws_cloudfront_distribution__trusted_signers__items = {
  aws_account_number : string prop;  (** aws_account_number *)
  key_pair_ids : string prop list;  (** key_pair_ids *)
}

type aws_cloudfront_distribution__trusted_signers = {
  enabled : bool prop;  (** enabled *)
  items : aws_cloudfront_distribution__trusted_signers__items list;
      (** items *)
}

type aws_cloudfront_distribution

val aws_cloudfront_distribution :
  ?aliases:string prop list ->
  ?comment:string prop ->
  ?continuous_deployment_policy_id:string prop ->
  ?default_root_object:string prop ->
  ?http_version:string prop ->
  ?id:string prop ->
  ?is_ipv6_enabled:bool prop ->
  ?price_class:string prop ->
  ?retain_on_delete:bool prop ->
  ?staging:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?wait_for_deployment:bool prop ->
  ?web_acl_id:string prop ->
  enabled:bool prop ->
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
