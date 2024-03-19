(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type delivery_rule__cache_expiration_action = {
  behavior : string prop;  (** behavior *)
  duration : string prop option; [@option]  (** duration *)
}
[@@deriving yojson_of]
(** delivery_rule__cache_expiration_action *)

type delivery_rule__cache_key_query_string_action = {
  behavior : string prop;  (** behavior *)
  parameters : string prop option; [@option]  (** parameters *)
}
[@@deriving yojson_of]
(** delivery_rule__cache_key_query_string_action *)

type delivery_rule__cookies_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  selector : string prop;  (** selector *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** delivery_rule__cookies_condition *)

type delivery_rule__device_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** delivery_rule__device_condition *)

type delivery_rule__http_version_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** delivery_rule__http_version_condition *)

type delivery_rule__modify_request_header_action = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** delivery_rule__modify_request_header_action *)

type delivery_rule__modify_response_header_action = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** delivery_rule__modify_response_header_action *)

type delivery_rule__post_arg_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  selector : string prop;  (** selector *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** delivery_rule__post_arg_condition *)

type delivery_rule__query_string_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** delivery_rule__query_string_condition *)

type delivery_rule__remote_address_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
}
[@@deriving yojson_of]
(** delivery_rule__remote_address_condition *)

type delivery_rule__request_body_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** delivery_rule__request_body_condition *)

type delivery_rule__request_header_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  selector : string prop;  (** selector *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** delivery_rule__request_header_condition *)

type delivery_rule__request_method_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** delivery_rule__request_method_condition *)

type delivery_rule__request_scheme_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** delivery_rule__request_scheme_condition *)

type delivery_rule__request_uri_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** delivery_rule__request_uri_condition *)

type delivery_rule__url_file_extension_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** delivery_rule__url_file_extension_condition *)

type delivery_rule__url_file_name_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** delivery_rule__url_file_name_condition *)

type delivery_rule__url_path_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** delivery_rule__url_path_condition *)

type delivery_rule__url_redirect_action = {
  fragment : string prop option; [@option]  (** fragment *)
  hostname : string prop option; [@option]  (** hostname *)
  path : string prop option; [@option]  (** path *)
  protocol : string prop option; [@option]  (** protocol *)
  query_string : string prop option; [@option]  (** query_string *)
  redirect_type : string prop;  (** redirect_type *)
}
[@@deriving yojson_of]
(** delivery_rule__url_redirect_action *)

type delivery_rule__url_rewrite_action = {
  destination : string prop;  (** destination *)
  preserve_unmatched_path : bool prop option; [@option]
      (** preserve_unmatched_path *)
  source_pattern : string prop;  (** source_pattern *)
}
[@@deriving yojson_of]
(** delivery_rule__url_rewrite_action *)

type delivery_rule = {
  name : string prop;  (** name *)
  order : float prop;  (** order *)
  cache_expiration_action :
    delivery_rule__cache_expiration_action list;
  cache_key_query_string_action :
    delivery_rule__cache_key_query_string_action list;
  cookies_condition : delivery_rule__cookies_condition list;
  device_condition : delivery_rule__device_condition list;
  http_version_condition :
    delivery_rule__http_version_condition list;
  modify_request_header_action :
    delivery_rule__modify_request_header_action list;
  modify_response_header_action :
    delivery_rule__modify_response_header_action list;
  post_arg_condition : delivery_rule__post_arg_condition list;
  query_string_condition :
    delivery_rule__query_string_condition list;
  remote_address_condition :
    delivery_rule__remote_address_condition list;
  request_body_condition :
    delivery_rule__request_body_condition list;
  request_header_condition :
    delivery_rule__request_header_condition list;
  request_method_condition :
    delivery_rule__request_method_condition list;
  request_scheme_condition :
    delivery_rule__request_scheme_condition list;
  request_uri_condition : delivery_rule__request_uri_condition list;
  url_file_extension_condition :
    delivery_rule__url_file_extension_condition list;
  url_file_name_condition :
    delivery_rule__url_file_name_condition list;
  url_path_condition : delivery_rule__url_path_condition list;
  url_redirect_action : delivery_rule__url_redirect_action list;
  url_rewrite_action : delivery_rule__url_rewrite_action list;
}
[@@deriving yojson_of]
(** delivery_rule *)

