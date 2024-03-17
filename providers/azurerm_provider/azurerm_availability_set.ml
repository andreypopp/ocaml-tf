(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_availability_set__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_availability_set__timeouts *)

type azurerm_availability_set = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed : bool prop option; [@option]  (** managed *)
  name : string prop;  (** name *)
  platform_fault_domain_count : float prop option; [@option]
      (** platform_fault_domain_count *)
  platform_update_domain_count : float prop option; [@option]
      (** platform_update_domain_count *)
  proximity_placement_group_id : string prop option; [@option]
      (** proximity_placement_group_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_availability_set__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_availability_set *)

let azurerm_availability_set ?id ?managed
    ?platform_fault_domain_count ?platform_update_domain_count
    ?proximity_placement_group_id ?tags ?timeouts ~location ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_availability_set" in
  let __resource =
    {
      id;
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
