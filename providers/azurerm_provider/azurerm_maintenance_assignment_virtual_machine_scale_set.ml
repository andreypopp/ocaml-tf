(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_maintenance_assignment_virtual_machine_scale_set__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_maintenance_assignment_virtual_machine_scale_set__timeouts *)

type azurerm_maintenance_assignment_virtual_machine_scale_set = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  maintenance_configuration_id : string prop;
      (** maintenance_configuration_id *)
  virtual_machine_scale_set_id : string prop;
      (** virtual_machine_scale_set_id *)
  timeouts :
    azurerm_maintenance_assignment_virtual_machine_scale_set__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_maintenance_assignment_virtual_machine_scale_set *)

let azurerm_maintenance_assignment_virtual_machine_scale_set ?id
    ?timeouts ~location ~maintenance_configuration_id
    ~virtual_machine_scale_set_id __resource_id =
  let __resource_type =
    "azurerm_maintenance_assignment_virtual_machine_scale_set"
  in
  let __resource =
    {
      id;
      location;
      maintenance_configuration_id;
      virtual_machine_scale_set_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_maintenance_assignment_virtual_machine_scale_set
       __resource);
  ()
