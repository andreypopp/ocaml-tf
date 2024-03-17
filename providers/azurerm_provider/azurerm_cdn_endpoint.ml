(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_endpoint__delivery_rule__cache_expiration_action = {
  behavior : string;  (** behavior *)
  duration : string option; [@option]  (** duration *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__cache_expiration_action *)

type azurerm_cdn_endpoint__delivery_rule__cache_key_query_string_action = {
  behavior : string;  (** behavior *)
  parameters : string option; [@option]  (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__cache_key_query_string_action *)

type azurerm_cdn_endpoint__delivery_rule__cookies_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  selector : string;  (** selector *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__cookies_condition *)

type azurerm_cdn_endpoint__delivery_rule__device_condition = {
  match_values : string list;  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__device_condition *)

type azurerm_cdn_endpoint__delivery_rule__http_version_condition = {
  match_values : string list;  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__http_version_condition *)

type azurerm_cdn_endpoint__delivery_rule__modify_request_header_action = {
  action : string;  (** action *)
  name : string;  (** name *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__modify_request_header_action *)

type azurerm_cdn_endpoint__delivery_rule__modify_response_header_action = {
  action : string;  (** action *)
  name : string;  (** name *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__modify_response_header_action *)

type azurerm_cdn_endpoint__delivery_rule__post_arg_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  selector : string;  (** selector *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__post_arg_condition *)

type azurerm_cdn_endpoint__delivery_rule__query_string_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__query_string_condition *)

type azurerm_cdn_endpoint__delivery_rule__remote_address_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__remote_address_condition *)

type azurerm_cdn_endpoint__delivery_rule__request_body_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__request_body_condition *)

type azurerm_cdn_endpoint__delivery_rule__request_header_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  selector : string;  (** selector *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__request_header_condition *)

type azurerm_cdn_endpoint__delivery_rule__request_method_condition = {
  match_values : string list;  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__request_method_condition *)

type azurerm_cdn_endpoint__delivery_rule__request_scheme_condition = {
  match_values : string list;  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__request_scheme_condition *)

type azurerm_cdn_endpoint__delivery_rule__request_uri_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__request_uri_condition *)

type azurerm_cdn_endpoint__delivery_rule__url_file_extension_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__url_file_extension_condition *)

type azurerm_cdn_endpoint__delivery_rule__url_file_name_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__url_file_name_condition *)

type azurerm_cdn_endpoint__delivery_rule__url_path_condition = {
  match_values : string list option; [@option]  (** match_values *)
  negate_condition : bool option; [@option]  (** negate_condition *)
  operator : string;  (** operator *)
  transforms : string list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__url_path_condition *)

