(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type custom_error_response = {
  error_caching_min_ttl : float prop option; [@option]
      (** error_caching_min_ttl *)
  error_code : float prop;  (** error_code *)
  response_code : float prop option; [@option]  (** response_code *)
  response_page_path : string prop option; [@option]
      (** response_page_path *)
}
[@@deriving yojson_of]
(** custom_error_response *)

type default_cache_behavior__forwarded_values__cookies = {
  forward : string prop;  (** forward *)
  whitelisted_names : string prop list option; [@option]
      (** whitelisted_names *)
}
[@@deriving yojson_of]
(** default_cache_behavior__forwarded_values__cookies *)

type default_cache_behavior__forwarded_values = {
  headers : string prop list option; [@option]  (** headers *)
  query_string : bool prop;  (** query_string *)
  query_string_cache_keys : string prop list option; [@option]
      (** query_string_cache_keys *)
  cookies : default_cache_behavior__forwarded_values__cookies list;
}
[@@deriving yojson_of]
(** default_cache_behavior__forwarded_values *)

type default_cache_behavior__function_association = {
  event_type : string prop;  (** event_type *)
  function_arn : string prop;  (** function_arn *)
}
[@@deriving yojson_of]
(** default_cache_behavior__function_association *)

type default_cache_behavior__lambda_function_association = {
  event_type : string prop;  (** event_type *)
  include_body : bool prop option; [@option]  (** include_body *)
  lambda_arn : string prop;  (** lambda_arn *)
}
[@@deriving yojson_of]
(** default_cache_behavior__lambda_function_association *)

type default_cache_behavior = {
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
  forwarded_values : default_cache_behavior__forwarded_values list;
  function_association :
    default_cache_behavior__function_association list;
  lambda_function_association :
    default_cache_behavior__lambda_function_association list;
}
[@@deriving yojson_of]
(** default_cache_behavior *)

type logging_config = {
  bucket : string prop;  (** bucket *)
  include_cookies : bool prop option; [@option]
      (** include_cookies *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** logging_config *)

type ordered_cache_behavior__forwarded_values__cookies = {
  forward : string prop;  (** forward *)
  whitelisted_names : string prop list option; [@option]
      (** whitelisted_names *)
}
[@@deriving yojson_of]
(** ordered_cache_behavior__forwarded_values__cookies *)

type ordered_cache_behavior__forwarded_values = {
  headers : string prop list option; [@option]  (** headers *)
  query_string : bool prop;  (** query_string *)
  query_string_cache_keys : string prop list option; [@option]
      (** query_string_cache_keys *)
  cookies : ordered_cache_behavior__forwarded_values__cookies list;
}
[@@deriving yojson_of]
(** ordered_cache_behavior__forwarded_values *)

type ordered_cache_behavior__function_association = {
  event_type : string prop;  (** event_type *)
  function_arn : string prop;  (** function_arn *)
}
[@@deriving yojson_of]
(** ordered_cache_behavior__function_association *)

type ordered_cache_behavior__lambda_function_association = {
  event_type : string prop;  (** event_type *)
  include_body : bool prop option; [@option]  (** include_body *)
  lambda_arn : string prop;  (** lambda_arn *)
}
[@@deriving yojson_of]
(** ordered_cache_behavior__lambda_function_association *)

type ordered_cache_behavior = {
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
  forwarded_values : ordered_cache_behavior__forwarded_values list;
  function_association :
    ordered_cache_behavior__function_association list;
  lambda_function_association :
    ordered_cache_behavior__lambda_function_association list;
}
[@@deriving yojson_of]
(** ordered_cache_behavior *)

type origin__custom_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** origin__custom_header *)

type origin__custom_origin_config = {
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
(** origin__custom_origin_config *)

type origin__origin_shield = {
  enabled : bool prop;  (** enabled *)
  origin_shield_region : string prop option; [@option]
      (** origin_shield_region *)
}
[@@deriving yojson_of]
(** origin__origin_shield *)

type origin__s3_origin_config = {
  origin_access_identity : string prop;  (** origin_access_identity *)
}
[@@deriving yojson_of]
(** origin__s3_origin_config *)

type origin = {
  connection_attempts : float prop option; [@option]
      (** connection_attempts *)
  connection_timeout : float prop option; [@option]
      (** connection_timeout *)
  domain_name : string prop;  (** domain_name *)
  origin_access_control_id : string prop option; [@option]
      (** origin_access_control_id *)
  origin_id : string prop;  (** origin_id *)
  origin_path : string prop option; [@option]  (** origin_path *)
  custom_header : origin__custom_header list;
  custom_origin_config : origin__custom_origin_config list;
  origin_shield : origin__origin_shield list;
  s3_origin_config : origin__s3_origin_config list;
}
[@@deriving yojson_of]
(** origin *)

type origin_group__failover_criteria = {
  status_codes : float prop list;  (** status_codes *)
}
[@@deriving yojson_of]
(** origin_group__failover_criteria *)

type origin_group__member = {
  origin_id : string prop;  (** origin_id *)
}
[@@deriving yojson_of]
(** origin_group__member *)

type origin_group = {
  origin_id : string prop;  (** origin_id *)
  failover_criteria : origin_group__failover_criteria list;
  member : origin_group__member list;
}
[@@deriving yojson_of]
(** origin_group *)

type restrictions__geo_restriction = {
  locations : string prop list option; [@option]  (** locations *)
  restriction_type : string prop;  (** restriction_type *)
}
[@@deriving yojson_of]
(** restrictions__geo_restriction *)

type restrictions = {
  geo_restriction : restrictions__geo_restriction list;
}
[@@deriving yojson_of]
(** restrictions *)

type viewer_certificate = {
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
(** viewer_certificate *)

type trusted_key_groups__items = {
  key_group_id : string prop;  (** key_group_id *)
  key_pair_ids : string prop list;  (** key_pair_ids *)
}
[@@deriving yojson_of]

type trusted_key_groups = {
  enabled : bool prop;  (** enabled *)
  items : trusted_key_groups__items list;  (** items *)
}
[@@deriving yojson_of]

type trusted_signers__items = {
  aws_account_number : string prop;  (** aws_account_number *)
  key_pair_ids : string prop list;  (** key_pair_ids *)
}
[@@deriving yojson_of]

type trusted_signers = {
  enabled : bool prop;  (** enabled *)
  items : trusted_signers__items list;  (** items *)
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
  custom_error_response : custom_error_response list;
  default_cache_behavior : default_cache_behavior list;
  logging_config : logging_config list;
  ordered_cache_behavior : ordered_cache_behavior list;
  origin : origin list;
  origin_group : origin_group list;
  restrictions : restrictions list;
  viewer_certificate : viewer_certificate list;
}
[@@deriving yojson_of]
(** aws_cloudfront_distribution *)

let custom_error_response ?error_caching_min_ttl ?response_code
    ?response_page_path ~error_code () : custom_error_response =
  {
    error_caching_min_ttl;
    error_code;
    response_code;
    response_page_path;
  }

let default_cache_behavior__forwarded_values__cookies
    ?whitelisted_names ~forward () :
    default_cache_behavior__forwarded_values__cookies =
  { forward; whitelisted_names }

let default_cache_behavior__forwarded_values ?headers
    ?query_string_cache_keys ~query_string ~cookies () :
    default_cache_behavior__forwarded_values =
  { headers; query_string; query_string_cache_keys; cookies }

let default_cache_behavior__function_association ~event_type
    ~function_arn () : default_cache_behavior__function_association =
  { event_type; function_arn }

let default_cache_behavior__lambda_function_association ?include_body
    ~event_type ~lambda_arn () :
    default_cache_behavior__lambda_function_association =
  { event_type; include_body; lambda_arn }

let default_cache_behavior ?cache_policy_id ?compress ?default_ttl
    ?field_level_encryption_id ?max_ttl ?min_ttl
    ?origin_request_policy_id ?realtime_log_config_arn
    ?response_headers_policy_id ?smooth_streaming ?trusted_key_groups
    ?trusted_signers ~allowed_methods ~cached_methods
    ~target_origin_id ~viewer_protocol_policy ~forwarded_values
    ~function_association ~lambda_function_association () :
    default_cache_behavior =
  {
    allowed_methods;
    cache_policy_id;
    cached_methods;
    compress;
    default_ttl;
    field_level_encryption_id;
    max_ttl;
    min_ttl;
    origin_request_policy_id;
    realtime_log_config_arn;
    response_headers_policy_id;
    smooth_streaming;
    target_origin_id;
    trusted_key_groups;
    trusted_signers;
    viewer_protocol_policy;
    forwarded_values;
    function_association;
    lambda_function_association;
  }

let logging_config ?include_cookies ?prefix ~bucket () :
    logging_config =
  { bucket; include_cookies; prefix }

let ordered_cache_behavior__forwarded_values__cookies
    ?whitelisted_names ~forward () :
    ordered_cache_behavior__forwarded_values__cookies =
  { forward; whitelisted_names }

let ordered_cache_behavior__forwarded_values ?headers
    ?query_string_cache_keys ~query_string ~cookies () :
    ordered_cache_behavior__forwarded_values =
  { headers; query_string; query_string_cache_keys; cookies }

let ordered_cache_behavior__function_association ~event_type
    ~function_arn () : ordered_cache_behavior__function_association =
  { event_type; function_arn }

let ordered_cache_behavior__lambda_function_association ?include_body
    ~event_type ~lambda_arn () :
    ordered_cache_behavior__lambda_function_association =
  { event_type; include_body; lambda_arn }

let ordered_cache_behavior ?cache_policy_id ?compress ?default_ttl
    ?field_level_encryption_id ?max_ttl ?min_ttl
    ?origin_request_policy_id ?realtime_log_config_arn
    ?response_headers_policy_id ?smooth_streaming ?trusted_key_groups
    ?trusted_signers ~allowed_methods ~cached_methods ~path_pattern
    ~target_origin_id ~viewer_protocol_policy ~forwarded_values
    ~function_association ~lambda_function_association () :
    ordered_cache_behavior =
  {
    allowed_methods;
    cache_policy_id;
    cached_methods;
    compress;
    default_ttl;
    field_level_encryption_id;
    max_ttl;
    min_ttl;
    origin_request_policy_id;
    path_pattern;
    realtime_log_config_arn;
    response_headers_policy_id;
    smooth_streaming;
    target_origin_id;
    trusted_key_groups;
    trusted_signers;
    viewer_protocol_policy;
    forwarded_values;
    function_association;
    lambda_function_association;
  }

let origin__custom_header ~name ~value () : origin__custom_header =
  { name; value }

let origin__custom_origin_config ?origin_keepalive_timeout
    ?origin_read_timeout ~http_port ~https_port
    ~origin_protocol_policy ~origin_ssl_protocols () :
    origin__custom_origin_config =
  {
    http_port;
    https_port;
    origin_keepalive_timeout;
    origin_protocol_policy;
    origin_read_timeout;
    origin_ssl_protocols;
  }

let origin__origin_shield ?origin_shield_region ~enabled () :
    origin__origin_shield =
  { enabled; origin_shield_region }

let origin__s3_origin_config ~origin_access_identity () :
    origin__s3_origin_config =
  { origin_access_identity }

let origin ?connection_attempts ?connection_timeout
    ?origin_access_control_id ?origin_path ~domain_name ~origin_id
    ~custom_header ~custom_origin_config ~origin_shield
    ~s3_origin_config () : origin =
  {
    connection_attempts;
    connection_timeout;
    domain_name;
    origin_access_control_id;
    origin_id;
    origin_path;
    custom_header;
    custom_origin_config;
    origin_shield;
    s3_origin_config;
  }

let origin_group__failover_criteria ~status_codes () :
    origin_group__failover_criteria =
  { status_codes }

let origin_group__member ~origin_id () : origin_group__member =
  { origin_id }

let origin_group ~origin_id ~failover_criteria ~member () :
    origin_group =
  { origin_id; failover_criteria; member }

let restrictions__geo_restriction ?locations ~restriction_type () :
    restrictions__geo_restriction =
  { locations; restriction_type }

let restrictions ~geo_restriction () : restrictions =
  { geo_restriction }

let viewer_certificate ?acm_certificate_arn
    ?cloudfront_default_certificate ?iam_certificate_id
    ?minimum_protocol_version ?ssl_support_method () :
    viewer_certificate =
  {
    acm_certificate_arn;
    cloudfront_default_certificate;
    iam_certificate_id;
    minimum_protocol_version;
    ssl_support_method;
  }

let aws_cloudfront_distribution ?aliases ?comment
    ?continuous_deployment_policy_id ?default_root_object
    ?http_version ?id ?is_ipv6_enabled ?price_class ?retain_on_delete
    ?staging ?tags ?tags_all ?wait_for_deployment ?web_acl_id
    ~enabled ~custom_error_response ~default_cache_behavior
    ~logging_config ~ordered_cache_behavior ~origin ~origin_group
    ~restrictions ~viewer_certificate () :
    aws_cloudfront_distribution =
  {
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
  trusted_key_groups : trusted_key_groups list prop;
  trusted_signers : trusted_signers list prop;
  wait_for_deployment : bool prop;
  web_acl_id : string prop;
}

let register ?tf_module ?aliases ?comment
    ?continuous_deployment_policy_id ?default_root_object
    ?http_version ?id ?is_ipv6_enabled ?price_class ?retain_on_delete
    ?staging ?tags ?tags_all ?wait_for_deployment ?web_acl_id
    ~enabled ~custom_error_response ~default_cache_behavior
    ~logging_config ~ordered_cache_behavior ~origin ~origin_group
    ~restrictions ~viewer_certificate __resource_id =
  let __resource_type = "aws_cloudfront_distribution" in
  let __resource =
    aws_cloudfront_distribution ?aliases ?comment
      ?continuous_deployment_policy_id ?default_root_object
      ?http_version ?id ?is_ipv6_enabled ?price_class
      ?retain_on_delete ?staging ?tags ?tags_all ?wait_for_deployment
      ?web_acl_id ~enabled ~custom_error_response
      ~default_cache_behavior ~logging_config ~ordered_cache_behavior
      ~origin ~origin_group ~restrictions ~viewer_certificate ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
