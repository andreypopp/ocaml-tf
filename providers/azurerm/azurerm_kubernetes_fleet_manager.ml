(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hub_profile = { dns_prefix : string prop  (** dns_prefix *) }
[@@deriving yojson_of]
(** hub_profile *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_kubernetes_fleet_manager = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  hub_profile : hub_profile list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_manager *)

let hub_profile ~dns_prefix () : hub_profile = { dns_prefix }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kubernetes_fleet_manager ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~hub_profile () :
    azurerm_kubernetes_fleet_manager =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    hub_profile;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~hub_profile __resource_id =
  let __resource_type = "azurerm_kubernetes_fleet_manager" in
  let __resource =
    azurerm_kubernetes_fleet_manager ?id ?tags ?timeouts ~location
      ~name ~resource_group_name ~hub_profile ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
