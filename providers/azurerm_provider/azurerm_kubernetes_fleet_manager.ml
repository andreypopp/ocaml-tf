(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kubernetes_fleet_manager__hub_profile = {
  dns_prefix : string prop;  (** dns_prefix *)
  fqdn : string prop;  (** fqdn *)
  kubernetes_version : string prop;  (** kubernetes_version *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_manager__hub_profile *)

type azurerm_kubernetes_fleet_manager__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_manager__timeouts *)

type azurerm_kubernetes_fleet_manager = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  hub_profile : azurerm_kubernetes_fleet_manager__hub_profile list;
  timeouts : azurerm_kubernetes_fleet_manager__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_manager *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_kubernetes_fleet_manager ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~hub_profile __resource_id =
  let __resource_type = "azurerm_kubernetes_fleet_manager" in
  let __resource =
    ({
       id;
       location;
       name;
       resource_group_name;
       tags;
       hub_profile;
       timeouts;
     }
      : azurerm_kubernetes_fleet_manager)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_fleet_manager __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
