(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_slot_virtual_network_swift_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_slot_virtual_network_swift_connection__timeouts *)

type azurerm_app_service_slot_virtual_network_swift_connection = {
  app_service_id : string prop;  (** app_service_id *)
  id : string prop option; [@option]  (** id *)
  slot_name : string prop;  (** slot_name *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts :
    azurerm_app_service_slot_virtual_network_swift_connection__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_app_service_slot_virtual_network_swift_connection *)

let azurerm_app_service_slot_virtual_network_swift_connection ?id
    ?timeouts ~app_service_id ~slot_name ~subnet_id __resource_id =
  let __resource_type =
    "azurerm_app_service_slot_virtual_network_swift_connection"
  in
  let __resource =
    { app_service_id; id; slot_name; subnet_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_slot_virtual_network_swift_connection
       __resource);
  ()
