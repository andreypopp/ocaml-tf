(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_slot_custom_hostname_binding__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_app_service_slot_custom_hostname_binding__timeouts *)

type azurerm_app_service_slot_custom_hostname_binding = {
  app_service_slot_id : string prop;  (** app_service_slot_id *)
  hostname : string prop;  (** hostname *)
  id : string prop option; [@option]  (** id *)
  ssl_state : string prop option; [@option]  (** ssl_state *)
  thumbprint : string prop option; [@option]  (** thumbprint *)
  timeouts :
    azurerm_app_service_slot_custom_hostname_binding__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_slot_custom_hostname_binding *)

type t = {
  app_service_slot_id : string prop;
  hostname : string prop;
  id : string prop;
  ssl_state : string prop;
  thumbprint : string prop;
  virtual_ip : string prop;
}

let azurerm_app_service_slot_custom_hostname_binding ?id ?ssl_state
    ?thumbprint ?timeouts ~app_service_slot_id ~hostname
    __resource_id =
  let __resource_type =
    "azurerm_app_service_slot_custom_hostname_binding"
  in
  let __resource =
    ({
       app_service_slot_id;
       hostname;
       id;
       ssl_state;
       thumbprint;
       timeouts;
     }
      : azurerm_app_service_slot_custom_hostname_binding)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_slot_custom_hostname_binding
       __resource);
  let __resource_attributes =
    ({
       app_service_slot_id =
         Prop.computed __resource_type __resource_id
           "app_service_slot_id";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       ssl_state =
         Prop.computed __resource_type __resource_id "ssl_state";
       thumbprint =
         Prop.computed __resource_type __resource_id "thumbprint";
       virtual_ip =
         Prop.computed __resource_type __resource_id "virtual_ip";
     }
      : t)
  in
  __resource_attributes
