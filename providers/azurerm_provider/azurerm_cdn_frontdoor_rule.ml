(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_cdn_frontdoor_rule__actions__request_header_action = {
  header_action : string;  (** header_action *)
  header_name : string;  (** header_name *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__actions__request_header_action *)

type azurerm_cdn_frontdoor_rule__actions__response_header_action = {
  header_action : string;  (** header_action *)
  header_name : string;  (** header_name *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__actions__response_header_action *)

type azurerm_cdn_frontdoor_rule__actions__route_configuration_override_action = {
  cache_behavior : string option; [@option]  (** cache_behavior *)
  cache_duration : string option; [@option]  (** cache_duration *)
  cdn_frontdoor_origin_group_id : string option; [@option]
      (** cdn_frontdoor_origin_group_id *)
  compression_enabled : bool option; [@option]
      (** compression_enabled *)
  forwarding_protocol : string option; [@option]
      (** forwarding_protocol *)
  query_string_caching_behavior : string option; [@option]
      (** query_string_caching_behavior *)
  query_string_parameters : string list option; [@option]
      (** query_string_parameters *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__actions__route_configuration_override_action *)

type azurerm_cdn_frontdoor_rule__actions__url_redirect_action = {
  destination_fragment : string option; [@option]
      (** destination_fragment *)
  destination_hostname : string;  (** destination_hostname *)
  destination_path : string option; [@option]
      (** destination_path *)
  query_string : string option; [@option]  (** query_string *)
  redirect_protocol : string option; [@option]
      (** redirect_protocol *)
  redirect_type : string;  (** redirect_type *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__actions__url_redirect_action *)

type azurerm_cdn_frontdoor_rule__actions__url_rewrite_action = {
  destination : string;  (** destination *)
  preserve_unmatched_path : bool option; [@option]
      (** preserve_unmatched_path *)
  source_pattern : string;  (** source_pattern *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__actions__url_rewrite_action *)

type azurerm_cdn_frontdoor_rule__actions = {
  request_header_action :
    azurerm_cdn_frontdoor_rule__actions__request_header_action list;
  response_header_action :
    azurerm_cdn_frontdoor_rule__actions__response_header_action list;
  route_configuration_override_action :
    azurerm_cdn_frontdoor_rule__actions__route_configuration_override_action
    list;
  url_redirect_action :
    azurerm_cdn_frontdoor_rule__actions__url_redirect_action list;
  url_rewrite_action :
    azurerm_cdn_frontdoor_rule__actions__url_rewrite_action list;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__actions *)

type azurerm_cdn_frontdoor_rule__conditions__client_port_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__client_port_condition *)

type azurerm_cdn_frontdoor_rule__conditions__cookies_condition = {
  cookie_name : string;  (** cookie_name *)
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__cookies_condition *)

type azurerm_cdn_frontdoor_rule__conditions__host_name_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__host_name_condition *)

type azurerm_cdn_frontdoor_rule__conditions__http_version_condition = {
  match_values : string list;  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__http_version_condition *)

type azurerm_cdn_frontdoor_rule__conditions__is_device_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__is_device_condition *)

type azurerm_cdn_frontdoor_rule__conditions__post_args_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  post_args_name : string;  (** post_args_name *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__post_args_condition *)

type azurerm_cdn_frontdoor_rule__conditions__query_string_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__query_string_condition *)

type azurerm_cdn_frontdoor_rule__conditions__remote_address_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__remote_address_condition *)

type azurerm_cdn_frontdoor_rule__conditions__request_body_condition = {
  match_values : string list;  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__request_body_condition *)

type azurerm_cdn_frontdoor_rule__conditions__request_header_condition = {
  header_name : string;  (** header_name *)
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__request_header_condition *)

type azurerm_cdn_frontdoor_rule__conditions__request_method_condition = {
  match_values : string list;  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__request_method_condition *)

type azurerm_cdn_frontdoor_rule__conditions__request_scheme_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__request_scheme_condition *)

