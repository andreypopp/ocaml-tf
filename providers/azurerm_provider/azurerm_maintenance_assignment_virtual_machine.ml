(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_maintenance_assignment_virtual_machine__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_maintenance_assignment_virtual_machine__timeouts *)

type azurerm_maintenance_assignment_virtual_machine = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  maintenance_configuration_id : string;
      (** maintenance_configuration_id *)
  virtual_machine_id : string;  (** virtual_machine_id *)
  timeouts :
    azurerm_maintenance_assignment_virtual_machine__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_maintenance_assignment_virtual_machine *)

let azurerm_maintenance_assignment_virtual_machine ?id ?timeouts
    ~location ~maintenance_configuration_id ~virtual_machine_id
    __resource_id =
  let __resource_type =
    "azurerm_maintenance_assignment_virtual_machine"
  in
  let __resource =
    {
      id;
      location;
      maintenance_configuration_id;
      virtual_machine_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_maintenance_assignment_virtual_machine
       __resource);
  ()
