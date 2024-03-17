(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_system_center_virtual_machine_manager_availability_set__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_system_center_virtual_machine_manager_availability_set__timeouts *)

type azurerm_system_center_virtual_machine_manager_availability_set = {
  custom_location_id : string;  (** custom_location_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  system_center_virtual_machine_manager_server_id : string;
      (** system_center_virtual_machine_manager_server_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts :
    azurerm_system_center_virtual_machine_manager_availability_set__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_system_center_virtual_machine_manager_availability_set *)

let azurerm_system_center_virtual_machine_manager_availability_set
    ?tags ?timeouts ~custom_location_id ~location ~name
    ~resource_group_name
    ~system_center_virtual_machine_manager_server_id __resource_id =
  let __resource_type =
    "azurerm_system_center_virtual_machine_manager_availability_set"
  in
  let __resource =
    {
      custom_location_id;
      location;
      name;
      resource_group_name;
      system_center_virtual_machine_manager_server_id;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_system_center_virtual_machine_manager_availability_set
       __resource);
  ()
