(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_container_registry_agent_pool = {
  container_registry_name : string prop;
  id : string prop option; [@option]
  instance_count : float prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tier : string prop option; [@option]
  virtual_network_subnet_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_registry_agent_pool) -> ()

let yojson_of_azurerm_container_registry_agent_pool =
  (function
   | {
       container_registry_name = v_container_registry_name;
       id = v_id;
       instance_count = v_instance_count;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       tier = v_tier;
       virtual_network_subnet_id = v_virtual_network_subnet_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_virtual_network_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_network_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_registry_name
         in
         ("container_registry_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_container_registry_agent_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_registry_agent_pool

[@@@deriving.end]

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
  tf_name : string;
  container_registry_name : string prop;
  id : string prop;
  instance_count : float prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  tier : string prop;
  virtual_network_subnet_id : string prop;
}

let make ?id ?instance_count ?tags ?tier ?virtual_network_subnet_id
    ?timeouts ~container_registry_name ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_container_registry_agent_pool" in
  let __attrs =
    ({
       tf_name = __id;
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
