(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_web_pubsub__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub__identity *)

type azurerm_web_pubsub__live_trace = {
  connectivity_logs_enabled : bool prop option; [@option]
      (** connectivity_logs_enabled *)
  enabled : bool prop option; [@option]  (** enabled *)
  http_request_logs_enabled : bool prop option; [@option]
      (** http_request_logs_enabled *)
  messaging_logs_enabled : bool prop option; [@option]
      (** messaging_logs_enabled *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub__live_trace *)

type azurerm_web_pubsub__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub__timeouts *)

type azurerm_web_pubsub = {
  aad_auth_enabled : bool prop option; [@option]
      (** aad_auth_enabled *)
  capacity : float prop option; [@option]  (** capacity *)
  id : string prop option; [@option]  (** id *)
  local_auth_enabled : bool prop option; [@option]
      (** local_auth_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tls_client_cert_enabled : bool prop option; [@option]
      (** tls_client_cert_enabled *)
  identity : azurerm_web_pubsub__identity list;
  live_trace : azurerm_web_pubsub__live_trace list;
  timeouts : azurerm_web_pubsub__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_pubsub *)

let azurerm_web_pubsub ?aad_auth_enabled ?capacity ?id
    ?local_auth_enabled ?public_network_access_enabled ?tags
    ?tls_client_cert_enabled ?timeouts ~location ~name
    ~resource_group_name ~sku ~identity ~live_trace __resource_id =
  let __resource_type = "azurerm_web_pubsub" in
  let __resource =
    {
      aad_auth_enabled;
      capacity;
      id;
      local_auth_enabled;
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
      sku;
      tags;
      tls_client_cert_enabled;
      identity;
      live_trace;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_pubsub __resource);
  ()
