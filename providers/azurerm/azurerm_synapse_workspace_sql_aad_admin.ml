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

type azurerm_synapse_workspace_sql_aad_admin = {
  id : string prop option; [@option]
  login : string prop;
  object_id : string prop;
  synapse_workspace_id : string prop;
  tenant_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_synapse_workspace_sql_aad_admin) -> ()

let yojson_of_azurerm_synapse_workspace_sql_aad_admin =
  (function
   | {
       id = v_id;
       login = v_login;
       object_id = v_object_id;
       synapse_workspace_id = v_synapse_workspace_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_synapse_workspace_id
         in
         ("synapse_workspace_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_login in
         ("login", arg) :: bnds
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
    : azurerm_synapse_workspace_sql_aad_admin ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_synapse_workspace_sql_aad_admin

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_workspace_sql_aad_admin ?id ?timeouts ~login
    ~object_id ~synapse_workspace_id ~tenant_id () :
    azurerm_synapse_workspace_sql_aad_admin =
  { id; login; object_id; synapse_workspace_id; tenant_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  login : string prop;
  object_id : string prop;
  synapse_workspace_id : string prop;
  tenant_id : string prop;
}

let make ?id ?timeouts ~login ~object_id ~synapse_workspace_id
    ~tenant_id __id =
  let __type = "azurerm_synapse_workspace_sql_aad_admin" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       login = Prop.computed __type __id "login";
       object_id = Prop.computed __type __id "object_id";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_workspace_sql_aad_admin
        (azurerm_synapse_workspace_sql_aad_admin ?id ?timeouts ~login
           ~object_id ~synapse_workspace_id ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~login ~object_id
    ~synapse_workspace_id ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~login ~object_id ~synapse_workspace_id
      ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