type geo_filter = {
  action : string prop;  (** action *)
  country_codes : string prop list;  (** country_codes *)
  relative_path : string prop;  (** relative_path *)
}
[@@deriving yojson_of]
(** geo_filter *)

type global_delivery_rule__cache_expiration_action = {
  behavior : string prop;  (** behavior *)
  duration : string prop option; [@option]  (** duration *)
}
[@@deriving yojson_of]
(** global_delivery_rule__cache_expiration_action *)

type global_delivery_rule__cache_key_query_string_action = {
  behavior : string prop;  (** behavior *)
  parameters : string prop option; [@option]  (** parameters *)
}
[@@deriving yojson_of]
(** global_delivery_rule__cache_key_query_string_action *)

type global_delivery_rule__modify_request_header_action = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** global_delivery_rule__modify_request_header_action *)

type global_delivery_rule__modify_response_header_action = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** global_delivery_rule__modify_response_header_action *)

type global_delivery_rule__url_redirect_action = {
  fragment : string prop option; [@option]  (** fragment *)
  hostname : string prop option; [@option]  (** hostname *)
  path : string prop option; [@option]  (** path *)
  protocol : string prop option; [@option]  (** protocol *)
  query_string : string prop option; [@option]  (** query_string *)
  redirect_type : string prop;  (** redirect_type *)
}
[@@deriving yojson_of]
(** global_delivery_rule__url_redirect_action *)

type global_delivery_rule__url_rewrite_action = {
  destination : string prop;  (** destination *)
  preserve_unmatched_path : bool prop option; [@option]
      (** preserve_unmatched_path *)
  source_pattern : string prop;  (** source_pattern *)
}
[@@deriving yojson_of]
(** global_delivery_rule__url_rewrite_action *)

type global_delivery_rule = {
  cache_expiration_action :
    global_delivery_rule__cache_expiration_action list;
  cache_key_query_string_action :
    global_delivery_rule__cache_key_query_string_action list;
  modify_request_header_action :
    global_delivery_rule__modify_request_header_action list;
  modify_response_header_action :
    global_delivery_rule__modify_response_header_action list;
  url_redirect_action :
    global_delivery_rule__url_redirect_action list;
  url_rewrite_action : global_delivery_rule__url_rewrite_action list;
}
[@@deriving yojson_of]
(** global_delivery_rule *)

