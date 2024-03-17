(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_proximity_placement_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_proximity_placement_group__timeouts *)

type azurerm_proximity_placement_group = {
  allowed_vm_sizes : string list option; [@option]
      (** allowed_vm_sizes *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone : string option; [@option]  (** zone *)
  timeouts : azurerm_proximity_placement_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_proximity_placement_group *)

let azurerm_proximity_placement_group ?allowed_vm_sizes ?tags ?zone
    ?timeouts ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_proximity_placement_group" in
  let __resource =
    {
      allowed_vm_sizes;
      location;
      name;
      resource_group_name;
      tags;
      zone;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_proximity_placement_group __resource);
  ()
