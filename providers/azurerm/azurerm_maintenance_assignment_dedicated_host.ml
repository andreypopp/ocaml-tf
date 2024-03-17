(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_maintenance_assignment_dedicated_host__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_maintenance_assignment_dedicated_host__timeouts *)

type azurerm_maintenance_assignment_dedicated_host = {
  dedicated_host_id : string prop;  (** dedicated_host_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  maintenance_configuration_id : string prop;
      (** maintenance_configuration_id *)
  timeouts :
    azurerm_maintenance_assignment_dedicated_host__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_maintenance_assignment_dedicated_host *)

type t = {
  dedicated_host_id : string prop;
  id : string prop;
  location : string prop;
  maintenance_configuration_id : string prop;
}

let azurerm_maintenance_assignment_dedicated_host ?id ?timeouts
    ~dedicated_host_id ~location ~maintenance_configuration_id
    __resource_id =
  let __resource_type =
    "azurerm_maintenance_assignment_dedicated_host"
  in
  let __resource =
    ({
       dedicated_host_id;
       id;
       location;
       maintenance_configuration_id;
       timeouts;
     }
      : azurerm_maintenance_assignment_dedicated_host)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_maintenance_assignment_dedicated_host
       __resource);
  let __resource_attributes =
    ({
       dedicated_host_id =
         Prop.computed __resource_type __resource_id
           "dedicated_host_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       maintenance_configuration_id =
         Prop.computed __resource_type __resource_id
           "maintenance_configuration_id";
     }
      : t)
  in
  __resource_attributes