type origin = {
  host_name : string prop;  (** host_name *)
  http_port : float prop option; [@option]  (** http_port *)
  https_port : float prop option; [@option]  (** https_port *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** origin *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cdn_endpoint = {
  content_types_to_compress : string prop list option; [@option]
      (** content_types_to_compress *)
  id : string prop option; [@option]  (** id *)
  is_compression_enabled : bool prop option; [@option]
      (** is_compression_enabled *)
  is_http_allowed : bool prop option; [@option]
      (** is_http_allowed *)
  is_https_allowed : bool prop option; [@option]
      (** is_https_allowed *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  optimization_type : string prop option; [@option]
      (** optimization_type *)
  origin_host_header : string prop option; [@option]
      (** origin_host_header *)
  origin_path : string prop option; [@option]  (** origin_path *)
  probe_path : string prop option; [@option]  (** probe_path *)
  profile_name : string prop;  (** profile_name *)
  querystring_caching_behaviour : string prop option; [@option]
      (** querystring_caching_behaviour *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  delivery_rule : delivery_rule list;
  geo_filter : geo_filter list;
  global_delivery_rule : global_delivery_rule list;
  origin : origin list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint *)

let delivery_rule__cache_expiration_action ?duration ~behavior () :
    delivery_rule__cache_expiration_action =
  { behavior; duration }

let delivery_rule__cache_key_query_string_action ?parameters
    ~behavior () : delivery_rule__cache_key_query_string_action =
  { behavior; parameters }

let delivery_rule__cookies_condition ?match_values ?negate_condition
    ?transforms ~operator ~selector () :
    delivery_rule__cookies_condition =
  { match_values; negate_condition; operator; selector; transforms }

let delivery_rule__device_condition ?negate_condition ?operator
    ~match_values () : delivery_rule__device_condition =
  { match_values; negate_condition; operator }

let delivery_rule__http_version_condition ?negate_condition ?operator
    ~match_values () : delivery_rule__http_version_condition =
  { match_values; negate_condition; operator }

let delivery_rule__modify_request_header_action ?value ~action ~name
    () : delivery_rule__modify_request_header_action =
  { action; name; value }

let delivery_rule__modify_response_header_action ?value ~action ~name
    () : delivery_rule__modify_response_header_action =
  { action; name; value }

let delivery_rule__post_arg_condition ?match_values ?negate_condition
    ?transforms ~operator ~selector () :
    delivery_rule__post_arg_condition =
  { match_values; negate_condition; operator; selector; transforms }

let delivery_rule__query_string_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    delivery_rule__query_string_condition =
  { match_values; negate_condition; operator; transforms }

let delivery_rule__remote_address_condition ?match_values
    ?negate_condition ~operator () :
    delivery_rule__remote_address_condition =
  { match_values; negate_condition; operator }

let delivery_rule__request_body_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    delivery_rule__request_body_condition =
  { match_values; negate_condition; operator; transforms }

let delivery_rule__request_header_condition ?match_values
    ?negate_condition ?transforms ~operator ~selector () :
    delivery_rule__request_header_condition =
  { match_values; negate_condition; operator; selector; transforms }

let delivery_rule__request_method_condition ?negate_condition
    ?operator ~match_values () :
    delivery_rule__request_method_condition =
  { match_values; negate_condition; operator }

let delivery_rule__request_scheme_condition ?negate_condition
    ?operator ~match_values () :
    delivery_rule__request_scheme_condition =
  { match_values; negate_condition; operator }

let delivery_rule__request_uri_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    delivery_rule__request_uri_condition =
  { match_values; negate_condition; operator; transforms }

let delivery_rule__url_file_extension_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    delivery_rule__url_file_extension_condition =
  { match_values; negate_condition; operator; transforms }

let delivery_rule__url_file_name_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    delivery_rule__url_file_name_condition =
  { match_values; negate_condition; operator; transforms }

let delivery_rule__url_path_condition ?match_values ?negate_condition
    ?transforms ~operator () : delivery_rule__url_path_condition =
  { match_values; negate_condition; operator; transforms }

let delivery_rule__url_redirect_action ?fragment ?hostname ?path
    ?protocol ?query_string ~redirect_type () :
    delivery_rule__url_redirect_action =
  { fragment; hostname; path; protocol; query_string; redirect_type }

let delivery_rule__url_rewrite_action ?preserve_unmatched_path
    ~destination ~source_pattern () :
    delivery_rule__url_rewrite_action =
  { destination; preserve_unmatched_path; source_pattern }

let delivery_rule ~name ~order ~cache_expiration_action
    ~cache_key_query_string_action ~cookies_condition
    ~device_condition ~http_version_condition
    ~modify_request_header_action ~modify_response_header_action
    ~post_arg_condition ~query_string_condition
    ~remote_address_condition ~request_body_condition
    ~request_header_condition ~request_method_condition
    ~request_scheme_condition ~request_uri_condition
    ~url_file_extension_condition ~url_file_name_condition
    ~url_path_condition ~url_redirect_action ~url_rewrite_action () :
    delivery_rule =
  {
    name;
    order;
    cache_expiration_action;
    cache_key_query_string_action;
    cookies_condition;
    device_condition;
    http_version_condition;
    modify_request_header_action;
    modify_response_header_action;
    post_arg_condition;
    query_string_condition;
    remote_address_condition;
    request_body_condition;
    request_header_condition;
    request_method_condition;
    request_scheme_condition;
    request_uri_condition;
    url_file_extension_condition;
    url_file_name_condition;
    url_path_condition;
    url_redirect_action;
    url_rewrite_action;
  }

let geo_filter ~action ~country_codes ~relative_path () : geo_filter
    =
  { action; country_codes; relative_path }

let global_delivery_rule__cache_expiration_action ?duration ~behavior
    () : global_delivery_rule__cache_expiration_action =
  { behavior; duration }

let global_delivery_rule__cache_key_query_string_action ?parameters
    ~behavior () :
    global_delivery_rule__cache_key_query_string_action =
  { behavior; parameters }

let global_delivery_rule__modify_request_header_action ?value ~action
    ~name () : global_delivery_rule__modify_request_header_action =
  { action; name; value }

let global_delivery_rule__modify_response_header_action ?value
    ~action ~name () :
    global_delivery_rule__modify_response_header_action =
  { action; name; value }

let global_delivery_rule__url_redirect_action ?fragment ?hostname
    ?path ?protocol ?query_string ~redirect_type () :
    global_delivery_rule__url_redirect_action =
  { fragment; hostname; path; protocol; query_string; redirect_type }

let global_delivery_rule__url_rewrite_action ?preserve_unmatched_path
    ~destination ~source_pattern () :
    global_delivery_rule__url_rewrite_action =
  { destination; preserve_unmatched_path; source_pattern }

let global_delivery_rule ~cache_expiration_action
    ~cache_key_query_string_action ~modify_request_header_action
    ~modify_response_header_action ~url_redirect_action
    ~url_rewrite_action () : global_delivery_rule =
  {
    cache_expiration_action;
    cache_key_query_string_action;
    modify_request_header_action;
    modify_response_header_action;
    url_redirect_action;
    url_rewrite_action;
  }

let origin ?http_port ?https_port ~host_name ~name () : origin =
  { host_name; http_port; https_port; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cdn_endpoint ?content_types_to_compress ?id
    ?is_compression_enabled ?is_http_allowed ?is_https_allowed
    ?optimization_type ?origin_host_header ?origin_path ?probe_path
    ?querystring_caching_behaviour ?tags ?timeouts ~location ~name
    ~profile_name ~resource_group_name ~delivery_rule ~geo_filter
    ~global_delivery_rule ~origin () : azurerm_cdn_endpoint =
  {
    content_types_to_compress;
    id;
    is_compression_enabled;
    is_http_allowed;
    is_https_allowed;
    location;
    name;
    optimization_type;
    origin_host_header;
    origin_path;
    probe_path;
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

type t = {
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

let register ?tf_module ?content_types_to_compress ?id
    ?is_compression_enabled ?is_http_allowed ?is_https_allowed
    ?optimization_type ?origin_host_header ?origin_path ?probe_path
    ?querystring_caching_behaviour ?tags ?timeouts ~location ~name
    ~profile_name ~resource_group_name ~delivery_rule ~geo_filter
    ~global_delivery_rule ~origin __resource_id =
  let __resource_type = "azurerm_cdn_endpoint" in
  let __resource =
    azurerm_cdn_endpoint ?content_types_to_compress ?id
      ?is_compression_enabled ?is_http_allowed ?is_https_allowed
      ?optimization_type ?origin_host_header ?origin_path ?probe_path
      ?querystring_caching_behaviour ?tags ?timeouts ~location ~name
      ~profile_name ~resource_group_name ~delivery_rule ~geo_filter
      ~global_delivery_rule ~origin ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_endpoint __resource);
  let __resource_attributes =
    ({
       content_types_to_compress =
         Prop.computed __resource_type __resource_id
           "content_types_to_compress";
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       id = Prop.computed __resource_type __resource_id "id";
       is_compression_enabled =
         Prop.computed __resource_type __resource_id
           "is_compression_enabled";
       is_http_allowed =
         Prop.computed __resource_type __resource_id
           "is_http_allowed";
       is_https_allowed =
         Prop.computed __resource_type __resource_id
           "is_https_allowed";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       optimization_type =
         Prop.computed __resource_type __resource_id
           "optimization_type";
       origin_host_header =
         Prop.computed __resource_type __resource_id
           "origin_host_header";
       origin_path =
         Prop.computed __resource_type __resource_id "origin_path";
       probe_path =
         Prop.computed __resource_type __resource_id "probe_path";
       profile_name =
         Prop.computed __resource_type __resource_id "profile_name";
       querystring_caching_behaviour =
         Prop.computed __resource_type __resource_id
           "querystring_caching_behaviour";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
