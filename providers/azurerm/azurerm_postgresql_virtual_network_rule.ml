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

type azurerm_postgresql_virtual_network_rule = {
  id : string prop option; [@option]
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  subnet_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_postgresql_virtual_network_rule) -> ()

let yojson_of_azurerm_postgresql_virtual_network_rule =
  (function
   | {
       id = v_id;
       ignore_missing_vnet_service_endpoint =
         v_ignore_missing_vnet_service_endpoint;
       name = v_name;
       resource_group_name = v_resource_group_name;
       server_name = v_server_name;
       subnet_id = v_subnet_id;
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
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_name in
         ("server_name", arg) :: bnds
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
         match v_ignore_missing_vnet_service_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_missing_vnet_service_endpoint", arg in
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
       `Assoc bnds
    : azurerm_postgresql_virtual_network_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_postgresql_virtual_network_rule

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_postgresql_virtual_network_rule ?id
    ?ignore_missing_vnet_service_endpoint ?timeouts ~name
    ~resource_group_name ~server_name ~subnet_id () :
    azurerm_postgresql_virtual_network_rule =
  {
    id;
    ignore_missing_vnet_service_endpoint;
    name;
    resource_group_name;
    server_name;
    subnet_id;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  ignore_missing_vnet_service_endpoint : bool prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  subnet_id : string prop;
}

let make ?id ?ignore_missing_vnet_service_endpoint ?timeouts ~name
    ~resource_group_name ~server_name ~subnet_id __id =
  let __type = "azurerm_postgresql_virtual_network_rule" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       ignore_missing_vnet_service_endpoint =
         Prop.computed __type __id
           "ignore_missing_vnet_service_endpoint";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_name = Prop.computed __type __id "server_name";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_postgresql_virtual_network_rule
        (azurerm_postgresql_virtual_network_rule ?id
           ?ignore_missing_vnet_service_endpoint ?timeouts ~name
           ~resource_group_name ~server_name ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ignore_missing_vnet_service_endpoint
    ?timeouts ~name ~resource_group_name ~server_name ~subnet_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?ignore_missing_vnet_service_endpoint ?timeouts ~name
      ~resource_group_name ~server_name ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
