(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_distribution__custom_error_response = {
  error_caching_min_ttl : float prop option; [@option]
      (** error_caching_min_ttl *)
  error_code : float prop;  (** error_code *)
  response_code : float prop option; [@option]  (** response_code *)
  response_page_path : string prop option; [@option]
      (** response_page_path *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__custom_error_response *)

type aws_cloudfront_distribution__default_cache_behavior__forwarded_values__cookies = {
  forward : string prop;  (** forward *)
  whitelisted_names : string prop list option; [@option]
      (** whitelisted_names *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__default_cache_behavior__forwarded_values__cookies *)

type aws_cloudfront_distribution__default_cache_behavior__forwarded_values = {
  headers : string prop list option; [@option]  (** headers *)
  query_string : bool prop;  (** query_string *)
  query_string_cache_keys : string prop list option; [@option]
      (** query_string_cache_keys *)
  cookies :
    aws_cloudfront_distribution__default_cache_behavior__forwarded_values__cookies
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__default_cache_behavior__forwarded_values *)

type aws_cloudfront_distribution__default_cache_behavior__function_association = {
  event_type : string prop;  (** event_type *)
  function_arn : string prop;  (** function_arn *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__default_cache_behavior__function_association *)

type aws_cloudfront_distribution__default_cache_behavior__lambda_function_association = {
  event_type : string prop;  (** event_type *)
  include_body : bool prop option; [@option]  (** include_body *)
  lambda_arn : string prop;  (** lambda_arn *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__default_cache_behavior__lambda_function_association *)

type aws_cloudfront_distribution__default_cache_behavior = {
  allowed_methods : string prop list;  (** allowed_methods *)
  cache_policy_id : string prop option; [@option]
      (** cache_policy_id *)
  cached_methods : string prop list;  (** cached_methods *)
  compress : bool prop option; [@option]  (** compress *)
  default_ttl : float prop option; [@option]  (** default_ttl *)
  field_level_encryption_id : string prop option; [@option]
      (** field_level_encryption_id *)
  max_ttl : float prop option; [@option]  (** max_ttl *)
  min_ttl : float prop option; [@option]  (** min_ttl *)
  origin_request_policy_id : string prop option; [@option]
      (** origin_request_policy_id *)
  realtime_log_config_arn : string prop option; [@option]
      (** realtime_log_config_arn *)
  response_headers_policy_id : string prop option; [@option]
      (** response_headers_policy_id *)
  smooth_streaming : bool prop option; [@option]
      (** smooth_streaming *)
  target_origin_id : string prop;  (** target_origin_id *)
  trusted_key_groups : string prop list option; [@option]
      (** trusted_key_groups *)
  trusted_signers : string prop list option; [@option]
      (** trusted_signers *)
  viewer_protocol_policy : string prop;
      (** viewer_protocol_policy *)
  forwarded_values :
    aws_cloudfront_distribution__default_cache_behavior__forwarded_values
    list;
  function_association :
    aws_cloudfront_distribution__default_cache_behavior__function_association
    list;
  lambda_function_association :
    aws_cloudfront_distribution__default_cache_behavior__lambda_function_association
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__default_cache_behavior *)

type aws_cloudfront_distribution__logging_config = {
  bucket : string prop;  (** bucket *)
  include_cookies : bool prop option; [@option]
      (** include_cookies *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__logging_config *)

type aws_cloudfront_distribution__ordered_cache_behavior__forwarded_values__cookies = {
  forward : string prop;  (** forward *)
  whitelisted_names : string prop list option; [@option]
      (** whitelisted_names *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__ordered_cache_behavior__forwarded_values__cookies *)

type aws_cloudfront_distribution__ordered_cache_behavior__forwarded_values = {
  headers : string prop list option; [@option]  (** headers *)
  query_string : bool prop;  (** query_string *)
  query_string_cache_keys : string prop list option; [@option]
      (** query_string_cache_keys *)
  cookies :
    aws_cloudfront_distribution__ordered_cache_behavior__forwarded_values__cookies
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__ordered_cache_behavior__forwarded_values *)

type aws_cloudfront_distribution__ordered_cache_behavior__function_association = {
  event_type : string prop;  (** event_type *)
  function_arn : string prop;  (** function_arn *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__ordered_cache_behavior__function_association *)

type aws_cloudfront_distribution__ordered_cache_behavior__lambda_function_association = {
  event_type : string prop;  (** event_type *)
  include_body : bool prop option; [@option]  (** include_body *)
  lambda_arn : string prop;  (** lambda_arn *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__ordered_cache_behavior__lambda_function_association *)

type aws_cloudfront_distribution__ordered_cache_behavior = {
  allowed_methods : string prop list;  (** allowed_methods *)
  cache_policy_id : string prop option; [@option]
      (** cache_policy_id *)
  cached_methods : string prop list;  (** cached_methods *)
  compress : bool prop option; [@option]  (** compress *)
  default_ttl : float prop option; [@option]  (** default_ttl *)
  field_level_encryption_id : string prop option; [@option]
      (** field_level_encryption_id *)
  max_ttl : float prop option; [@option]  (** max_ttl *)
  min_ttl : float prop option; [@option]  (** min_ttl *)
  origin_request_policy_id : string prop option; [@option]
      (** origin_request_policy_id *)
  path_pattern : string prop;  (** path_pattern *)
  realtime_log_config_arn : string prop option; [@option]
      (** realtime_log_config_arn *)
  response_headers_policy_id : string prop option; [@option]
      (** response_headers_policy_id *)
  smooth_streaming : bool prop option; [@option]
      (** smooth_streaming *)
  target_origin_id : string prop;  (** target_origin_id *)
  trusted_key_groups : string prop list option; [@option]
      (** trusted_key_groups *)
  trusted_signers : string prop list option; [@option]
      (** trusted_signers *)
  viewer_protocol_policy : string prop;
      (** viewer_protocol_policy *)
  forwarded_values :
    aws_cloudfront_distribution__ordered_cache_behavior__forwarded_values
    list;
  function_association :
    aws_cloudfront_distribution__ordered_cache_behavior__function_association
    list;
  lambda_function_association :
    aws_cloudfront_distribution__ordered_cache_behavior__lambda_function_association
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__ordered_cache_behavior *)

type aws_cloudfront_distribution__origin__custom_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin__custom_header *)

type aws_cloudfront_distribution__origin__custom_origin_config = {
  http_port : float prop;  (** http_port *)
  https_port : float prop;  (** https_port *)
  origin_keepalive_timeout : float prop option; [@option]
      (** origin_keepalive_timeout *)
  origin_protocol_policy : string prop;
      (** origin_protocol_policy *)
  origin_read_timeout : float prop option; [@option]
      (** origin_read_timeout *)
  origin_ssl_protocols : string prop list;
      (** origin_ssl_protocols *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin__custom_origin_config *)

type aws_cloudfront_distribution__origin__origin_shield = {
  enabled : bool prop;  (** enabled *)
  origin_shield_region : string prop option; [@option]
      (** origin_shield_region *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin__origin_shield *)

type aws_cloudfront_distribution__origin__s3_origin_config = {
  origin_access_identity : string prop;  (** origin_access_identity *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin__s3_origin_config *)

type aws_cloudfront_distribution__origin = {
  connection_attempts : float prop option; [@option]
      (** connection_attempts *)
  connection_timeout : float prop option; [@option]
      (** connection_timeout *)
  domain_name : string prop;  (** domain_name *)
  origin_access_control_id : string prop option; [@option]
      (** origin_access_control_id *)
  origin_id : string prop;  (** origin_id *)
  origin_path : string prop option; [@option]  (** origin_path *)
  custom_header :
    aws_cloudfront_distribution__origin__custom_header list;
  custom_origin_config :
    aws_cloudfront_distribution__origin__custom_origin_config list;
  origin_shield :
    aws_cloudfront_distribution__origin__origin_shield list;
  s3_origin_config :
    aws_cloudfront_distribution__origin__s3_origin_config list;
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin *)

type aws_cloudfront_distribution__origin_group__failover_criteria = {
  status_codes : float prop list;  (** status_codes *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin_group__failover_criteria *)

type aws_cloudfront_distribution__origin_group__member = {
  origin_id : string prop;  (** origin_id *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin_group__member *)

type aws_cloudfront_distribution__origin_group = {
  origin_id : string prop;  (** origin_id *)
  failover_criteria :
    aws_cloudfront_distribution__origin_group__failover_criteria list;
  member : aws_cloudfront_distribution__origin_group__member list;
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin_group *)

type aws_cloudfront_distribution__restrictions__geo_restriction = {
  locations : string prop list option; [@option]  (** locations *)
  restriction_type : string prop;  (** restriction_type *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__restrictions__geo_restriction *)

type aws_cloudfront_distribution__restrictions = {
  geo_restriction :
    aws_cloudfront_distribution__restrictions__geo_restriction list;
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__restrictions *)

type aws_cloudfront_distribution__viewer_certificate = {
  acm_certificate_arn : string prop option; [@option]
      (** acm_certificate_arn *)
  cloudfront_default_certificate : bool prop option; [@option]
      (** cloudfront_default_certificate *)
  iam_certificate_id : string prop option; [@option]
      (** iam_certificate_id *)
  minimum_protocol_version : string prop option; [@option]
      (** minimum_protocol_version *)
  ssl_support_method : string prop option; [@option]
      (** ssl_support_method *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__viewer_certificate *)

type aws_cloudfront_distribution__trusted_key_groups__items = {
  key_group_id : string prop;  (** key_group_id *)
  key_pair_ids : string prop list;  (** key_pair_ids *)
}
[@@deriving yojson_of]

type aws_cloudfront_distribution__trusted_key_groups = {
  enabled : bool prop;  (** enabled *)
  items : aws_cloudfront_distribution__trusted_key_groups__items list;
      (** items *)
}
[@@deriving yojson_of]

type aws_cloudfront_distribution__trusted_signers__items = {
  aws_account_number : string prop;  (** aws_account_number *)
  key_pair_ids : string prop list;  (** key_pair_ids *)
}
[@@deriving yojson_of]

type aws_cloudfront_distribution__trusted_signers = {
  enabled : bool prop;  (** enabled *)
  items : aws_cloudfront_distribution__trusted_signers__items list;
      (** items *)
}
[@@deriving yojson_of]

type aws_cloudfront_distribution = {
  aliases : string prop list option; [@option]  (** aliases *)
  comment : string prop option; [@option]  (** comment *)
  continuous_deployment_policy_id : string prop option; [@option]
      (** continuous_deployment_policy_id *)
  default_root_object : string prop option; [@option]
      (** default_root_object *)
  enabled : bool prop;  (** enabled *)
  http_version : string prop option; [@option]  (** http_version *)
  id : string prop option; [@option]  (** id *)
  is_ipv6_enabled : bool prop option; [@option]
      (** is_ipv6_enabled *)
  price_class : string prop option; [@option]  (** price_class *)
  retain_on_delete : bool prop option; [@option]
      (** retain_on_delete *)
  staging : bool prop option; [@option]  (** staging *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  wait_for_deployment : bool prop option; [@option]
      (** wait_for_deployment *)
  web_acl_id : string prop option; [@option]  (** web_acl_id *)
  custom_error_response :
    aws_cloudfront_distribution__custom_error_response list;
  default_cache_behavior :
    aws_cloudfront_distribution__default_cache_behavior list;
  logging_config : aws_cloudfront_distribution__logging_config list;
  ordered_cache_behavior :
    aws_cloudfront_distribution__ordered_cache_behavior list;
  origin : aws_cloudfront_distribution__origin list;
  origin_group : aws_cloudfront_distribution__origin_group list;
  restrictions : aws_cloudfront_distribution__restrictions list;
  viewer_certificate :
    aws_cloudfront_distribution__viewer_certificate list;
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution *)

type t = {
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
  trusted_key_groups :
    aws_cloudfront_distribution__trusted_key_groups list prop;
  trusted_signers :
    aws_cloudfront_distribution__trusted_signers list prop;
  wait_for_deployment : bool prop;
  web_acl_id : string prop;
}

let aws_cloudfront_distribution ?aliases ?comment
    ?continuous_deployment_policy_id ?default_root_object
    ?http_version ?id ?is_ipv6_enabled ?price_class ?retain_on_delete
    ?staging ?tags ?tags_all ?wait_for_deployment ?web_acl_id
    ~enabled ~custom_error_response ~default_cache_behavior
    ~logging_config ~ordered_cache_behavior ~origin ~origin_group
    ~restrictions ~viewer_certificate __resource_id =
  let __resource_type = "aws_cloudfront_distribution" in
  let __resource =
    ({
       aliases;
       comment;
       continuous_deployment_policy_id;
       default_root_object;
       enabled;
       http_version;
       id;
       is_ipv6_enabled;
       price_class;
       retain_on_delete;
       staging;
       tags;
       tags_all;
       wait_for_deployment;
       web_acl_id;
       custom_error_response;
       default_cache_behavior;
       logging_config;
       ordered_cache_behavior;
       origin;
       origin_group;
       restrictions;
       viewer_certificate;
     }
      : aws_cloudfront_distribution)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_distribution __resource);
  let __resource_attributes =
    ({
       aliases =
         Prop.computed __resource_type __resource_id "aliases";
       arn = Prop.computed __resource_type __resource_id "arn";
       caller_reference =
         Prop.computed __resource_type __resource_id
           "caller_reference";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       continuous_deployment_policy_id =
         Prop.computed __resource_type __resource_id
           "continuous_deployment_policy_id";
       default_root_object =
         Prop.computed __resource_type __resource_id
           "default_root_object";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       etag = Prop.computed __resource_type __resource_id "etag";
       hosted_zone_id =
         Prop.computed __resource_type __resource_id "hosted_zone_id";
       http_version =
         Prop.computed __resource_type __resource_id "http_version";
       id = Prop.computed __resource_type __resource_id "id";
       in_progress_validation_batches =
         Prop.computed __resource_type __resource_id
           "in_progress_validation_batches";
       is_ipv6_enabled =
         Prop.computed __resource_type __resource_id
           "is_ipv6_enabled";
       last_modified_time =
         Prop.computed __resource_type __resource_id
           "last_modified_time";
       price_class =
         Prop.computed __resource_type __resource_id "price_class";
       retain_on_delete =
         Prop.computed __resource_type __resource_id
           "retain_on_delete";
       staging =
         Prop.computed __resource_type __resource_id "staging";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       trusted_key_groups =
         Prop.computed __resource_type __resource_id
           "trusted_key_groups";
       trusted_signers =
         Prop.computed __resource_type __resource_id
           "trusted_signers";
       wait_for_deployment =
         Prop.computed __resource_type __resource_id
           "wait_for_deployment";
       web_acl_id =
         Prop.computed __resource_type __resource_id "web_acl_id";
     }
      : t)
  in
  __resource_attributes
