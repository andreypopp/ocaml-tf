(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_maintenance_assignment_virtual_machine__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_maintenance_assignment_virtual_machine__timeouts *)

type azurerm_maintenance_assignment_virtual_machine = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  maintenance_configuration_id : string prop;
      (** maintenance_configuration_id *)
  virtual_machine_id : string prop;  (** virtual_machine_id *)
  timeouts :
    azurerm_maintenance_assignment_virtual_machine__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_maintenance_assignment_virtual_machine *)

type t = {
  id : string prop;
  location : string prop;
  maintenance_configuration_id : string prop;
  virtual_machine_id : string prop;
}

let azurerm_maintenance_assignment_virtual_machine ?id ?timeouts
    ~location ~maintenance_configuration_id ~virtual_machine_id
    __resource_id =
  let __resource_type =
    "azurerm_maintenance_assignment_virtual_machine"
  in
  let __resource =
    ({
       id;
       location;
       maintenance_configuration_id;
       virtual_machine_id;
       timeouts;
     }
      : azurerm_maintenance_assignment_virtual_machine)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_maintenance_assignment_virtual_machine
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       maintenance_configuration_id =
         Prop.computed __resource_type __resource_id
           "maintenance_configuration_id";
       virtual_machine_id =
         Prop.computed __resource_type __resource_id
           "virtual_machine_id";
     }
      : t)
  in
  __resource_attributes
