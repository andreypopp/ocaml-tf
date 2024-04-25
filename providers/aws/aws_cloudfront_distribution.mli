(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type trusted_key_groups__items = {
  key_group_id : string prop;  (** key_group_id *)
  key_pair_ids : string prop list;  (** key_pair_ids *)
}

type trusted_key_groups = {
  enabled : bool prop;  (** enabled *)
  items : trusted_key_groups__items list;  (** items *)
}

type trusted_signers__items = {
  aws_account_number : string prop;  (** aws_account_number *)
  key_pair_ids : string prop list;  (** key_pair_ids *)
}

type trusted_signers = {
  enabled : bool prop;  (** enabled *)
  items : trusted_signers__items list;  (** items *)
}

type custom_error_response

val custom_error_response :
  ?error_caching_min_ttl:float prop ->
  ?response_code:float prop ->
  ?response_page_path:string prop ->
  error_code:float prop ->
  unit ->
  custom_error_response

type default_cache_behavior__forwarded_values__cookies

val default_cache_behavior__forwarded_values__cookies :
  ?whitelisted_names:string prop list ->
  forward:string prop ->
  unit ->
  default_cache_behavior__forwarded_values__cookies

type default_cache_behavior__forwarded_values

val default_cache_behavior__forwarded_values :
  ?headers:string prop list ->
  ?query_string_cache_keys:string prop list ->
  query_string:bool prop ->
  cookies:default_cache_behavior__forwarded_values__cookies list ->
  unit ->
  default_cache_behavior__forwarded_values

type default_cache_behavior__function_association

val default_cache_behavior__function_association :
  event_type:string prop ->
  function_arn:string prop ->
  unit ->
  default_cache_behavior__function_association

type default_cache_behavior__lambda_function_association

val default_cache_behavior__lambda_function_association :
  ?include_body:bool prop ->
  event_type:string prop ->
  lambda_arn:string prop ->
  unit ->
  default_cache_behavior__lambda_function_association

type default_cache_behavior

val default_cache_behavior :
  ?cache_policy_id:string prop ->
  ?compress:bool prop ->
  ?default_ttl:float prop ->
  ?field_level_encryption_id:string prop ->
  ?max_ttl:float prop ->
  ?min_ttl:float prop ->
  ?origin_request_policy_id:string prop ->
  ?realtime_log_config_arn:string prop ->
  ?response_headers_policy_id:string prop ->
  ?smooth_streaming:bool prop ->
  ?trusted_key_groups:string prop list ->
  ?trusted_signers:string prop list ->
  ?forwarded_values:default_cache_behavior__forwarded_values list ->
  allowed_methods:string prop list ->
  cached_methods:string prop list ->
  target_origin_id:string prop ->
  viewer_protocol_policy:string prop ->
  function_association:
    default_cache_behavior__function_association list ->
  lambda_function_association:
    default_cache_behavior__lambda_function_association list ->
  unit ->
  default_cache_behavior

type logging_config

val logging_config :
  ?include_cookies:bool prop ->
  ?prefix:string prop ->
  bucket:string prop ->
  unit ->
  logging_config

type ordered_cache_behavior__forwarded_values__cookies

val ordered_cache_behavior__forwarded_values__cookies :
  ?whitelisted_names:string prop list ->
  forward:string prop ->
  unit ->
  ordered_cache_behavior__forwarded_values__cookies

type ordered_cache_behavior__forwarded_values

val ordered_cache_behavior__forwarded_values :
  ?headers:string prop list ->
  ?query_string_cache_keys:string prop list ->
  query_string:bool prop ->
  cookies:ordered_cache_behavior__forwarded_values__cookies list ->
  unit ->
  ordered_cache_behavior__forwarded_values

type ordered_cache_behavior__function_association

val ordered_cache_behavior__function_association :
  event_type:string prop ->
  function_arn:string prop ->
  unit ->
  ordered_cache_behavior__function_association

type ordered_cache_behavior__lambda_function_association

val ordered_cache_behavior__lambda_function_association :
  ?include_body:bool prop ->
  event_type:string prop ->
  lambda_arn:string prop ->
  unit ->
  ordered_cache_behavior__lambda_function_association

type ordered_cache_behavior

val ordered_cache_behavior :
  ?cache_policy_id:string prop ->
  ?compress:bool prop ->
  ?default_ttl:float prop ->
  ?field_level_encryption_id:string prop ->
  ?max_ttl:float prop ->
  ?min_ttl:float prop ->
  ?origin_request_policy_id:string prop ->
  ?realtime_log_config_arn:string prop ->
  ?response_headers_policy_id:string prop ->
  ?smooth_streaming:bool prop ->
  ?trusted_key_groups:string prop list ->
  ?trusted_signers:string prop list ->
  ?forwarded_values:ordered_cache_behavior__forwarded_values list ->
  allowed_methods:string prop list ->
  cached_methods:string prop list ->
  path_pattern:string prop ->
  target_origin_id:string prop ->
  viewer_protocol_policy:string prop ->
  function_association:
    ordered_cache_behavior__function_association list ->
  lambda_function_association:
    ordered_cache_behavior__lambda_function_association list ->
  unit ->
  ordered_cache_behavior

type origin__custom_header

val origin__custom_header :
  name:string prop ->
  value:string prop ->
  unit ->
  origin__custom_header

type origin__custom_origin_config

val origin__custom_origin_config :
  ?origin_keepalive_timeout:float prop ->
  ?origin_read_timeout:float prop ->
  http_port:float prop ->
  https_port:float prop ->
  origin_protocol_policy:string prop ->
  origin_ssl_protocols:string prop list ->
  unit ->
  origin__custom_origin_config

type origin__origin_shield

val origin__origin_shield :
  ?origin_shield_region:string prop ->
  enabled:bool prop ->
  unit ->
  origin__origin_shield

type origin__s3_origin_config

val origin__s3_origin_config :
  origin_access_identity:string prop ->
  unit ->
  origin__s3_origin_config

type origin

val origin :
  ?connection_attempts:float prop ->
  ?connection_timeout:float prop ->
  ?origin_access_control_id:string prop ->
  ?origin_path:string prop ->
  ?custom_origin_config:origin__custom_origin_config list ->
  ?origin_shield:origin__origin_shield list ->
  ?s3_origin_config:origin__s3_origin_config list ->
  domain_name:string prop ->
  origin_id:string prop ->
  custom_header:origin__custom_header list ->
  unit ->
  origin

type origin_group__failover_criteria

val origin_group__failover_criteria :
  status_codes:float prop list ->
  unit ->
  origin_group__failover_criteria

type origin_group__member

val origin_group__member :
  origin_id:string prop -> unit -> origin_group__member

type origin_group

val origin_group :
  origin_id:string prop ->
  failover_criteria:origin_group__failover_criteria list ->
  member:origin_group__member list ->
  unit ->
  origin_group

type restrictions__geo_restriction

val restrictions__geo_restriction :
  ?locations:string prop list ->
  restriction_type:string prop ->
  unit ->
  restrictions__geo_restriction

type restrictions

val restrictions :
  geo_restriction:restrictions__geo_restriction list ->
  unit ->
  restrictions

type viewer_certificate

val viewer_certificate :
  ?acm_certificate_arn:string prop ->
  ?cloudfront_default_certificate:bool prop ->
  ?iam_certificate_id:string prop ->
  ?minimum_protocol_version:string prop ->
  ?ssl_support_method:string prop ->
  unit ->
  viewer_certificate

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
  ?logging_config:logging_config list ->
  ?ordered_cache_behavior:ordered_cache_behavior list ->
  enabled:bool prop ->
  custom_error_response:custom_error_response list ->
  default_cache_behavior:default_cache_behavior list ->
  origin:origin list ->
  origin_group:origin_group list ->
  restrictions:restrictions list ->
  viewer_certificate:viewer_certificate list ->
  unit ->
  aws_cloudfront_distribution

val yojson_of_aws_cloudfront_distribution :
  aws_cloudfront_distribution -> json

(** RESOURCE REGISTRATION *)

type t = private {
  aliases : string list prop;
  arn : string prop;
  caller_reference : string prop;
  comment : string prop;
  continuous_deployment_policy_id : string prop;
  default_root_object : string prop;
  domain_name : string prop;
  enabled : bool prop;
  etag : string prop;
  hosted_zone_id : string prop;
  http_version : string prop;
  id : string prop;
  in_progress_validation_batches : float prop;
  is_ipv6_enabled : bool prop;
  last_modified_time : string prop;
  price_class : string prop;
  retain_on_delete : bool prop;
  staging : bool prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  trusted_key_groups : trusted_key_groups list prop;
  trusted_signers : trusted_signers list prop;
  wait_for_deployment : bool prop;
  web_acl_id : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?logging_config:logging_config list ->
  ?ordered_cache_behavior:ordered_cache_behavior list ->
  enabled:bool prop ->
  custom_error_response:custom_error_response list ->
  default_cache_behavior:default_cache_behavior list ->
  origin:origin list ->
  origin_group:origin_group list ->
  restrictions:restrictions list ->
  viewer_certificate:viewer_certificate list ->
  string ->
  t

val make :
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
  ?logging_config:logging_config list ->
  ?ordered_cache_behavior:ordered_cache_behavior list ->
  enabled:bool prop ->
  custom_error_response:custom_error_response list ->
  default_cache_behavior:default_cache_behavior list ->
  origin:origin list ->
  origin_group:origin_group list ->
  restrictions:restrictions list ->
  viewer_certificate:viewer_certificate list ->
  string ->
  t Tf_core.resource
