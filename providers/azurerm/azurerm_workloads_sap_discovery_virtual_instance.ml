(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

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

type azurerm_workloads_sap_discovery_virtual_instance = {
  central_server_virtual_machine_id : string prop;
  environment : string prop;
  id : string prop option; [@option]
  location : string prop;
  managed_resource_group_name : string prop option; [@option]
  managed_storage_account_name : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  sap_product : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_workloads_sap_discovery_virtual_instance) -> ()

let yojson_of_azurerm_workloads_sap_discovery_virtual_instance =
  (function
   | {
       central_server_virtual_machine_id =
         v_central_server_virtual_machine_id;
       environment = v_environment;
       id = v_id;
       location = v_location;
       managed_resource_group_name = v_managed_resource_group_name;
       managed_storage_account_name = v_managed_storage_account_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sap_product = v_sap_product;
       tags = v_tags;
       identity = v_identity;
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
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
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
         let arg = yojson_of_prop yojson_of_string v_sap_product in
         ("sap_product", arg) :: bnds
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
         match v_managed_storage_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_storage_account_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_resource_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_environment in
         ("environment", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_central_server_virtual_machine_id
         in
         ("central_server_virtual_machine_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_workloads_sap_discovery_virtual_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_workloads_sap_discovery_virtual_instance

[@@@deriving.end]

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_workloads_sap_discovery_virtual_instance ?id
    ?managed_resource_group_name ?managed_storage_account_name ?tags
    ?(identity = []) ?timeouts ~central_server_virtual_machine_id
    ~environment ~location ~name ~resource_group_name ~sap_product ()
    : azurerm_workloads_sap_discovery_virtual_instance =
  {
    central_server_virtual_machine_id;
    environment;
    id;
    location;
    managed_resource_group_name;
    managed_storage_account_name;
    name;
    resource_group_name;
    sap_product;
    tags;
    identity;
    timeouts;
  }

type t = {
  tf_name : string;
  central_server_virtual_machine_id : string prop;
  environment : string prop;
  id : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  managed_storage_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  sap_product : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?managed_resource_group_name
    ?managed_storage_account_name ?tags ?(identity = []) ?timeouts
    ~central_server_virtual_machine_id ~environment ~location ~name
    ~resource_group_name ~sap_product __id =
  let __type = "azurerm_workloads_sap_discovery_virtual_instance" in
  let __attrs =
    ({
       tf_name = __id;
       central_server_virtual_machine_id =
         Prop.computed __type __id
           "central_server_virtual_machine_id";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       managed_resource_group_name =
         Prop.computed __type __id "managed_resource_group_name";
       managed_storage_account_name =
         Prop.computed __type __id "managed_storage_account_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sap_product = Prop.computed __type __id "sap_product";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_workloads_sap_discovery_virtual_instance
        (azurerm_workloads_sap_discovery_virtual_instance ?id
           ?managed_resource_group_name ?managed_storage_account_name
           ?tags ~identity ?timeouts
           ~central_server_virtual_machine_id ~environment ~location
           ~name ~resource_group_name ~sap_product ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?managed_resource_group_name
    ?managed_storage_account_name ?tags ?(identity = []) ?timeouts
    ~central_server_virtual_machine_id ~environment ~location ~name
    ~resource_group_name ~sap_product __id =
  let (r : _ Tf_core.resource) =
    make ?id ?managed_resource_group_name
      ?managed_storage_account_name ?tags ~identity ?timeouts
      ~central_server_virtual_machine_id ~environment ~location ~name
      ~resource_group_name ~sap_product __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
