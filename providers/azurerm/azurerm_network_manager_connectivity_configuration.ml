(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type applies_to_group = {
  global_mesh_enabled : bool prop option; [@option]
      (** global_mesh_enabled *)
  group_connectivity : string prop;  (** group_connectivity *)
  network_group_id : string prop;  (** network_group_id *)
  use_hub_gateway : bool prop option; [@option]
      (** use_hub_gateway *)
}
[@@deriving yojson_of]
(** applies_to_group *)

type hub = {
  resource_id : string prop;  (** resource_id *)
  resource_type : string prop;  (** resource_type *)
}
[@@deriving yojson_of]
(** hub *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_network_manager_connectivity_configuration = {
  connectivity_topology : string prop;  (** connectivity_topology *)
  delete_existing_peering_enabled : bool prop option; [@option]
      (** delete_existing_peering_enabled *)
  description : string prop option; [@option]  (** description *)
  global_mesh_enabled : bool prop option; [@option]
      (** global_mesh_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  network_manager_id : string prop;  (** network_manager_id *)
  applies_to_group : applies_to_group list;
  hub : hub list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_connectivity_configuration *)

let applies_to_group ?global_mesh_enabled ?use_hub_gateway
    ~group_connectivity ~network_group_id () : applies_to_group =
  {
    global_mesh_enabled;
    group_connectivity;
    network_group_id;
    use_hub_gateway;
  }

let hub ~resource_id ~resource_type () : hub =
  { resource_id; resource_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_manager_connectivity_configuration
    ?delete_existing_peering_enabled ?description
    ?global_mesh_enabled ?id ?timeouts ~connectivity_topology ~name
    ~network_manager_id ~applies_to_group ~hub () :
    azurerm_network_manager_connectivity_configuration =
  {
    connectivity_topology;
    delete_existing_peering_enabled;
    description;
    global_mesh_enabled;
    id;
    name;
    network_manager_id;
    applies_to_group;
    hub;
    timeouts;
  }

type t = {
  connectivity_topology : string prop;
  delete_existing_peering_enabled : bool prop;
  description : string prop;
  global_mesh_enabled : bool prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

let register ?tf_module ?delete_existing_peering_enabled ?description
    ?global_mesh_enabled ?id ?timeouts ~connectivity_topology ~name
    ~network_manager_id ~applies_to_group ~hub __resource_id =
  let __resource_type =
    "azurerm_network_manager_connectivity_configuration"
  in
  let __resource =
    azurerm_network_manager_connectivity_configuration
      ?delete_existing_peering_enabled ?description
      ?global_mesh_enabled ?id ?timeouts ~connectivity_topology ~name
      ~network_manager_id ~applies_to_group ~hub ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_connectivity_configuration
       __resource);
  let __resource_attributes =
    ({
       connectivity_topology =
         Prop.computed __resource_type __resource_id
           "connectivity_topology";
       delete_existing_peering_enabled =
         Prop.computed __resource_type __resource_id
           "delete_existing_peering_enabled";
       description =
         Prop.computed __resource_type __resource_id "description";
       global_mesh_enabled =
         Prop.computed __resource_type __resource_id
           "global_mesh_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       network_manager_id =
         Prop.computed __resource_type __resource_id
           "network_manager_id";
     }
      : t)
  in
  __resource_attributes
