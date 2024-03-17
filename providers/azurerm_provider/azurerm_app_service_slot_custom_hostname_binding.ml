(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_slot_custom_hostname_binding__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_app_service_slot_custom_hostname_binding__timeouts *)

type azurerm_app_service_slot_custom_hostname_binding = {
  app_service_slot_id : string;  (** app_service_slot_id *)
  hostname : string;  (** hostname *)
  id : string option; [@option]  (** id *)
  ssl_state : string option; [@option]  (** ssl_state *)
  thumbprint : string option; [@option]  (** thumbprint *)
  timeouts :
    azurerm_app_service_slot_custom_hostname_binding__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_slot_custom_hostname_binding *)

let azurerm_app_service_slot_custom_hostname_binding ?id ?ssl_state
    ?thumbprint ?timeouts ~app_service_slot_id ~hostname
    __resource_id =
  let __resource_type =
    "azurerm_app_service_slot_custom_hostname_binding"
  in
  let __resource =
    {
      app_service_slot_id;
      hostname;
      id;
      ssl_state;
      thumbprint;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_slot_custom_hostname_binding
       __resource);
  ()
