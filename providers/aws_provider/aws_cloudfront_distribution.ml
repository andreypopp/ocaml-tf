(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudfront_distribution__custom_error_response = {
  error_caching_min_ttl : float option; [@option]
      (** error_caching_min_ttl *)
  error_code : float;  (** error_code *)
  response_code : float option; [@option]  (** response_code *)
  response_page_path : string option; [@option]
      (** response_page_path *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__custom_error_response *)

type aws_cloudfront_distribution__default_cache_behavior__forwarded_values__cookies = {
  forward : string;  (** forward *)
  whitelisted_names : string list option; [@option]
      (** whitelisted_names *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__default_cache_behavior__forwarded_values__cookies *)

type aws_cloudfront_distribution__default_cache_behavior__forwarded_values = {
  headers : string list option; [@option]  (** headers *)
  query_string : bool;  (** query_string *)
  query_string_cache_keys : string list option; [@option]
      (** query_string_cache_keys *)
  cookies :
    aws_cloudfront_distribution__default_cache_behavior__forwarded_values__cookies
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__default_cache_behavior__forwarded_values *)

type aws_cloudfront_distribution__default_cache_behavior__function_association = {
  event_type : string;  (** event_type *)
  function_arn : string;  (** function_arn *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__default_cache_behavior__function_association *)

type aws_cloudfront_distribution__default_cache_behavior__lambda_function_association = {
  event_type : string;  (** event_type *)
  include_body : bool option; [@option]  (** include_body *)
  lambda_arn : string;  (** lambda_arn *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__default_cache_behavior__lambda_function_association *)

type aws_cloudfront_distribution__default_cache_behavior = {
  allowed_methods : string list;  (** allowed_methods *)
  cache_policy_id : string option; [@option]  (** cache_policy_id *)
  cached_methods : string list;  (** cached_methods *)
  compress : bool option; [@option]  (** compress *)
  default_ttl : float option; [@option]  (** default_ttl *)
  field_level_encryption_id : string option; [@option]
      (** field_level_encryption_id *)
  max_ttl : float option; [@option]  (** max_ttl *)
  min_ttl : float option; [@option]  (** min_ttl *)
  origin_request_policy_id : string option; [@option]
      (** origin_request_policy_id *)
  realtime_log_config_arn : string option; [@option]
      (** realtime_log_config_arn *)
  response_headers_policy_id : string option; [@option]
      (** response_headers_policy_id *)
  smooth_streaming : bool option; [@option]  (** smooth_streaming *)
  target_origin_id : string;  (** target_origin_id *)
  trusted_key_groups : string list option; [@option]
      (** trusted_key_groups *)
  trusted_signers : string list option; [@option]
      (** trusted_signers *)
  viewer_protocol_policy : string;  (** viewer_protocol_policy *)
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
  bucket : string;  (** bucket *)
  include_cookies : bool option; [@option]  (** include_cookies *)
  prefix : string option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__logging_config *)

type aws_cloudfront_distribution__ordered_cache_behavior__forwarded_values__cookies = {
  forward : string;  (** forward *)
  whitelisted_names : string list option; [@option]
      (** whitelisted_names *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__ordered_cache_behavior__forwarded_values__cookies *)

type aws_cloudfront_distribution__ordered_cache_behavior__forwarded_values = {
  headers : string list option; [@option]  (** headers *)
  query_string : bool;  (** query_string *)
  query_string_cache_keys : string list option; [@option]
      (** query_string_cache_keys *)
  cookies :
    aws_cloudfront_distribution__ordered_cache_behavior__forwarded_values__cookies
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__ordered_cache_behavior__forwarded_values *)

type aws_cloudfront_distribution__ordered_cache_behavior__function_association = {
  event_type : string;  (** event_type *)
  function_arn : string;  (** function_arn *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__ordered_cache_behavior__function_association *)

type aws_cloudfront_distribution__ordered_cache_behavior__lambda_function_association = {
  event_type : string;  (** event_type *)
  include_body : bool option; [@option]  (** include_body *)
  lambda_arn : string;  (** lambda_arn *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__ordered_cache_behavior__lambda_function_association *)

type aws_cloudfront_distribution__ordered_cache_behavior = {
  allowed_methods : string list;  (** allowed_methods *)
  cache_policy_id : string option; [@option]  (** cache_policy_id *)
  cached_methods : string list;  (** cached_methods *)
  compress : bool option; [@option]  (** compress *)
  default_ttl : float option; [@option]  (** default_ttl *)
  field_level_encryption_id : string option; [@option]
      (** field_level_encryption_id *)
  max_ttl : float option; [@option]  (** max_ttl *)
  min_ttl : float option; [@option]  (** min_ttl *)
  origin_request_policy_id : string option; [@option]
      (** origin_request_policy_id *)
  path_pattern : string;  (** path_pattern *)
  realtime_log_config_arn : string option; [@option]
      (** realtime_log_config_arn *)
  response_headers_policy_id : string option; [@option]
      (** response_headers_policy_id *)
  smooth_streaming : bool option; [@option]  (** smooth_streaming *)
  target_origin_id : string;  (** target_origin_id *)
  trusted_key_groups : string list option; [@option]
      (** trusted_key_groups *)
  trusted_signers : string list option; [@option]
      (** trusted_signers *)
  viewer_protocol_policy : string;  (** viewer_protocol_policy *)
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
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin__custom_header *)

type aws_cloudfront_distribution__origin__custom_origin_config = {
  http_port : float;  (** http_port *)
  https_port : float;  (** https_port *)
  origin_keepalive_timeout : float option; [@option]
      (** origin_keepalive_timeout *)
  origin_protocol_policy : string;  (** origin_protocol_policy *)
  origin_read_timeout : float option; [@option]
      (** origin_read_timeout *)
  origin_ssl_protocols : string list;  (** origin_ssl_protocols *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin__custom_origin_config *)

type aws_cloudfront_distribution__origin__origin_shield = {
  enabled : bool;  (** enabled *)
  origin_shield_region : string option; [@option]
      (** origin_shield_region *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin__origin_shield *)

type aws_cloudfront_distribution__origin__s3_origin_config = {
  origin_access_identity : string;  (** origin_access_identity *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin__s3_origin_config *)

type aws_cloudfront_distribution__origin = {
  connection_attempts : float option; [@option]
      (** connection_attempts *)
  connection_timeout : float option; [@option]
      (** connection_timeout *)
  domain_name : string;  (** domain_name *)
  origin_access_control_id : string option; [@option]
      (** origin_access_control_id *)
  origin_id : string;  (** origin_id *)
  origin_path : string option; [@option]  (** origin_path *)
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
  status_codes : float list;  (** status_codes *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin_group__failover_criteria *)

type aws_cloudfront_distribution__origin_group__member = {
  origin_id : string;  (** origin_id *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin_group__member *)

type aws_cloudfront_distribution__origin_group = {
  origin_id : string;  (** origin_id *)
  failover_criteria :
    aws_cloudfront_distribution__origin_group__failover_criteria list;
  member : aws_cloudfront_distribution__origin_group__member list;
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__origin_group *)

type aws_cloudfront_distribution__restrictions__geo_restriction = {
  locations : string list option; [@option]  (** locations *)
  restriction_type : string;  (** restriction_type *)
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
  acm_certificate_arn : string option; [@option]
      (** acm_certificate_arn *)
  cloudfront_default_certificate : bool option; [@option]
      (** cloudfront_default_certificate *)
  iam_certificate_id : string option; [@option]
      (** iam_certificate_id *)
  minimum_protocol_version : string option; [@option]
      (** minimum_protocol_version *)
  ssl_support_method : string option; [@option]
      (** ssl_support_method *)
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution__viewer_certificate *)

type aws_cloudfront_distribution__trusted_key_groups__items = {
  key_group_id : string;  (** key_group_id *)
  key_pair_ids : string list;  (** key_pair_ids *)
}
[@@deriving yojson_of]

type aws_cloudfront_distribution__trusted_key_groups = {
  enabled : bool;  (** enabled *)
  items : aws_cloudfront_distribution__trusted_key_groups__items list;
      (** items *)
}
[@@deriving yojson_of]

type aws_cloudfront_distribution__trusted_signers__items = {
  aws_account_number : string;  (** aws_account_number *)
  key_pair_ids : string list;  (** key_pair_ids *)
}
[@@deriving yojson_of]

type aws_cloudfront_distribution__trusted_signers = {
  enabled : bool;  (** enabled *)
  items : aws_cloudfront_distribution__trusted_signers__items list;
      (** items *)
}
[@@deriving yojson_of]

type aws_cloudfront_distribution = {
  aliases : string list option; [@option]  (** aliases *)
  comment : string option; [@option]  (** comment *)
  default_root_object : string option; [@option]
      (** default_root_object *)
  enabled : bool;  (** enabled *)
  http_version : string option; [@option]  (** http_version *)
  is_ipv6_enabled : bool option; [@option]  (** is_ipv6_enabled *)
  price_class : string option; [@option]  (** price_class *)
  retain_on_delete : bool option; [@option]  (** retain_on_delete *)
  staging : bool option; [@option]  (** staging *)
  tags : (string * string) list option; [@option]  (** tags *)
  wait_for_deployment : bool option; [@option]
      (** wait_for_deployment *)
  web_acl_id : string option; [@option]  (** web_acl_id *)
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

let aws_cloudfront_distribution ?aliases ?comment
    ?default_root_object ?http_version ?is_ipv6_enabled ?price_class
    ?retain_on_delete ?staging ?tags ?wait_for_deployment ?web_acl_id
    ~enabled ~custom_error_response ~default_cache_behavior
    ~logging_config ~ordered_cache_behavior ~origin ~origin_group
    ~restrictions ~viewer_certificate __resource_id =
  let __resource_type = "aws_cloudfront_distribution" in
  let __resource =
    {
      aliases;
      comment;
      default_root_object;
      enabled;
      http_version;
      is_ipv6_enabled;
      price_class;
      retain_on_delete;
      staging;
      tags;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_distribution __resource);
  ()