type azurerm_cdn_endpoint__delivery_rule__url_redirect_action = {
  fragment : string option; [@option]  (** fragment *)
  hostname : string option; [@option]  (** hostname *)
  path : string option; [@option]  (** path *)
  protocol : string option; [@option]  (** protocol *)
  query_string : string option; [@option]  (** query_string *)
  redirect_type : string;  (** redirect_type *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__url_redirect_action *)

type azurerm_cdn_endpoint__delivery_rule__url_rewrite_action = {
  destination : string;  (** destination *)
  preserve_unmatched_path : bool option; [@option]
      (** preserve_unmatched_path *)
  source_pattern : string;  (** source_pattern *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule__url_rewrite_action *)

type azurerm_cdn_endpoint__delivery_rule = {
  name : string;  (** name *)
  order : float;  (** order *)
  cache_expiration_action :
    azurerm_cdn_endpoint__delivery_rule__cache_expiration_action list;
  cache_key_query_string_action :
    azurerm_cdn_endpoint__delivery_rule__cache_key_query_string_action
    list;
  cookies_condition :
    azurerm_cdn_endpoint__delivery_rule__cookies_condition list;
  device_condition :
    azurerm_cdn_endpoint__delivery_rule__device_condition list;
  http_version_condition :
    azurerm_cdn_endpoint__delivery_rule__http_version_condition list;
  modify_request_header_action :
    azurerm_cdn_endpoint__delivery_rule__modify_request_header_action
    list;
  modify_response_header_action :
    azurerm_cdn_endpoint__delivery_rule__modify_response_header_action
    list;
  post_arg_condition :
    azurerm_cdn_endpoint__delivery_rule__post_arg_condition list;
  query_string_condition :
    azurerm_cdn_endpoint__delivery_rule__query_string_condition list;
  remote_address_condition :
    azurerm_cdn_endpoint__delivery_rule__remote_address_condition
    list;
  request_body_condition :
    azurerm_cdn_endpoint__delivery_rule__request_body_condition list;
  request_header_condition :
    azurerm_cdn_endpoint__delivery_rule__request_header_condition
    list;
  request_method_condition :
    azurerm_cdn_endpoint__delivery_rule__request_method_condition
    list;
  request_scheme_condition :
    azurerm_cdn_endpoint__delivery_rule__request_scheme_condition
    list;
  request_uri_condition :
    azurerm_cdn_endpoint__delivery_rule__request_uri_condition list;
  url_file_extension_condition :
    azurerm_cdn_endpoint__delivery_rule__url_file_extension_condition
    list;
  url_file_name_condition :
    azurerm_cdn_endpoint__delivery_rule__url_file_name_condition list;
  url_path_condition :
    azurerm_cdn_endpoint__delivery_rule__url_path_condition list;
  url_redirect_action :
    azurerm_cdn_endpoint__delivery_rule__url_redirect_action list;
  url_rewrite_action :
    azurerm_cdn_endpoint__delivery_rule__url_rewrite_action list;
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__delivery_rule *)

type azurerm_cdn_endpoint__geo_filter = {
  action : string;  (** action *)
  country_codes : string list;  (** country_codes *)
  relative_path : string;  (** relative_path *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__geo_filter *)

type azurerm_cdn_endpoint__global_delivery_rule__cache_expiration_action = {
  behavior : string;  (** behavior *)
  duration : string option; [@option]  (** duration *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__global_delivery_rule__cache_expiration_action *)

type azurerm_cdn_endpoint__global_delivery_rule__cache_key_query_string_action = {
  behavior : string;  (** behavior *)
  parameters : string option; [@option]  (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__global_delivery_rule__cache_key_query_string_action *)

type azurerm_cdn_endpoint__global_delivery_rule__modify_request_header_action = {
  action : string;  (** action *)
  name : string;  (** name *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__global_delivery_rule__modify_request_header_action *)

type azurerm_cdn_endpoint__global_delivery_rule__modify_response_header_action = {
  action : string;  (** action *)
  name : string;  (** name *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__global_delivery_rule__modify_response_header_action *)

type azurerm_cdn_endpoint__global_delivery_rule__url_redirect_action = {
  fragment : string option; [@option]  (** fragment *)
  hostname : string option; [@option]  (** hostname *)
  path : string option; [@option]  (** path *)
  protocol : string option; [@option]  (** protocol *)
  query_string : string option; [@option]  (** query_string *)
  redirect_type : string;  (** redirect_type *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__global_delivery_rule__url_redirect_action *)

type azurerm_cdn_endpoint__global_delivery_rule__url_rewrite_action = {
  destination : string;  (** destination *)
  preserve_unmatched_path : bool option; [@option]
      (** preserve_unmatched_path *)
  source_pattern : string;  (** source_pattern *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__global_delivery_rule__url_rewrite_action *)

type azurerm_cdn_endpoint__global_delivery_rule = {
  cache_expiration_action :
    azurerm_cdn_endpoint__global_delivery_rule__cache_expiration_action
    list;
  cache_key_query_string_action :
    azurerm_cdn_endpoint__global_delivery_rule__cache_key_query_string_action
    list;
  modify_request_header_action :
    azurerm_cdn_endpoint__global_delivery_rule__modify_request_header_action
    list;
  modify_response_header_action :
    azurerm_cdn_endpoint__global_delivery_rule__modify_response_header_action
    list;
  url_redirect_action :
    azurerm_cdn_endpoint__global_delivery_rule__url_redirect_action
    list;
  url_rewrite_action :
    azurerm_cdn_endpoint__global_delivery_rule__url_rewrite_action
    list;
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__global_delivery_rule *)

type azurerm_cdn_endpoint__origin = {
  host_name : string;  (** host_name *)
  http_port : float option; [@option]  (** http_port *)
  https_port : float option; [@option]  (** https_port *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__origin *)

type azurerm_cdn_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint__timeouts *)

type azurerm_cdn_endpoint = {
  is_compression_enabled : bool option; [@option]
      (** is_compression_enabled *)
  is_http_allowed : bool option; [@option]  (** is_http_allowed *)
  is_https_allowed : bool option; [@option]  (** is_https_allowed *)
  location : string;  (** location *)
  name : string;  (** name *)
  optimization_type : string option; [@option]
      (** optimization_type *)
  origin_host_header : string option; [@option]
      (** origin_host_header *)
  profile_name : string;  (** profile_name *)
  querystring_caching_behaviour : string option; [@option]
      (** querystring_caching_behaviour *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  delivery_rule : azurerm_cdn_endpoint__delivery_rule list;
  geo_filter : azurerm_cdn_endpoint__geo_filter list;
  global_delivery_rule :
    azurerm_cdn_endpoint__global_delivery_rule list;
  origin : azurerm_cdn_endpoint__origin list;
  timeouts : azurerm_cdn_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint *)

let azurerm_cdn_endpoint ?is_compression_enabled ?is_http_allowed
    ?is_https_allowed ?optimization_type ?origin_host_header
    ?querystring_caching_behaviour ?tags ?timeouts ~location ~name
    ~profile_name ~resource_group_name ~delivery_rule ~geo_filter
    ~global_delivery_rule ~origin __resource_id =
  let __resource_type = "azurerm_cdn_endpoint" in
  let __resource =
    {
      is_compression_enabled;
      is_http_allowed;
      is_https_allowed;
      location;
      name;
      optimization_type;
      origin_host_header;
      profile_name;
      querystring_caching_behaviour;
      resource_group_name;
      tags;
      delivery_rule;
      geo_filter;
      global_delivery_rule;
      origin;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_endpoint __resource);
  ()
