(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type delivery_rule__cache_expiration_action

val delivery_rule__cache_expiration_action :
  ?duration:string prop ->
  behavior:string prop ->
  unit ->
  delivery_rule__cache_expiration_action

type delivery_rule__cache_key_query_string_action

val delivery_rule__cache_key_query_string_action :
  ?parameters:string prop ->
  behavior:string prop ->
  unit ->
  delivery_rule__cache_key_query_string_action

type delivery_rule__cookies_condition

val delivery_rule__cookies_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  selector:string prop ->
  unit ->
  delivery_rule__cookies_condition

type delivery_rule__device_condition

val delivery_rule__device_condition :
  ?negate_condition:bool prop ->
  ?operator:string prop ->
  match_values:string prop list ->
  unit ->
  delivery_rule__device_condition

type delivery_rule__http_version_condition

val delivery_rule__http_version_condition :
  ?negate_condition:bool prop ->
  ?operator:string prop ->
  match_values:string prop list ->
  unit ->
  delivery_rule__http_version_condition

type delivery_rule__modify_request_header_action

val delivery_rule__modify_request_header_action :
  ?value:string prop ->
  action:string prop ->
  name:string prop ->
  unit ->
  delivery_rule__modify_request_header_action

type delivery_rule__modify_response_header_action

val delivery_rule__modify_response_header_action :
  ?value:string prop ->
  action:string prop ->
  name:string prop ->
  unit ->
  delivery_rule__modify_response_header_action

type delivery_rule__post_arg_condition

val delivery_rule__post_arg_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  selector:string prop ->
  unit ->
  delivery_rule__post_arg_condition

type delivery_rule__query_string_condition

val delivery_rule__query_string_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  unit ->
  delivery_rule__query_string_condition

type delivery_rule__remote_address_condition

val delivery_rule__remote_address_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  operator:string prop ->
  unit ->
  delivery_rule__remote_address_condition

type delivery_rule__request_body_condition

val delivery_rule__request_body_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  unit ->
  delivery_rule__request_body_condition

type delivery_rule__request_header_condition

val delivery_rule__request_header_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  selector:string prop ->
  unit ->
  delivery_rule__request_header_condition

type delivery_rule__request_method_condition

val delivery_rule__request_method_condition :
  ?negate_condition:bool prop ->
  ?operator:string prop ->
  match_values:string prop list ->
  unit ->
  delivery_rule__request_method_condition

type delivery_rule__request_scheme_condition

val delivery_rule__request_scheme_condition :
  ?negate_condition:bool prop ->
  ?operator:string prop ->
  match_values:string prop list ->
  unit ->
  delivery_rule__request_scheme_condition

type delivery_rule__request_uri_condition

val delivery_rule__request_uri_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  unit ->
  delivery_rule__request_uri_condition

type delivery_rule__url_file_extension_condition

val delivery_rule__url_file_extension_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  unit ->
  delivery_rule__url_file_extension_condition

type delivery_rule__url_file_name_condition

val delivery_rule__url_file_name_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  unit ->
  delivery_rule__url_file_name_condition

type delivery_rule__url_path_condition

val delivery_rule__url_path_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  unit ->
  delivery_rule__url_path_condition

type delivery_rule__url_redirect_action

val delivery_rule__url_redirect_action :
  ?fragment:string prop ->
  ?hostname:string prop ->
  ?path:string prop ->
  ?protocol:string prop ->
  ?query_string:string prop ->
  redirect_type:string prop ->
  unit ->
  delivery_rule__url_redirect_action

type delivery_rule__url_rewrite_action

val delivery_rule__url_rewrite_action :
  ?preserve_unmatched_path:bool prop ->
  destination:string prop ->
  source_pattern:string prop ->
  unit ->
  delivery_rule__url_rewrite_action

type delivery_rule

val delivery_rule :
  ?cache_expiration_action:
    delivery_rule__cache_expiration_action list ->
  ?cache_key_query_string_action:
    delivery_rule__cache_key_query_string_action list ->
  ?cookies_condition:delivery_rule__cookies_condition list ->
  ?device_condition:delivery_rule__device_condition list ->
  ?http_version_condition:delivery_rule__http_version_condition list ->
  ?modify_request_header_action:
    delivery_rule__modify_request_header_action list ->
  ?modify_response_header_action:
    delivery_rule__modify_response_header_action list ->
  ?post_arg_condition:delivery_rule__post_arg_condition list ->
  ?query_string_condition:delivery_rule__query_string_condition list ->
  ?remote_address_condition:
    delivery_rule__remote_address_condition list ->
  ?request_body_condition:delivery_rule__request_body_condition list ->
  ?request_header_condition:
    delivery_rule__request_header_condition list ->
  ?request_method_condition:
    delivery_rule__request_method_condition list ->
  ?request_scheme_condition:
    delivery_rule__request_scheme_condition list ->
  ?request_uri_condition:delivery_rule__request_uri_condition list ->
  ?url_file_extension_condition:
    delivery_rule__url_file_extension_condition list ->
  ?url_file_name_condition:
    delivery_rule__url_file_name_condition list ->
  ?url_path_condition:delivery_rule__url_path_condition list ->
  ?url_redirect_action:delivery_rule__url_redirect_action list ->
  ?url_rewrite_action:delivery_rule__url_rewrite_action list ->
  name:string prop ->
  order:float prop ->
  unit ->
  delivery_rule

type geo_filter

val geo_filter :
  action:string prop ->
  country_codes:string prop list ->
  relative_path:string prop ->
  unit ->
  geo_filter

type global_delivery_rule__cache_expiration_action

val global_delivery_rule__cache_expiration_action :
  ?duration:string prop ->
  behavior:string prop ->
  unit ->
  global_delivery_rule__cache_expiration_action

type global_delivery_rule__cache_key_query_string_action

val global_delivery_rule__cache_key_query_string_action :
  ?parameters:string prop ->
  behavior:string prop ->
  unit ->
  global_delivery_rule__cache_key_query_string_action

type global_delivery_rule__modify_request_header_action

val global_delivery_rule__modify_request_header_action :
  ?value:string prop ->
  action:string prop ->
  name:string prop ->
  unit ->
  global_delivery_rule__modify_request_header_action

type global_delivery_rule__modify_response_header_action

val global_delivery_rule__modify_response_header_action :
  ?value:string prop ->
  action:string prop ->
  name:string prop ->
  unit ->
  global_delivery_rule__modify_response_header_action

type global_delivery_rule__url_redirect_action

val global_delivery_rule__url_redirect_action :
  ?fragment:string prop ->
  ?hostname:string prop ->
  ?path:string prop ->
  ?protocol:string prop ->
  ?query_string:string prop ->
  redirect_type:string prop ->
  unit ->
  global_delivery_rule__url_redirect_action

type global_delivery_rule__url_rewrite_action

val global_delivery_rule__url_rewrite_action :
  ?preserve_unmatched_path:bool prop ->
  destination:string prop ->
  source_pattern:string prop ->
  unit ->
  global_delivery_rule__url_rewrite_action

type global_delivery_rule

val global_delivery_rule :
  ?cache_expiration_action:
    global_delivery_rule__cache_expiration_action list ->
  ?cache_key_query_string_action:
    global_delivery_rule__cache_key_query_string_action list ->
  ?modify_request_header_action:
    global_delivery_rule__modify_request_header_action list ->
  ?modify_response_header_action:
    global_delivery_rule__modify_response_header_action list ->
  ?url_redirect_action:global_delivery_rule__url_redirect_action list ->
  ?url_rewrite_action:global_delivery_rule__url_rewrite_action list ->
  unit ->
  global_delivery_rule

type origin

val origin :
  ?http_port:float prop ->
  ?https_port:float prop ->
  host_name:string prop ->
  name:string prop ->
  unit ->
  origin

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cdn_endpoint

val azurerm_cdn_endpoint :
  ?content_types_to_compress:string prop list ->
  ?id:string prop ->
  ?is_compression_enabled:bool prop ->
  ?is_http_allowed:bool prop ->
  ?is_https_allowed:bool prop ->
  ?optimization_type:string prop ->
  ?origin_host_header:string prop ->
  ?origin_path:string prop ->
  ?probe_path:string prop ->
  ?querystring_caching_behaviour:string prop ->
  ?tags:(string * string prop) list ->
  ?delivery_rule:delivery_rule list ->
  ?geo_filter:geo_filter list ->
  ?global_delivery_rule:global_delivery_rule list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  origin:origin list ->
  unit ->
  azurerm_cdn_endpoint

val yojson_of_azurerm_cdn_endpoint : azurerm_cdn_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  content_types_to_compress : string list prop;
  fqdn : string prop;
  id : string prop;
  is_compression_enabled : bool prop;
  is_http_allowed : bool prop;
  is_https_allowed : bool prop;
  location : string prop;
  name : string prop;
  optimization_type : string prop;
  origin_host_header : string prop;
  origin_path : string prop;
  probe_path : string prop;
  profile_name : string prop;
  querystring_caching_behaviour : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?content_types_to_compress:string prop list ->
  ?id:string prop ->
  ?is_compression_enabled:bool prop ->
  ?is_http_allowed:bool prop ->
  ?is_https_allowed:bool prop ->
  ?optimization_type:string prop ->
  ?origin_host_header:string prop ->
  ?origin_path:string prop ->
  ?probe_path:string prop ->
  ?querystring_caching_behaviour:string prop ->
  ?tags:(string * string prop) list ->
  ?delivery_rule:delivery_rule list ->
  ?geo_filter:geo_filter list ->
  ?global_delivery_rule:global_delivery_rule list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  origin:origin list ->
  string ->
  t

val make :
  ?content_types_to_compress:string prop list ->
  ?id:string prop ->
  ?is_compression_enabled:bool prop ->
  ?is_http_allowed:bool prop ->
  ?is_https_allowed:bool prop ->
  ?optimization_type:string prop ->
  ?origin_host_header:string prop ->
  ?origin_path:string prop ->
  ?probe_path:string prop ->
  ?querystring_caching_behaviour:string prop ->
  ?tags:(string * string prop) list ->
  ?delivery_rule:delivery_rule list ->
  ?geo_filter:geo_filter list ->
  ?global_delivery_rule:global_delivery_rule list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  origin:origin list ->
  string ->
  t Tf_core.resource
