(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_palo_alto_virtual_network_appliance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_palo_alto_virtual_network_appliance__timeouts *)

type azurerm_palo_alto_virtual_network_appliance = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  timeouts :
    azurerm_palo_alto_virtual_network_appliance__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_palo_alto_virtual_network_appliance *)

type t = {
  id : string prop;
  name : string prop;
  virtual_hub_id : string prop;
}

let azurerm_palo_alto_virtual_network_appliance ?id ?timeouts ~name
    ~virtual_hub_id __resource_id =
  let __resource_type =
    "azurerm_palo_alto_virtual_network_appliance"
  in
  let __resource =
    ({ id; name; virtual_hub_id; timeouts }
      : azurerm_palo_alto_virtual_network_appliance)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_palo_alto_virtual_network_appliance __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       virtual_hub_id =
         Prop.computed __resource_type __resource_id "virtual_hub_id";
     }
      : t)
  in
  __resource_attributes
