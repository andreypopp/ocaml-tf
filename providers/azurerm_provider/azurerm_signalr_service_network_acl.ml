(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_signalr_service_network_acl__private_endpoint = {
  allowed_request_types : string prop list option; [@option]
      (** allowed_request_types *)
  denied_request_types : string prop list option; [@option]
      (** denied_request_types *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service_network_acl__private_endpoint *)

type azurerm_signalr_service_network_acl__public_network = {
  allowed_request_types : string prop list option; [@option]
      (** allowed_request_types *)
  denied_request_types : string prop list option; [@option]
      (** denied_request_types *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service_network_acl__public_network *)

type azurerm_signalr_service_network_acl__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service_network_acl__timeouts *)

type azurerm_signalr_service_network_acl = {
  default_action : string prop;  (** default_action *)
  id : string prop option; [@option]  (** id *)
  signalr_service_id : string prop;  (** signalr_service_id *)
  private_endpoint :
    azurerm_signalr_service_network_acl__private_endpoint list;
  public_network :
    azurerm_signalr_service_network_acl__public_network list;
  timeouts : azurerm_signalr_service_network_acl__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_signalr_service_network_acl *)

let azurerm_signalr_service_network_acl ?id ?timeouts ~default_action
    ~signalr_service_id ~private_endpoint ~public_network
    __resource_id =
  let __resource_type = "azurerm_signalr_service_network_acl" in
  let __resource =
    {
      default_action;
      id;
      signalr_service_id;
      private_endpoint;
      public_network;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_signalr_service_network_acl __resource);
  ()
