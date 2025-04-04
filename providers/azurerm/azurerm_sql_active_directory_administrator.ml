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

type azurerm_sql_active_directory_administrator = {
  azuread_authentication_only : bool prop option; [@option]
  id : string prop option; [@option]
  login : string prop;
  object_id : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tenant_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sql_active_directory_administrator) -> ()

let yojson_of_azurerm_sql_active_directory_administrator =
  (function
   | {
       azuread_authentication_only = v_azuread_authentication_only;
       id = v_id;
       login = v_login;
       object_id = v_object_id;
       resource_group_name = v_resource_group_name;
       server_name = v_server_name;
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
       let bnds =
         match v_azuread_authentication_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "azuread_authentication_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_sql_active_directory_administrator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sql_active_directory_administrator

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sql_active_directory_administrator
    ?azuread_authentication_only ?id ?timeouts ~login ~object_id
    ~resource_group_name ~server_name ~tenant_id () :
    azurerm_sql_active_directory_administrator =
  {
    azuread_authentication_only;
    id;
    login;
    object_id;
    resource_group_name;
    server_name;
    tenant_id;
    timeouts;
  }

type t = {
  tf_name : string;
  azuread_authentication_only : bool prop;
  id : string prop;
  login : string prop;
  object_id : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tenant_id : string prop;
}

let make ?azuread_authentication_only ?id ?timeouts ~login ~object_id
    ~resource_group_name ~server_name ~tenant_id __id =
  let __type = "azurerm_sql_active_directory_administrator" in
  let __attrs =
    ({
       tf_name = __id;
       azuread_authentication_only =
         Prop.computed __type __id "azuread_authentication_only";
       id = Prop.computed __type __id "id";
       login = Prop.computed __type __id "login";
       object_id = Prop.computed __type __id "object_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_name = Prop.computed __type __id "server_name";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sql_active_directory_administrator
        (azurerm_sql_active_directory_administrator
           ?azuread_authentication_only ?id ?timeouts ~login
           ~object_id ~resource_group_name ~server_name ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?azuread_authentication_only ?id ?timeouts
    ~login ~object_id ~resource_group_name ~server_name ~tenant_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?azuread_authentication_only ?id ?timeouts ~login ~object_id
      ~resource_group_name ~server_name ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
