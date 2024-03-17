(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_palo_alto_virtual_network_appliance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_virtual_network_appliance__timeouts *)

type azurerm_palo_alto_virtual_network_appliance = {
  name : string;  (** name *)
  virtual_hub_id : string;  (** virtual_hub_id *)
  timeouts :
    azurerm_palo_alto_virtual_network_appliance__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_virtual_network_appliance *)

let azurerm_palo_alto_virtual_network_appliance ?timeouts ~name
    ~virtual_hub_id __resource_id =
  let __resource_type =
    "azurerm_palo_alto_virtual_network_appliance"
  in
  let __resource = { name; virtual_hub_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_virtual_network_appliance __resource);
  ()
