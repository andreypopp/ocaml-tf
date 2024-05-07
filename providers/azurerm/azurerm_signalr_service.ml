(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors = { allowed_origins : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : cors) -> ()

let yojson_of_cors =
  (function
   | { allowed_origins = v_allowed_origins } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_origins
         in
         ("allowed_origins", arg) :: bnds
       in
       `Assoc bnds
    : cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type live_trace = {
  connectivity_logs_enabled : bool prop option; [@option]
  enabled : bool prop option; [@option]
  http_request_logs_enabled : bool prop option; [@option]
  messaging_logs_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : live_trace) -> ()

let yojson_of_live_trace =
  (function
   | {
       connectivity_logs_enabled = v_connectivity_logs_enabled;
       enabled = v_enabled;
       http_request_logs_enabled = v_http_request_logs_enabled;
       messaging_logs_enabled = v_messaging_logs_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_messaging_logs_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "messaging_logs_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_request_logs_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "http_request_logs_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connectivity_logs_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "connectivity_logs_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : live_trace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_live_trace

[@@@deriving.end]

type sku = { capacity : float prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | { capacity = v_capacity; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type upstream_endpoint = {
  category_pattern : string prop list;
  event_pattern : string prop list;
  hub_pattern : string prop list;
  url_template : string prop;
  user_assigned_identity_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : upstream_endpoint) -> ()

let yojson_of_upstream_endpoint =
  (function
   | {
       category_pattern = v_category_pattern;
       event_pattern = v_event_pattern;
       hub_pattern = v_hub_pattern;
       url_template = v_url_template;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url_template in
         ("url_template", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_hub_pattern
         in
         ("hub_pattern", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_event_pattern
         in
         ("event_pattern", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_category_pattern
         in
         ("category_pattern", arg) :: bnds
       in
       `Assoc bnds
    : upstream_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_upstream_endpoint

[@@@deriving.end]

type azurerm_signalr_service = {
  aad_auth_enabled : bool prop option; [@option]
  connectivity_logs_enabled : bool prop option; [@option]
  http_request_logs_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  live_trace_enabled : bool prop option; [@option]
  local_auth_enabled : bool prop option; [@option]
  location : string prop;
  messaging_logs_enabled : bool prop option; [@option]
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  serverless_connection_timeout_in_seconds : float prop option;
      [@option]
  service_mode : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tls_client_cert_enabled : bool prop option; [@option]
  cors : cors list;
  identity : identity list;
  live_trace : live_trace list;
  sku : sku list;
  timeouts : timeouts option;
  upstream_endpoint : upstream_endpoint list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_signalr_service) -> ()

let yojson_of_azurerm_signalr_service =
  (function
   | {
       aad_auth_enabled = v_aad_auth_enabled;
       connectivity_logs_enabled = v_connectivity_logs_enabled;
       http_request_logs_enabled = v_http_request_logs_enabled;
       id = v_id;
       live_trace_enabled = v_live_trace_enabled;
       local_auth_enabled = v_local_auth_enabled;
       location = v_location;
       messaging_logs_enabled = v_messaging_logs_enabled;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       serverless_connection_timeout_in_seconds =
         v_serverless_connection_timeout_in_seconds;
       service_mode = v_service_mode;
       tags = v_tags;
       tls_client_cert_enabled = v_tls_client_cert_enabled;
       cors = v_cors;
       identity = v_identity;
       live_trace = v_live_trace;
       sku = v_sku;
       timeouts = v_timeouts;
       upstream_endpoint = v_upstream_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_upstream_endpoint
             v_upstream_endpoint
         in
         ("upstream_endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_sku v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_live_trace v_live_trace
         in
         ("live_trace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_cors v_cors in
         ("cors", arg) :: bnds
       in
       let bnds =
         match v_tls_client_cert_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls_client_cert_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_serverless_connection_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "serverless_connection_timeout_in_seconds", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_messaging_logs_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "messaging_logs_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_local_auth_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_auth_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_live_trace_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "live_trace_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_request_logs_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "http_request_logs_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connectivity_logs_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "connectivity_logs_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aad_auth_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "aad_auth_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_signalr_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_signalr_service

[@@@deriving.end]

let cors ~allowed_origins () : cors = { allowed_origins }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let live_trace ?connectivity_logs_enabled ?enabled
    ?http_request_logs_enabled ?messaging_logs_enabled () :
    live_trace =
  {
    connectivity_logs_enabled;
    enabled;
    http_request_logs_enabled;
    messaging_logs_enabled;
  }

let sku ~capacity ~name () : sku = { capacity; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let upstream_endpoint ?user_assigned_identity_id ~category_pattern
    ~event_pattern ~hub_pattern ~url_template () : upstream_endpoint
    =
  {
    category_pattern;
    event_pattern;
    hub_pattern;
    url_template;
    user_assigned_identity_id;
  }

let azurerm_signalr_service ?aad_auth_enabled
    ?connectivity_logs_enabled ?http_request_logs_enabled ?id
    ?live_trace_enabled ?local_auth_enabled ?messaging_logs_enabled
    ?public_network_access_enabled
    ?serverless_connection_timeout_in_seconds ?service_mode ?tags
    ?tls_client_cert_enabled ?(cors = []) ?(identity = [])
    ?(live_trace = []) ?timeouts ~location ~name ~resource_group_name
    ~sku ~upstream_endpoint () : azurerm_signalr_service =
  {
    aad_auth_enabled;
    connectivity_logs_enabled;
    http_request_logs_enabled;
    id;
    live_trace_enabled;
    local_auth_enabled;
    location;
    messaging_logs_enabled;
    name;
    public_network_access_enabled;
    resource_group_name;
    serverless_connection_timeout_in_seconds;
    service_mode;
    tags;
    tls_client_cert_enabled;
    cors;
    identity;
    live_trace;
    sku;
    timeouts;
    upstream_endpoint;
  }

type t = {
  tf_name : string;
  aad_auth_enabled : bool prop;
  connectivity_logs_enabled : bool prop;
  hostname : string prop;
  http_request_logs_enabled : bool prop;
  id : string prop;
  ip_address : string prop;
  live_trace_enabled : bool prop;
  local_auth_enabled : bool prop;
  location : string prop;
  messaging_logs_enabled : bool prop;
  name : string prop;
  primary_access_key : string prop;
  primary_connection_string : string prop;
  public_network_access_enabled : bool prop;
  public_port : float prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  secondary_connection_string : string prop;
  server_port : float prop;
  serverless_connection_timeout_in_seconds : float prop;
  service_mode : string prop;
  tags : (string * string) list prop;
  tls_client_cert_enabled : bool prop;
}

let make ?aad_auth_enabled ?connectivity_logs_enabled
    ?http_request_logs_enabled ?id ?live_trace_enabled
    ?local_auth_enabled ?messaging_logs_enabled
    ?public_network_access_enabled
    ?serverless_connection_timeout_in_seconds ?service_mode ?tags
    ?tls_client_cert_enabled ?(cors = []) ?(identity = [])
    ?(live_trace = []) ?timeouts ~location ~name ~resource_group_name
    ~sku ~upstream_endpoint __id =
  let __type = "azurerm_signalr_service" in
  let __attrs =
    ({
       tf_name = __id;
       aad_auth_enabled =
         Prop.computed __type __id "aad_auth_enabled";
       connectivity_logs_enabled =
         Prop.computed __type __id "connectivity_logs_enabled";
       hostname = Prop.computed __type __id "hostname";
       http_request_logs_enabled =
         Prop.computed __type __id "http_request_logs_enabled";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       live_trace_enabled =
         Prop.computed __type __id "live_trace_enabled";
       local_auth_enabled =
         Prop.computed __type __id "local_auth_enabled";
       location = Prop.computed __type __id "location";
       messaging_logs_enabled =
         Prop.computed __type __id "messaging_logs_enabled";
       name = Prop.computed __type __id "name";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       public_port = Prop.computed __type __id "public_port";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_access_key =
         Prop.computed __type __id "secondary_access_key";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       server_port = Prop.computed __type __id "server_port";
       serverless_connection_timeout_in_seconds =
         Prop.computed __type __id
           "serverless_connection_timeout_in_seconds";
       service_mode = Prop.computed __type __id "service_mode";
       tags = Prop.computed __type __id "tags";
       tls_client_cert_enabled =
         Prop.computed __type __id "tls_client_cert_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_signalr_service
        (azurerm_signalr_service ?aad_auth_enabled
           ?connectivity_logs_enabled ?http_request_logs_enabled ?id
           ?live_trace_enabled ?local_auth_enabled
           ?messaging_logs_enabled ?public_network_access_enabled
           ?serverless_connection_timeout_in_seconds ?service_mode
           ?tags ?tls_client_cert_enabled ~cors ~identity ~live_trace
           ?timeouts ~location ~name ~resource_group_name ~sku
           ~upstream_endpoint ());
    attrs = __attrs;
  }

let register ?tf_module ?aad_auth_enabled ?connectivity_logs_enabled
    ?http_request_logs_enabled ?id ?live_trace_enabled
    ?local_auth_enabled ?messaging_logs_enabled
    ?public_network_access_enabled
    ?serverless_connection_timeout_in_seconds ?service_mode ?tags
    ?tls_client_cert_enabled ?(cors = []) ?(identity = [])
    ?(live_trace = []) ?timeouts ~location ~name ~resource_group_name
    ~sku ~upstream_endpoint __id =
  let (r : _ Tf_core.resource) =
    make ?aad_auth_enabled ?connectivity_logs_enabled
      ?http_request_logs_enabled ?id ?live_trace_enabled
      ?local_auth_enabled ?messaging_logs_enabled
      ?public_network_access_enabled
      ?serverless_connection_timeout_in_seconds ?service_mode ?tags
      ?tls_client_cert_enabled ~cors ~identity ~live_trace ?timeouts
      ~location ~name ~resource_group_name ~sku ~upstream_endpoint
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