type azurerm_cdn_frontdoor_rule__conditions__request_uri_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__request_uri_condition *)

type azurerm_cdn_frontdoor_rule__conditions__server_port_condition = {
  match_values : string list;  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__server_port_condition *)

type azurerm_cdn_frontdoor_rule__conditions__socket_address_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__socket_address_condition *)

type azurerm_cdn_frontdoor_rule__conditions__ssl_protocol_condition = {
  match_values : string list;  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__ssl_protocol_condition *)

type azurerm_cdn_frontdoor_rule__conditions__url_file_extension_condition = {
  match_values : string list;  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__url_file_extension_condition *)

type azurerm_cdn_frontdoor_rule__conditions__url_filename_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__url_filename_condition *)

type azurerm_cdn_frontdoor_rule__conditions__url_path_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__url_path_condition *)

type azurerm_cdn_frontdoor_rule__conditions = {
  client_port_condition :
    azurerm_cdn_frontdoor_rule__conditions__client_port_condition
    list;
  cookies_condition :
    azurerm_cdn_frontdoor_rule__conditions__cookies_condition list;
  host_name_condition :
    azurerm_cdn_frontdoor_rule__conditions__host_name_condition list;
  http_version_condition :
    azurerm_cdn_frontdoor_rule__conditions__http_version_condition
    list;
  is_device_condition :
    azurerm_cdn_frontdoor_rule__conditions__is_device_condition list;
  post_args_condition :
    azurerm_cdn_frontdoor_rule__conditions__post_args_condition list;
  query_string_condition :
    azurerm_cdn_frontdoor_rule__conditions__query_string_condition
    list;
  remote_address_condition :
    azurerm_cdn_frontdoor_rule__conditions__remote_address_condition
    list;
  request_body_condition :
    azurerm_cdn_frontdoor_rule__conditions__request_body_condition
    list;
  request_header_condition :
    azurerm_cdn_frontdoor_rule__conditions__request_header_condition
    list;
  request_method_condition :
    azurerm_cdn_frontdoor_rule__conditions__request_method_condition
    list;
  request_scheme_condition :
    azurerm_cdn_frontdoor_rule__conditions__request_scheme_condition
    list;
  request_uri_condition :
    azurerm_cdn_frontdoor_rule__conditions__request_uri_condition
    list;
  server_port_condition :
    azurerm_cdn_frontdoor_rule__conditions__server_port_condition
    list;
  socket_address_condition :
    azurerm_cdn_frontdoor_rule__conditions__socket_address_condition
    list;
  ssl_protocol_condition :
    azurerm_cdn_frontdoor_rule__conditions__ssl_protocol_condition
    list;
  url_file_extension_condition :
    azurerm_cdn_frontdoor_rule__conditions__url_file_extension_condition
    list;
  url_filename_condition :
    azurerm_cdn_frontdoor_rule__conditions__url_filename_condition
    list;
  url_path_condition :
    azurerm_cdn_frontdoor_rule__conditions__url_path_condition list;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions *)

type azurerm_cdn_frontdoor_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__timeouts *)

type azurerm_cdn_frontdoor_rule = {
  behavior_on_match : string option; [@option]
      (** behavior_on_match *)
  cdn_frontdoor_rule_set_id : string;
      (** cdn_frontdoor_rule_set_id *)
  name : string;  (** name *)
  order : float;  (** order *)
  actions : azurerm_cdn_frontdoor_rule__actions list;
  conditions : azurerm_cdn_frontdoor_rule__conditions list;
  timeouts : azurerm_cdn_frontdoor_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule *)

let azurerm_cdn_frontdoor_rule ?behavior_on_match ?timeouts
    ~cdn_frontdoor_rule_set_id ~name ~order ~actions ~conditions
    __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_rule" in
  let __resource =
    {
      behavior_on_match;
      cdn_frontdoor_rule_set_id;
      name;
      order;
      actions;
      conditions;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_rule __resource);
  ()