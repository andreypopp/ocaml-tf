(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_maintenance_assignment_dedicated_host__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_maintenance_assignment_dedicated_host__timeouts *)

type azurerm_maintenance_assignment_dedicated_host = {
  dedicated_host_id : string;  (** dedicated_host_id *)
  location : string;  (** location *)
  maintenance_configuration_id : string;
      (** maintenance_configuration_id *)
  timeouts :
    azurerm_maintenance_assignment_dedicated_host__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_maintenance_assignment_dedicated_host *)

let azurerm_maintenance_assignment_dedicated_host ?timeouts
    ~dedicated_host_id ~location ~maintenance_configuration_id
    __resource_id =
  let __resource_type =
    "azurerm_maintenance_assignment_dedicated_host"
  in
  let __resource =
    {
      dedicated_host_id;
      location;
      maintenance_configuration_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_maintenance_assignment_dedicated_host
       __resource);
  ()