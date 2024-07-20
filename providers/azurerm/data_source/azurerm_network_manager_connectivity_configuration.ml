(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type applies_to_group = {
  global_mesh_enabled : bool prop;
  group_connectivity : string prop;
  network_group_id : string prop;
  use_hub_gateway : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_use_hub_gateway in
         ("use_hub_gateway", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_bool v_global_mesh_enabled
         in
         ("global_mesh_enabled", arg) :: bnds
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

type azurerm_network_manager_connectivity_configuration = {
  id : string prop option; [@option]
  name : string prop;
  network_manager_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_network_manager_connectivity_configuration) -> ()

let yojson_of_azurerm_network_manager_connectivity_configuration =
  (function
   | {
       id = v_id;
       name = v_name;
       network_manager_id = v_network_manager_id;
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
       `Assoc bnds
    : azurerm_network_manager_connectivity_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_manager_connectivity_configuration

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_network_manager_connectivity_configuration ?id ?timeouts
    ~name ~network_manager_id () :
    azurerm_network_manager_connectivity_configuration =
  { id; name; network_manager_id; timeouts }

type t = {
  tf_name : string;
  applies_to_group : applies_to_group list prop;
  connectivity_topology : string prop;
  delete_existing_peering_enabled : bool prop;
  description : string prop;
  global_mesh_enabled : bool prop;
  hub : hub list prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

let make ?id ?timeouts ~name ~network_manager_id __id =
  let __type =
    "azurerm_network_manager_connectivity_configuration"
  in
  let __attrs =
    ({
       tf_name = __id;
       applies_to_group =
         Prop.computed __type __id "applies_to_group";
       connectivity_topology =
         Prop.computed __type __id "connectivity_topology";
       delete_existing_peering_enabled =
         Prop.computed __type __id "delete_existing_peering_enabled";
       description = Prop.computed __type __id "description";
       global_mesh_enabled =
         Prop.computed __type __id "global_mesh_enabled";
       hub = Prop.computed __type __id "hub";
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
        (azurerm_network_manager_connectivity_configuration ?id
           ?timeouts ~name ~network_manager_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~network_manager_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~network_manager_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
