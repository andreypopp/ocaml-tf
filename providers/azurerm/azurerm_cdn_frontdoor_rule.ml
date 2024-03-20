(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type actions__request_header_action = {
  header_action : string prop;  (** header_action *)
  header_name : string prop;  (** header_name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** actions__request_header_action *)

type actions__response_header_action = {
  header_action : string prop;  (** header_action *)
  header_name : string prop;  (** header_name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** actions__response_header_action *)

type actions__route_configuration_override_action = {
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
(** actions__route_configuration_override_action *)

type actions__url_redirect_action = {
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
(** actions__url_redirect_action *)

type actions__url_rewrite_action = {
  destination : string prop;  (** destination *)
  preserve_unmatched_path : bool prop option; [@option]
      (** preserve_unmatched_path *)
  source_pattern : string prop;  (** source_pattern *)
}
[@@deriving yojson_of]
(** actions__url_rewrite_action *)

type actions = {
  request_header_action : actions__request_header_action list;
  response_header_action : actions__response_header_action list;
  route_configuration_override_action :
    actions__route_configuration_override_action list;
  url_redirect_action : actions__url_redirect_action list;
  url_rewrite_action : actions__url_rewrite_action list;
}
[@@deriving yojson_of]
(** actions *)

type conditions__client_port_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
}
[@@deriving yojson_of]
(** conditions__client_port_condition *)

type conditions__cookies_condition = {
  cookie_name : string prop;  (** cookie_name *)
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** conditions__cookies_condition *)

type conditions__host_name_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** conditions__host_name_condition *)

type conditions__http_version_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** conditions__http_version_condition *)

type conditions__is_device_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** conditions__is_device_condition *)

type conditions__post_args_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  post_args_name : string prop;  (** post_args_name *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** conditions__post_args_condition *)

type conditions__query_string_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** conditions__query_string_condition *)

type conditions__remote_address_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** conditions__remote_address_condition *)

type conditions__request_body_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** conditions__request_body_condition *)

type conditions__request_header_condition = {
  header_name : string prop;  (** header_name *)
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** conditions__request_header_condition *)

type conditions__request_method_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** conditions__request_method_condition *)

type conditions__request_scheme_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** conditions__request_scheme_condition *)

type conditions__request_uri_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** conditions__request_uri_condition *)

type conditions__server_port_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
}
[@@deriving yojson_of]
(** conditions__server_port_condition *)

type conditions__socket_address_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** conditions__socket_address_condition *)

type conditions__ssl_protocol_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop option; [@option]  (** operator *)
}
[@@deriving yojson_of]
(** conditions__ssl_protocol_condition *)

type conditions__url_file_extension_condition = {
  match_values : string prop list;  (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** conditions__url_file_extension_condition *)

type conditions__url_filename_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** conditions__url_filename_condition *)

type conditions__url_path_condition = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negate_condition : bool prop option; [@option]
      (** negate_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
}
[@@deriving yojson_of]
(** conditions__url_path_condition *)

