(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_rule__actions__request_header_action = {
  header_action : string prop;  (** header_action *)
  header_name : string prop;  (** header_name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__actions__request_header_action *)

type azurerm_cdn_frontdoor_rule__actions__response_header_action = {
  header_action : string prop;  (** header_action *)
  header_name : string prop;  (** header_name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__actions__response_header_action *)

type azurerm_cdn_frontdoor_rule__actions__route_configuration_override_action = {
  cache_behavior : string prop option; [@option]
      (** cache_behavior *)
  cache_duration : string prop option; [@option]
      (** cache_duration *)
  cdn_frontdoor_origin_group_id : string prop option; [@option]
      (** cdn_frontdoor_origin_group_id *)
  compression_enabled : bool prop option; [@option]
      (** compression_enabled *)
  forwarding_protocol : string prop option; [@option]
      (** forwarding_protocol *)
  query_string_caching_behavior : string prop option; [@option]
      (** query_string_caching_behavior *)
  query_string_parameters : string prop list option; [@option]
      (** query_string_parameters *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__actions__route_configuration_override_action *)

type azurerm_cdn_frontdoor_rule__actions__url_redirect_action = {
  destination_fragment : string prop option; [@option]
      (** destination_fragment *)
  destination_hostname : string prop;  (** destination_hostname *)
  destination_path : string prop option; [@option]
      (** destination_path *)
  query_string : string prop option; [@option]  (** query_string *)
  redirect_protocol : string prop option; [@option]
      (** redirect_protocol *)
  redirect_type : string prop;  (** redirect_type *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__actions__url_redirect_action *)

type azurerm_cdn_frontdoor_rule__actions__url_rewrite_action = {
  destination : string prop;  (** destination *)
  preserve_unmatched_path : bool prop option; [@option]
      (** preserve_unmatched_path *)
  source_pattern : string prop;  (** source_pattern *)
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
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__client_port_condition *)

type azurerm_cdn_frontdoor_rule__conditions__cookies_condition = {
  cookie_name : string prop;  (** cookie_name *)
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__cookies_condition *)

type azurerm_cdn_frontdoor_rule__conditions__host_name_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__host_name_condition *)

type azurerm_cdn_frontdoor_rule__conditions__http_version_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__http_version_condition *)

type azurerm_cdn_frontdoor_rule__conditions__is_device_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__is_device_condition *)

type azurerm_cdn_frontdoor_rule__conditions__post_args_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  post_args_name : string prop;  (** post_args_name *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__post_args_condition *)

type azurerm_cdn_frontdoor_rule__conditions__query_string_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__query_string_condition *)

type azurerm_cdn_frontdoor_rule__conditions__remote_address_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__remote_address_condition *)

type azurerm_cdn_frontdoor_rule__conditions__request_body_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__request_body_condition *)

type azurerm_cdn_frontdoor_rule__conditions__request_header_condition = {
  header_name : string prop;  (** header_name *)
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__request_header_condition *)

type azurerm_cdn_frontdoor_rule__conditions__request_method_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__request_method_condition *)

type azurerm_cdn_frontdoor_rule__conditions__request_scheme_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__request_scheme_condition *)

type azurerm_cdn_frontdoor_rule__conditions__request_uri_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__request_uri_condition *)

type azurerm_cdn_frontdoor_rule__conditions__server_port_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__server_port_condition *)

type azurerm_cdn_frontdoor_rule__conditions__socket_address_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__socket_address_condition *)

type azurerm_cdn_frontdoor_rule__conditions__ssl_protocol_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__ssl_protocol_condition *)

type azurerm_cdn_frontdoor_rule__conditions__url_file_extension_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__url_file_extension_condition *)

type azurerm_cdn_frontdoor_rule__conditions__url_filename_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__conditions__url_filename_condition *)

type azurerm_cdn_frontdoor_rule__conditions__url_path_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule__timeouts *)

type azurerm_cdn_frontdoor_rule = {
  behavior_on_match : string prop option; [@option]
      (** behavior_on_match *)
  cdn_frontdoor_rule_set_id : string prop;
      (** cdn_frontdoor_rule_set_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  order : float prop;  (** order *)
  actions : azurerm_cdn_frontdoor_rule__actions list;
  conditions : azurerm_cdn_frontdoor_rule__conditions list;
  timeouts : azurerm_cdn_frontdoor_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule *)

let azurerm_cdn_frontdoor_rule ?behavior_on_match ?id ?timeouts
    ~cdn_frontdoor_rule_set_id ~name ~order ~actions ~conditions
    __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_rule" in
  let __resource =
    {
      behavior_on_match;
      cdn_frontdoor_rule_set_id;
      id;
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
