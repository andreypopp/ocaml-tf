(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_signalr_service__cors = {
  allowed_origins : string list;  (** allowed_origins *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service__cors *)

type azurerm_signalr_service__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service__identity *)

type azurerm_signalr_service__live_trace = {
  connectivity_logs_enabled : bool option; [@option]
      (** connectivity_logs_enabled *)
  enabled : bool option; [@option]  (** enabled *)
  http_request_logs_enabled : bool option; [@option]
      (** http_request_logs_enabled *)
  messaging_logs_enabled : bool option; [@option]
      (** messaging_logs_enabled *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service__live_trace *)

type azurerm_signalr_service__sku = {
  capacity : float;  (** capacity *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service__sku *)

type azurerm_signalr_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service__timeouts *)

type azurerm_signalr_service__upstream_endpoint = {
  category_pattern : string list;  (** category_pattern *)
  event_pattern : string list;  (** event_pattern *)
  hub_pattern : string list;  (** hub_pattern *)
  url_template : string;  (** url_template *)
  user_assigned_identity_id : string option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service__upstream_endpoint *)

type azurerm_signalr_service = {
  aad_auth_enabled : bool option; [@option]  (** aad_auth_enabled *)
  connectivity_logs_enabled : bool option; [@option]
      (** connectivity_logs_enabled *)
  http_request_logs_enabled : bool option; [@option]
      (** http_request_logs_enabled *)
  live_trace_enabled : bool option; [@option]
      (** live_trace_enabled *)
  local_auth_enabled : bool option; [@option]
      (** local_auth_enabled *)
  location : string;  (** location *)
  messaging_logs_enabled : bool option; [@option]
      (** messaging_logs_enabled *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  serverless_connection_timeout_in_seconds : float option; [@option]
      (** serverless_connection_timeout_in_seconds *)
  service_mode : string option; [@option]  (** service_mode *)
  tags : (string * string) list option; [@option]  (** tags *)
  tls_client_cert_enabled : bool option; [@option]
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
    ?connectivity_logs_enabled ?http_request_logs_enabled
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
