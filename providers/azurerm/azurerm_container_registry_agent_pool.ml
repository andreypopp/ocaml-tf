(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?instance_count ?tags ?tier ?virtual_network_subnet_id
    ?timeouts ~container_registry_name ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_container_registry_agent_pool" in
  let __attrs =
    ({
       container_registry_name =
         Prop.computed __type __id "container_registry_name";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       tier = Prop.computed __type __id "tier";
       virtual_network_subnet_id =
         Prop.computed __type __id "virtual_network_subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_registry_agent_pool
        (azurerm_container_registry_agent_pool ?id ?instance_count
           ?tags ?tier ?virtual_network_subnet_id ?timeouts
           ~container_registry_name ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?instance_count ?tags ?tier
    ?virtual_network_subnet_id ?timeouts ~container_registry_name
    ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?instance_count ?tags ?tier ?virtual_network_subnet_id
      ?timeouts ~container_registry_name ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
