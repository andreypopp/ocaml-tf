(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_availability_set__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_availability_set__timeouts *)

type azurerm_availability_set = {
  location : string;  (** location *)
  managed : bool option; [@option]  (** managed *)
  name : string;  (** name *)
  platform_fault_domain_count : float option; [@option]
      (** platform_fault_domain_count *)
  platform_update_domain_count : float option; [@option]
      (** platform_update_domain_count *)
  proximity_placement_group_id : string option; [@option]
      (** proximity_placement_group_id *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_availability_set__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_availability_set *)

let azurerm_availability_set ?managed ?platform_fault_domain_count
    ?platform_update_domain_count ?proximity_placement_group_id ?tags
    ?timeouts ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_availability_set" in
  let __resource =
    {
      location;
      managed;
      name;
      platform_fault_domain_count;
      platform_update_domain_count;
      proximity_placement_group_id;
      resource_group_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_availability_set __resource);
  ()
