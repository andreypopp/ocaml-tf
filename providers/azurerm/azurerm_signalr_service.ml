(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors = {
  allowed_origins : string prop list;  (** allowed_origins *)
}
[@@deriving yojson_of]
(** cors *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type live_trace = {
  connectivity_logs_enabled : bool prop option; [@option]
      (** connectivity_logs_enabled *)
  enabled : bool prop option; [@option]  (** enabled *)
  http_request_logs_enabled : bool prop option; [@option]
      (** http_request_logs_enabled *)
  messaging_logs_enabled : bool prop option; [@option]
      (** messaging_logs_enabled *)
}
[@@deriving yojson_of]
(** live_trace *)

type sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** sku *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type upstream_endpoint = {
  category_pattern : string prop list;  (** category_pattern *)
  event_pattern : string prop list;  (** event_pattern *)
  hub_pattern : string prop list;  (** hub_pattern *)
  url_template : string prop;  (** url_template *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** upstream_endpoint *)

type azurerm_signalr_service = {
  aad_auth_enabled : bool prop option; [@option]
      (** aad_auth_enabled *)
  connectivity_logs_enabled : bool prop option; [@option]
      (** connectivity_logs_enabled *)
  http_request_logs_enabled : bool prop option; [@option]
      (** http_request_logs_enabled *)
  id : string prop option; [@option]  (** id *)
  live_trace_enabled : bool prop option; [@option]
      (** live_trace_enabled *)
  local_auth_enabled : bool prop option; [@option]
      (** local_auth_enabled *)
  location : string prop;  (** location *)
  messaging_logs_enabled : bool prop option; [@option]
      (** messaging_logs_enabled *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  serverless_connection_timeout_in_seconds : float prop option;
      [@option]
      (** serverless_connection_timeout_in_seconds *)
  service_mode : string prop option; [@option]  (** service_mode *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tls_client_cert_enabled : bool prop option; [@option]
      (** tls_client_cert_enabled *)
  cors : cors list;
  identity : identity list;
  live_trace : live_trace list;
  sku : sku list;
  timeouts : timeouts option;
  upstream_endpoint : upstream_endpoint list;
}
[@@deriving yojson_of]
(** azurerm_signalr_service *)

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
    ?tls_client_cert_enabled ?timeouts ~location ~name
    ~resource_group_name ~cors ~identity ~live_trace ~sku
    ~upstream_endpoint () : azurerm_signalr_service =
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
    ?tls_client_cert_enabled ?timeouts ~location ~name
    ~resource_group_name ~cors ~identity ~live_trace ~sku
    ~upstream_endpoint __id =
  let __type = "azurerm_signalr_service" in
  let __attrs =
    ({
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
           ?tags ?tls_client_cert_enabled ?timeouts ~location ~name
           ~resource_group_name ~cors ~identity ~live_trace ~sku
           ~upstream_endpoint ());
    attrs = __attrs;
  }

let register ?tf_module ?aad_auth_enabled ?connectivity_logs_enabled
    ?http_request_logs_enabled ?id ?live_trace_enabled
    ?local_auth_enabled ?messaging_logs_enabled
    ?public_network_access_enabled
    ?serverless_connection_timeout_in_seconds ?service_mode ?tags
    ?tls_client_cert_enabled ?timeouts ~location ~name
    ~resource_group_name ~cors ~identity ~live_trace ~sku
    ~upstream_endpoint __id =
  let (r : _ Tf_core.resource) =
    make ?aad_auth_enabled ?connectivity_logs_enabled
      ?http_request_logs_enabled ?id ?live_trace_enabled
      ?local_auth_enabled ?messaging_logs_enabled
      ?public_network_access_enabled
      ?serverless_connection_timeout_in_seconds ?service_mode ?tags
      ?tls_client_cert_enabled ?timeouts ~location ~name
      ~resource_group_name ~cors ~identity ~live_trace ~sku
      ~upstream_endpoint __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
