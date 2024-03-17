(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_app_service_virtual_network_swift_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_virtual_network_swift_connection__timeouts *)

type azurerm_app_service_virtual_network_swift_connection = {
  app_service_id : string;  (** app_service_id *)
  subnet_id : string;  (** subnet_id *)
  timeouts :
    azurerm_app_service_virtual_network_swift_connection__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_app_service_virtual_network_swift_connection *)

let azurerm_app_service_virtual_network_swift_connection ?timeouts
    ~app_service_id ~subnet_id __resource_id =
  let __resource_type =
    "azurerm_app_service_virtual_network_swift_connection"
  in
  let __resource = { app_service_id; subnet_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_virtual_network_swift_connection
       __resource);
  ()
