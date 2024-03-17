(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_signalr_service__cors = {
  allowed_origins : string prop list;  (** allowed_origins *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service__cors *)

type azurerm_signalr_service__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service__identity *)

type azurerm_signalr_service__live_trace = {
  connectivity_logs_enabled : bool prop option; [@option]
      (** connectivity_logs_enabled *)
  enabled : bool prop option; [@option]  (** enabled *)
  http_request_logs_enabled : bool prop option; [@option]
      (** http_request_logs_enabled *)
  messaging_logs_enabled : bool prop option; [@option]
      (** messaging_logs_enabled *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service__live_trace *)

type azurerm_signalr_service__sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service__sku *)

type azurerm_signalr_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service__timeouts *)

type azurerm_signalr_service__upstream_endpoint = {
  category_pattern : string prop list;  (** category_pattern *)
  event_pattern : string prop list;  (** event_pattern *)
  hub_pattern : string prop list;  (** hub_pattern *)
  url_template : string prop;  (** url_template *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service__upstream_endpoint *)

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
  cors : azurerm_signalr_service__cors list;
  identity : azurerm_signalr_service__identity list;
  live_trace : azurerm_signalr_service__live_trace list;
  sku : azurerm_signalr_service__sku list;
  timeouts : azurerm_signalr_service__timeouts option;
  upstream_endpoint : azurerm_signalr_service__upstream_endpoint list;
}
[@@deriving yojson_of]
(** azurerm_signalr_service *)

let azurerm_signalr_service ?aad_auth_enabled
    ?connectivity_logs_enabled ?http_request_logs_enabled ?id
    ?live_trace_enabled ?local_auth_enabled ?messaging_logs_enabled
    ?public_network_access_enabled
    ?serverless_connection_timeout_in_seconds ?service_mode ?tags
    ?tls_client_cert_enabled ?timeouts ~location ~name
    ~resource_group_name ~cors ~identity ~live_trace ~sku
    ~upstream_endpoint __resource_id =
  let __resource_type = "azurerm_signalr_service" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_signalr_service __resource);
  ()
