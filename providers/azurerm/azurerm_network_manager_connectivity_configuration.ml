(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type applies_to_group = {
  global_mesh_enabled : bool prop option; [@option]
  group_connectivity : string prop;
  network_group_id : string prop;
  use_hub_gateway : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : applies_to_group) -> ()

let yojson_of_applies_to_group =
  (function
   | {
       global_mesh_enabled = v_global_mesh_enabled;
       group_connectivity = v_group_connectivity;
       network_group_id = v_network_group_id;
       use_hub_gateway = v_use_hub_gateway;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_hub_gateway with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_hub_gateway", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_group_id
         in
         ("network_group_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_group_connectivity
         in
         ("group_connectivity", arg) :: bnds
       in
       let bnds =
         match v_global_mesh_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "global_mesh_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : applies_to_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_applies_to_group

[@@@deriving.end]

type hub = { resource_id : string prop; resource_type : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : hub) -> ()

let yojson_of_hub =
  (function
   | { resource_id = v_resource_id; resource_type = v_resource_type }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       `Assoc bnds
    : hub -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hub

[@@@deriving.end]

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

type azurerm_network_manager_connectivity_configuration = {
  connectivity_topology : string prop;
  delete_existing_peering_enabled : bool prop option; [@option]
  description : string prop option; [@option]
  global_mesh_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  network_manager_id : string prop;
  applies_to_group : applies_to_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hub : hub list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_network_manager_connectivity_configuration) -> ()

let yojson_of_azurerm_network_manager_connectivity_configuration =
  (function
   | {
       connectivity_topology = v_connectivity_topology;
       delete_existing_peering_enabled =
         v_delete_existing_peering_enabled;
       description = v_description;
       global_mesh_enabled = v_global_mesh_enabled;
       id = v_id;
       name = v_name;
       network_manager_id = v_network_manager_id;
       applies_to_group = v_applies_to_group;
       hub = v_hub;
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
         if Stdlib.( = ) [] v_hub then bnds
         else
           let arg = (yojson_of_list yojson_of_hub) v_hub in
           let bnd = "hub", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_applies_to_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_applies_to_group)
               v_applies_to_group
           in
           let bnd = "applies_to_group", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_manager_id
         in
         ("network_manager_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_global_mesh_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "global_mesh_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_existing_peering_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_existing_peering_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connectivity_topology
         in
         ("connectivity_topology", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_network_manager_connectivity_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_manager_connectivity_configuration

[@@@deriving.end]

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
    ?global_mesh_enabled ?id ?(hub = []) ?timeouts
    ~connectivity_topology ~name ~network_manager_id
    ~applies_to_group () :
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
  tf_name : string;
  connectivity_topology : string prop;
  delete_existing_peering_enabled : bool prop;
  description : string prop;
  global_mesh_enabled : bool prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

let make ?delete_existing_peering_enabled ?description
    ?global_mesh_enabled ?id ?(hub = []) ?timeouts
    ~connectivity_topology ~name ~network_manager_id
    ~applies_to_group __id =
  let __type =
    "azurerm_network_manager_connectivity_configuration"
  in
  let __attrs =
    ({
       tf_name = __id;
       connectivity_topology =
         Prop.computed __type __id "connectivity_topology";
       delete_existing_peering_enabled =
         Prop.computed __type __id "delete_existing_peering_enabled";
       description = Prop.computed __type __id "description";
       global_mesh_enabled =
         Prop.computed __type __id "global_mesh_enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_manager_id =
         Prop.computed __type __id "network_manager_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_manager_connectivity_configuration
        (azurerm_network_manager_connectivity_configuration
           ?delete_existing_peering_enabled ?description
           ?global_mesh_enabled ?id ~hub ?timeouts
           ~connectivity_topology ~name ~network_manager_id
           ~applies_to_group ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_existing_peering_enabled ?description
    ?global_mesh_enabled ?id ?(hub = []) ?timeouts
    ~connectivity_topology ~name ~network_manager_id
    ~applies_to_group __id =
  let (r : _ Tf_core.resource) =
    make ?delete_existing_peering_enabled ?description
      ?global_mesh_enabled ?id ~hub ?timeouts ~connectivity_topology
      ~name ~network_manager_id ~applies_to_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
