(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dedicated_host_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dedicated_host_group__timeouts *)

type azurerm_dedicated_host_group = {
  automatic_placement_enabled : bool prop option; [@option]
      (** automatic_placement_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  platform_fault_domain_count : float prop;
      (** platform_fault_domain_count *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone : string prop option; [@option]  (** zone *)
  timeouts : azurerm_dedicated_host_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dedicated_host_group *)

type t = {
  automatic_placement_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  platform_fault_domain_count : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  zone : string prop;
}

let azurerm_dedicated_host_group ?automatic_placement_enabled ?id
    ?tags ?zone ?timeouts ~location ~name
    ~platform_fault_domain_count ~resource_group_name __resource_id =
  let __resource_type = "azurerm_dedicated_host_group" in
  let __resource =
    ({
       automatic_placement_enabled;
       id;
       location;
       name;
       platform_fault_domain_count;
       resource_group_name;
       tags;
       zone;
       timeouts;
     }
      : azurerm_dedicated_host_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dedicated_host_group __resource);
  let __resource_attributes =
    ({
       automatic_placement_enabled =
         Prop.computed __resource_type __resource_id
           "automatic_placement_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       platform_fault_domain_count =
         Prop.computed __resource_type __resource_id
           "platform_fault_domain_count";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
