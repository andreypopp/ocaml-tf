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

type azurerm_databricks_virtual_network_peering = {
  allow_forwarded_traffic : bool prop option; [@option]
  allow_gateway_transit : bool prop option; [@option]
  allow_virtual_network_access : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  remote_address_space_prefixes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  remote_virtual_network_id : string prop;
  resource_group_name : string prop;
  use_remote_gateways : bool prop option; [@option]
  workspace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_databricks_virtual_network_peering) -> ()

let yojson_of_azurerm_databricks_virtual_network_peering =
  (function
   | {
       allow_forwarded_traffic = v_allow_forwarded_traffic;
       allow_gateway_transit = v_allow_gateway_transit;
       allow_virtual_network_access = v_allow_virtual_network_access;
       id = v_id;
       name = v_name;
       remote_address_space_prefixes =
         v_remote_address_space_prefixes;
       remote_virtual_network_id = v_remote_virtual_network_id;
       resource_group_name = v_resource_group_name;
       use_remote_gateways = v_use_remote_gateways;
       workspace_id = v_workspace_id;
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
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         match v_use_remote_gateways with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_remote_gateways", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_remote_virtual_network_id
         in
         ("remote_virtual_network_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_remote_address_space_prefixes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_remote_address_space_prefixes
           in
           let bnd = "remote_address_space_prefixes", arg in
           bnd :: bnds
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
         match v_allow_virtual_network_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_virtual_network_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_gateway_transit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_gateway_transit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_forwarded_traffic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_forwarded_traffic", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_databricks_virtual_network_peering ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_databricks_virtual_network_peering

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_databricks_virtual_network_peering
    ?allow_forwarded_traffic ?allow_gateway_transit
    ?allow_virtual_network_access ?id ?use_remote_gateways ?timeouts
    ~name ~remote_address_space_prefixes ~remote_virtual_network_id
    ~resource_group_name ~workspace_id () :
    azurerm_databricks_virtual_network_peering =
  {
    allow_forwarded_traffic;
    allow_gateway_transit;
    allow_virtual_network_access;
    id;
    name;
    remote_address_space_prefixes;
    remote_virtual_network_id;
    resource_group_name;
    use_remote_gateways;
    workspace_id;
    timeouts;
  }

type t = {
  tf_name : string;
  address_space_prefixes : string list prop;
  allow_forwarded_traffic : bool prop;
  allow_gateway_transit : bool prop;
  allow_virtual_network_access : bool prop;
  id : string prop;
  name : string prop;
  remote_address_space_prefixes : string list prop;
  remote_virtual_network_id : string prop;
  resource_group_name : string prop;
  use_remote_gateways : bool prop;
  virtual_network_id : string prop;
  workspace_id : string prop;
}

let make ?allow_forwarded_traffic ?allow_gateway_transit
    ?allow_virtual_network_access ?id ?use_remote_gateways ?timeouts
    ~name ~remote_address_space_prefixes ~remote_virtual_network_id
    ~resource_group_name ~workspace_id __id =
  let __type = "azurerm_databricks_virtual_network_peering" in
  let __attrs =
    ({
       tf_name = __id;
       address_space_prefixes =
         Prop.computed __type __id "address_space_prefixes";
       allow_forwarded_traffic =
         Prop.computed __type __id "allow_forwarded_traffic";
       allow_gateway_transit =
         Prop.computed __type __id "allow_gateway_transit";
       allow_virtual_network_access =
         Prop.computed __type __id "allow_virtual_network_access";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       remote_address_space_prefixes =
         Prop.computed __type __id "remote_address_space_prefixes";
       remote_virtual_network_id =
         Prop.computed __type __id "remote_virtual_network_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       use_remote_gateways =
         Prop.computed __type __id "use_remote_gateways";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_databricks_virtual_network_peering
        (azurerm_databricks_virtual_network_peering
           ?allow_forwarded_traffic ?allow_gateway_transit
           ?allow_virtual_network_access ?id ?use_remote_gateways
           ?timeouts ~name ~remote_address_space_prefixes
           ~remote_virtual_network_id ~resource_group_name
           ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_forwarded_traffic
    ?allow_gateway_transit ?allow_virtual_network_access ?id
    ?use_remote_gateways ?timeouts ~name
    ~remote_address_space_prefixes ~remote_virtual_network_id
    ~resource_group_name ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?allow_forwarded_traffic ?allow_gateway_transit
      ?allow_virtual_network_access ?id ?use_remote_gateways
      ?timeouts ~name ~remote_address_space_prefixes
      ~remote_virtual_network_id ~resource_group_name ~workspace_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
