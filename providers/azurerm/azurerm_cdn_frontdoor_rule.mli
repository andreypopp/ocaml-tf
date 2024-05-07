(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type actions__request_header_action

val actions__request_header_action :
  ?value:string prop ->
  header_action:string prop ->
  header_name:string prop ->
  unit ->
  actions__request_header_action

type actions__response_header_action

val actions__response_header_action :
  ?value:string prop ->
  header_action:string prop ->
  header_name:string prop ->
  unit ->
  actions__response_header_action

type actions__route_configuration_override_action

val actions__route_configuration_override_action :
  ?cache_behavior:string prop ->
  ?cache_duration:string prop ->
  ?cdn_frontdoor_origin_group_id:string prop ->
  ?compression_enabled:bool prop ->
  ?forwarding_protocol:string prop ->
  ?query_string_caching_behavior:string prop ->
  ?query_string_parameters:string prop list ->
  unit ->
  actions__route_configuration_override_action

type actions__url_redirect_action

val actions__url_redirect_action :
  ?destination_fragment:string prop ->
  ?destination_path:string prop ->
  ?query_string:string prop ->
  ?redirect_protocol:string prop ->
  destination_hostname:string prop ->
  redirect_type:string prop ->
  unit ->
  actions__url_redirect_action

type actions__url_rewrite_action

val actions__url_rewrite_action :
  ?preserve_unmatched_path:bool prop ->
  destination:string prop ->
  source_pattern:string prop ->
  unit ->
  actions__url_rewrite_action

type actions

val actions :
  ?request_header_action:actions__request_header_action list ->
  ?response_header_action:actions__response_header_action list ->
  ?route_configuration_override_action:
    actions__route_configuration_override_action list ->
  ?url_redirect_action:actions__url_redirect_action list ->
  ?url_rewrite_action:actions__url_rewrite_action list ->
  unit ->
  actions

type conditions__client_port_condition

val conditions__client_port_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  operator:string prop ->
  unit ->
  conditions__client_port_condition

type conditions__cookies_condition

val conditions__cookies_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  cookie_name:string prop ->
  operator:string prop ->
  unit ->
  conditions__cookies_condition

type conditions__host_name_condition

val conditions__host_name_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  unit ->
  conditions__host_name_condition

type conditions__http_version_condition

val conditions__http_version_condition :
  ?negate_condition:bool prop ->
  ?operator:string prop ->
  match_values:string prop list ->
  unit ->
  conditions__http_version_condition

type conditions__is_device_condition

val conditions__is_device_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?operator:string prop ->
  unit ->
  conditions__is_device_condition

type conditions__post_args_condition

val conditions__post_args_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  post_args_name:string prop ->
  unit ->
  conditions__post_args_condition

type conditions__query_string_condition

val conditions__query_string_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  unit ->
  conditions__query_string_condition

type conditions__remote_address_condition

val conditions__remote_address_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?operator:string prop ->
  unit ->
  conditions__remote_address_condition

type conditions__request_body_condition

val conditions__request_body_condition :
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  match_values:string prop list ->
  operator:string prop ->
  unit ->
  conditions__request_body_condition

type conditions__request_header_condition

val conditions__request_header_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  header_name:string prop ->
  operator:string prop ->
  unit ->
  conditions__request_header_condition

type conditions__request_method_condition

val conditions__request_method_condition :
  ?negate_condition:bool prop ->
  ?operator:string prop ->
  match_values:string prop list ->
  unit ->
  conditions__request_method_condition

type conditions__request_scheme_condition

val conditions__request_scheme_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?operator:string prop ->
  unit ->
  conditions__request_scheme_condition

type conditions__request_uri_condition

val conditions__request_uri_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  unit ->
  conditions__request_uri_condition

type conditions__server_port_condition

val conditions__server_port_condition :
  ?negate_condition:bool prop ->
  match_values:string prop list ->
  operator:string prop ->
  unit ->
  conditions__server_port_condition

type conditions__socket_address_condition

val conditions__socket_address_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?operator:string prop ->
  unit ->
  conditions__socket_address_condition

type conditions__ssl_protocol_condition

val conditions__ssl_protocol_condition :
  ?negate_condition:bool prop ->
  ?operator:string prop ->
  match_values:string prop list ->
  unit ->
  conditions__ssl_protocol_condition

type conditions__url_file_extension_condition

val conditions__url_file_extension_condition :
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  match_values:string prop list ->
  operator:string prop ->
  unit ->
  conditions__url_file_extension_condition

type conditions__url_filename_condition

val conditions__url_filename_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  unit ->
  conditions__url_filename_condition

type conditions__url_path_condition

val conditions__url_path_condition :
  ?match_values:string prop list ->
  ?negate_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  unit ->
  conditions__url_path_condition

type conditions

val conditions :
  ?client_port_condition:conditions__client_port_condition list ->
  ?cookies_condition:conditions__cookies_condition list ->
  ?host_name_condition:conditions__host_name_condition list ->
  ?http_version_condition:conditions__http_version_condition list ->
  ?is_device_condition:conditions__is_device_condition list ->
  ?post_args_condition:conditions__post_args_condition list ->
  ?query_string_condition:conditions__query_string_condition list ->
  ?remote_address_condition:conditions__remote_address_condition list ->
  ?request_body_condition:conditions__request_body_condition list ->
  ?request_header_condition:conditions__request_header_condition list ->
  ?request_method_condition:conditions__request_method_condition list ->
  ?request_scheme_condition:conditions__request_scheme_condition list ->
  ?request_uri_condition:conditions__request_uri_condition list ->
  ?server_port_condition:conditions__server_port_condition list ->
  ?socket_address_condition:conditions__socket_address_condition list ->
  ?ssl_protocol_condition:conditions__ssl_protocol_condition list ->
  ?url_file_extension_condition:
    conditions__url_file_extension_condition list ->
  ?url_filename_condition:conditions__url_filename_condition list ->
  ?url_path_condition:conditions__url_path_condition list ->
  unit ->
  conditions

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cdn_frontdoor_rule

val azurerm_cdn_frontdoor_rule :
  ?behavior_on_match:string prop ->
  ?id:string prop ->
  ?conditions:conditions list ->
  ?timeouts:timeouts ->
  cdn_frontdoor_rule_set_id:string prop ->
  name:string prop ->
  order:float prop ->
  actions:actions list ->
  unit ->
  azurerm_cdn_frontdoor_rule

val yojson_of_azurerm_cdn_frontdoor_rule :
  azurerm_cdn_frontdoor_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  behavior_on_match : string prop;
  cdn_frontdoor_rule_set_id : string prop;
  cdn_frontdoor_rule_set_name : string prop;
  id : string prop;
  name : string prop;
  order : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?behavior_on_match:string prop ->
  ?id:string prop ->
  ?conditions:conditions list ->
  ?timeouts:timeouts ->
  cdn_frontdoor_rule_set_id:string prop ->
  name:string prop ->
  order:float prop ->
  actions:actions list ->
  string ->
  t

val make :
  ?behavior_on_match:string prop ->
  ?id:string prop ->
  ?conditions:conditions list ->
  ?timeouts:timeouts ->
  cdn_frontdoor_rule_set_id:string prop ->
  name:string prop ->
  order:float prop ->
  actions:actions list ->
  string ->
  t Tf_core.resource
