(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_container_registry_agent_pool = {
  container_registry_name : string prop;
      (** container_registry_name *)
  id : string prop option; [@option]  (** id *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tier : string prop option; [@option]  (** tier *)
  virtual_network_subnet_id : string prop option; [@option]
      (** virtual_network_subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_agent_pool *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_registry_agent_pool ?id ?instance_count ?tags
    ?tier ?virtual_network_subnet_id ?timeouts
    ~container_registry_name ~location ~name ~resource_group_name ()
    : azurerm_container_registry_agent_pool =
  {
    container_registry_name;
    id;
    instance_count;
    location;
    name;
    resource_group_name;
    tags;
    tier;
    virtual_network_subnet_id;
    timeouts;
  }

type t = {
  container_registry_name : string prop;
  id : string prop;
  instance_count : float prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  tier : string prop;
  virtual_network_subnet_id : string prop;
}

let register ?tf_module ?id ?instance_count ?tags ?tier
    ?virtual_network_subnet_id ?timeouts ~container_registry_name
    ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_container_registry_agent_pool" in
  let __resource =
    azurerm_container_registry_agent_pool ?id ?instance_count ?tags
      ?tier ?virtual_network_subnet_id ?timeouts
      ~container_registry_name ~location ~name ~resource_group_name
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry_agent_pool __resource);
  let __resource_attributes =
    ({
       container_registry_name =
         Prop.computed __resource_type __resource_id
           "container_registry_name";
       id = Prop.computed __resource_type __resource_id "id";
       instance_count =
         Prop.computed __resource_type __resource_id "instance_count";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tier = Prop.computed __resource_type __resource_id "tier";
       virtual_network_subnet_id =
         Prop.computed __resource_type __resource_id
           "virtual_network_subnet_id";
     }
      : t)
  in
  __resource_attributes
