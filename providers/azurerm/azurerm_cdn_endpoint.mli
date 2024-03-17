(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cdn_endpoint__delivery_rule__cache_expiration_action

type azurerm_cdn_endpoint__delivery_rule__cache_key_query_string_action

type azurerm_cdn_endpoint__delivery_rule__cookies_condition
type azurerm_cdn_endpoint__delivery_rule__device_condition
type azurerm_cdn_endpoint__delivery_rule__http_version_condition
type azurerm_cdn_endpoint__delivery_rule__modify_request_header_action

type azurerm_cdn_endpoint__delivery_rule__modify_response_header_action

type azurerm_cdn_endpoint__delivery_rule__post_arg_condition
type azurerm_cdn_endpoint__delivery_rule__query_string_condition
type azurerm_cdn_endpoint__delivery_rule__remote_address_condition
type azurerm_cdn_endpoint__delivery_rule__request_body_condition
type azurerm_cdn_endpoint__delivery_rule__request_header_condition
type azurerm_cdn_endpoint__delivery_rule__request_method_condition
type azurerm_cdn_endpoint__delivery_rule__request_scheme_condition
type azurerm_cdn_endpoint__delivery_rule__request_uri_condition
type azurerm_cdn_endpoint__delivery_rule__url_file_extension_condition
type azurerm_cdn_endpoint__delivery_rule__url_file_name_condition
type azurerm_cdn_endpoint__delivery_rule__url_path_condition
type azurerm_cdn_endpoint__delivery_rule__url_redirect_action
type azurerm_cdn_endpoint__delivery_rule__url_rewrite_action
type azurerm_cdn_endpoint__delivery_rule
type azurerm_cdn_endpoint__geo_filter

type azurerm_cdn_endpoint__global_delivery_rule__cache_expiration_action

type azurerm_cdn_endpoint__global_delivery_rule__cache_key_query_string_action

type azurerm_cdn_endpoint__global_delivery_rule__modify_request_header_action

type azurerm_cdn_endpoint__global_delivery_rule__modify_response_header_action

type azurerm_cdn_endpoint__global_delivery_rule__url_redirect_action
type azurerm_cdn_endpoint__global_delivery_rule__url_rewrite_action
type azurerm_cdn_endpoint__global_delivery_rule
type azurerm_cdn_endpoint__origin
type azurerm_cdn_endpoint__timeouts
type azurerm_cdn_endpoint

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
  ?timeouts:azurerm_cdn_endpoint__timeouts ->
  location:string prop ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  delivery_rule:azurerm_cdn_endpoint__delivery_rule list ->
  geo_filter:azurerm_cdn_endpoint__geo_filter list ->
  global_delivery_rule:
    azurerm_cdn_endpoint__global_delivery_rule list ->
  origin:azurerm_cdn_endpoint__origin list ->
  string ->
  t