type conditions = {
  client_port_condition : conditions__client_port_condition list;
  cookies_condition : conditions__cookies_condition list;
  host_name_condition : conditions__host_name_condition list;
  http_version_condition : conditions__http_version_condition list;
  is_device_condition : conditions__is_device_condition list;
  post_args_condition : conditions__post_args_condition list;
  query_string_condition : conditions__query_string_condition list;
  remote_address_condition :
    conditions__remote_address_condition list;
  request_body_condition : conditions__request_body_condition list;
  request_header_condition :
    conditions__request_header_condition list;
  request_method_condition :
    conditions__request_method_condition list;
  request_scheme_condition :
    conditions__request_scheme_condition list;
  request_uri_condition : conditions__request_uri_condition list;
  server_port_condition : conditions__server_port_condition list;
  socket_address_condition :
    conditions__socket_address_condition list;
  ssl_protocol_condition : conditions__ssl_protocol_condition list;
  url_file_extension_condition :
    conditions__url_file_extension_condition list;
  url_filename_condition : conditions__url_filename_condition list;
  url_path_condition : conditions__url_path_condition list;
}
[@@deriving yojson_of]
(** conditions *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cdn_frontdoor_rule = {
  behavior_on_match : string prop option; [@option]
      (** behavior_on_match *)
  cdn_frontdoor_rule_set_id : string prop;
      (** cdn_frontdoor_rule_set_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  order : float prop;  (** order *)
  actions : actions list;
  conditions : conditions list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule *)

let actions__request_header_action ?value ~header_action ~header_name
    () : actions__request_header_action =
  { header_action; header_name; value }

let actions__response_header_action ?value ~header_action
    ~header_name () : actions__response_header_action =
  { header_action; header_name; value }

let actions__route_configuration_override_action ?cache_behavior
    ?cache_duration ?cdn_frontdoor_origin_group_id
    ?compression_enabled ?forwarding_protocol
    ?query_string_caching_behavior ?query_string_parameters () :
    actions__route_configuration_override_action =
  {
    cache_behavior;
    cache_duration;
    cdn_frontdoor_origin_group_id;
    compression_enabled;
    forwarding_protocol;
    query_string_caching_behavior;
    query_string_parameters;
  }

let actions__url_redirect_action ?destination_fragment
    ?destination_path ?query_string ?redirect_protocol
    ~destination_hostname ~redirect_type () :
    actions__url_redirect_action =
  {
    destination_fragment;
    destination_hostname;
    destination_path;
    query_string;
    redirect_protocol;
    redirect_type;
  }

let actions__url_rewrite_action ?preserve_unmatched_path ~destination
    ~source_pattern () : actions__url_rewrite_action =
  { destination; preserve_unmatched_path; source_pattern }

let actions ~request_header_action ~response_header_action
    ~route_configuration_override_action ~url_redirect_action
    ~url_rewrite_action () : actions =
  {
    request_header_action;
    response_header_action;
    route_configuration_override_action;
    url_redirect_action;
    url_rewrite_action;
  }

let conditions__client_port_condition ?match_values ?negate_condition
    ~operator () : conditions__client_port_condition =
  { match_values; negate_condition; operator }

let conditions__cookies_condition ?match_values ?negate_condition
    ?transforms ~cookie_name ~operator () :
    conditions__cookies_condition =
  {
    cookie_name;
    match_values;
    negate_condition;
    operator;
    transforms;
  }

let conditions__host_name_condition ?match_values ?negate_condition
    ?transforms ~operator () : conditions__host_name_condition =
  { match_values; negate_condition; operator; transforms }

let conditions__http_version_condition ?negate_condition ?operator
    ~match_values () : conditions__http_version_condition =
  { match_values; negate_condition; operator }

let conditions__is_device_condition ?match_values ?negate_condition
    ?operator () : conditions__is_device_condition =
  { match_values; negate_condition; operator }

let conditions__post_args_condition ?match_values ?negate_condition
    ?transforms ~operator ~post_args_name () :
    conditions__post_args_condition =
  {
    match_values;
    negate_condition;
    operator;
    post_args_name;
    transforms;
  }

let conditions__query_string_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    conditions__query_string_condition =
  { match_values; negate_condition; operator; transforms }

let conditions__remote_address_condition ?match_values
    ?negate_condition ?operator () :
    conditions__remote_address_condition =
  { match_values; negate_condition; operator }

let conditions__request_body_condition ?negate_condition ?transforms
    ~match_values ~operator () : conditions__request_body_condition =
  { match_values; negate_condition; operator; transforms }

let conditions__request_header_condition ?match_values
    ?negate_condition ?transforms ~header_name ~operator () :
    conditions__request_header_condition =
  {
    header_name;
    match_values;
    negate_condition;
    operator;
    transforms;
  }

let conditions__request_method_condition ?negate_condition ?operator
    ~match_values () : conditions__request_method_condition =
  { match_values; negate_condition; operator }

let conditions__request_scheme_condition ?match_values
    ?negate_condition ?operator () :
    conditions__request_scheme_condition =
  { match_values; negate_condition; operator }

let conditions__request_uri_condition ?match_values ?negate_condition
    ?transforms ~operator () : conditions__request_uri_condition =
  { match_values; negate_condition; operator; transforms }

let conditions__server_port_condition ?negate_condition ~match_values
    ~operator () : conditions__server_port_condition =
  { match_values; negate_condition; operator }

let conditions__socket_address_condition ?match_values
    ?negate_condition ?operator () :
    conditions__socket_address_condition =
  { match_values; negate_condition; operator }

let conditions__ssl_protocol_condition ?negate_condition ?operator
    ~match_values () : conditions__ssl_protocol_condition =
  { match_values; negate_condition; operator }

let conditions__url_file_extension_condition ?negate_condition
    ?transforms ~match_values ~operator () :
    conditions__url_file_extension_condition =
  { match_values; negate_condition; operator; transforms }

let conditions__url_filename_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    conditions__url_filename_condition =
  { match_values; negate_condition; operator; transforms }

let conditions__url_path_condition ?match_values ?negate_condition
    ?transforms ~operator () : conditions__url_path_condition =
  { match_values; negate_condition; operator; transforms }

let conditions ~client_port_condition ~cookies_condition
    ~host_name_condition ~http_version_condition ~is_device_condition
    ~post_args_condition ~query_string_condition
    ~remote_address_condition ~request_body_condition
    ~request_header_condition ~request_method_condition
    ~request_scheme_condition ~request_uri_condition
    ~server_port_condition ~socket_address_condition
    ~ssl_protocol_condition ~url_file_extension_condition
    ~url_filename_condition ~url_path_condition () : conditions =
  {
    client_port_condition;
    cookies_condition;
    host_name_condition;
    http_version_condition;
    is_device_condition;
    post_args_condition;
    query_string_condition;
    remote_address_condition;
    request_body_condition;
    request_header_condition;
    request_method_condition;
    request_scheme_condition;
    request_uri_condition;
    server_port_condition;
    socket_address_condition;
    ssl_protocol_condition;
    url_file_extension_condition;
    url_filename_condition;
    url_path_condition;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cdn_frontdoor_rule ?behavior_on_match ?id ?timeouts
    ~cdn_frontdoor_rule_set_id ~name ~order ~actions ~conditions () :
    azurerm_cdn_frontdoor_rule =
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

type t = {
  behavior_on_match : string prop;
  cdn_frontdoor_rule_set_id : string prop;
  cdn_frontdoor_rule_set_name : string prop;
  id : string prop;
  name : string prop;
  order : float prop;
}

let make ?behavior_on_match ?id ?timeouts ~cdn_frontdoor_rule_set_id
    ~name ~order ~actions ~conditions __id =
  let __type = "azurerm_cdn_frontdoor_rule" in
  let __attrs =
    ({
       behavior_on_match =
         Prop.computed __type __id "behavior_on_match";
       cdn_frontdoor_rule_set_id =
         Prop.computed __type __id "cdn_frontdoor_rule_set_id";
       cdn_frontdoor_rule_set_name =
         Prop.computed __type __id "cdn_frontdoor_rule_set_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       order = Prop.computed __type __id "order";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_rule
        (azurerm_cdn_frontdoor_rule ?behavior_on_match ?id ?timeouts
           ~cdn_frontdoor_rule_set_id ~name ~order ~actions
           ~conditions ());
    attrs = __attrs;
  }

let register ?tf_module ?behavior_on_match ?id ?timeouts
    ~cdn_frontdoor_rule_set_id ~name ~order ~actions ~conditions __id
    =
  let (r : _ Tf_core.resource) =
    make ?behavior_on_match ?id ?timeouts ~cdn_frontdoor_rule_set_id
      ~name ~order ~actions ~conditions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
