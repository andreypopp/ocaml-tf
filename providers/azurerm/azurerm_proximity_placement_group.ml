(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_proximity_placement_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_proximity_placement_group__timeouts *)

type azurerm_proximity_placement_group = {
  allowed_vm_sizes : string prop list option; [@option]
      (** allowed_vm_sizes *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone : string prop option; [@option]  (** zone *)
  timeouts : azurerm_proximity_placement_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_proximity_placement_group *)

type t = {
  allowed_vm_sizes : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  zone : string prop;
}

let azurerm_proximity_placement_group ?allowed_vm_sizes ?id ?tags
    ?zone ?timeouts ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_proximity_placement_group" in
  let __resource =
    ({
       allowed_vm_sizes;
       id;
       location;
       name;
       resource_group_name;
       tags;
       zone;
       timeouts;
     }
      : azurerm_proximity_placement_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_proximity_placement_group __resource);
  let __resource_attributes =
    ({
       allowed_vm_sizes =
         Prop.computed __resource_type __resource_id
           "allowed_vm_sizes";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
