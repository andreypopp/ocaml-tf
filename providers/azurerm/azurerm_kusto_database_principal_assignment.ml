(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_kusto_database_principal_assignment = {
  cluster_name : string prop;
  database_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  principal_id : string prop;
  principal_type : string prop;
  resource_group_name : string prop;
  role : string prop;
  tenant_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kusto_database_principal_assignment) -> ()

let yojson_of_azurerm_kusto_database_principal_assignment =
  (function
   | {
       cluster_name = v_cluster_name;
       database_name = v_database_name;
       id = v_id;
       name = v_name;
       principal_id = v_principal_id;
       principal_type = v_principal_type;
       resource_group_name = v_resource_group_name;
       role = v_role;
       tenant_id = v_tenant_id;
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
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_principal_type
         in
         ("principal_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_kusto_database_principal_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kusto_database_principal_assignment

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_kusto_database_principal_assignment ?id ?timeouts
    ~cluster_name ~database_name ~name ~principal_id ~principal_type
    ~resource_group_name ~role ~tenant_id () :
    azurerm_kusto_database_principal_assignment =
  {
    cluster_name;
    database_name;
    id;
    name;
    principal_id;
    principal_type;
    resource_group_name;
    role;
    tenant_id;
    timeouts;
  }

type t = {
  tf_name : string;
  cluster_name : string prop;
  database_name : string prop;
  id : string prop;
  name : string prop;
  principal_id : string prop;
  principal_name : string prop;
  principal_type : string prop;
  resource_group_name : string prop;
  role : string prop;
  tenant_id : string prop;
  tenant_name : string prop;
}

let make ?id ?timeouts ~cluster_name ~database_name ~name
    ~principal_id ~principal_type ~resource_group_name ~role
    ~tenant_id __id =
  let __type = "azurerm_kusto_database_principal_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_name = Prop.computed __type __id "cluster_name";
       database_name = Prop.computed __type __id "database_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       principal_id = Prop.computed __type __id "principal_id";
       principal_name = Prop.computed __type __id "principal_name";
       principal_type = Prop.computed __type __id "principal_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       role = Prop.computed __type __id "role";
       tenant_id = Prop.computed __type __id "tenant_id";
       tenant_name = Prop.computed __type __id "tenant_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_database_principal_assignment
        (azurerm_kusto_database_principal_assignment ?id ?timeouts
           ~cluster_name ~database_name ~name ~principal_id
           ~principal_type ~resource_group_name ~role ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cluster_name ~database_name
    ~name ~principal_id ~principal_type ~resource_group_name ~role
    ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cluster_name ~database_name ~name
      ~principal_id ~principal_type ~resource_group_name ~role
      ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
