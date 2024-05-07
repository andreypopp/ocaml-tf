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

type azurerm_mssql_managed_instance_active_directory_administrator = {
  azuread_authentication_only : bool prop option; [@option]
  id : string prop option; [@option]
  login_username : string prop;
  managed_instance_id : string prop;
  object_id : string prop;
  tenant_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_mssql_managed_instance_active_directory_administrator) ->
  ()

let yojson_of_azurerm_mssql_managed_instance_active_directory_administrator
    =
  (function
   | {
       azuread_authentication_only = v_azuread_authentication_only;
       id = v_id;
       login_username = v_login_username;
       managed_instance_id = v_managed_instance_id;
       object_id = v_object_id;
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
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_instance_id
         in
         ("managed_instance_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_login_username
         in
         ("login_username", arg) :: bnds
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
    : azurerm_mssql_managed_instance_active_directory_administrator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_mssql_managed_instance_active_directory_administrator

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_managed_instance_active_directory_administrator
    ?azuread_authentication_only ?id ?timeouts ~login_username
    ~managed_instance_id ~object_id ~tenant_id () :
    azurerm_mssql_managed_instance_active_directory_administrator =
  {
    azuread_authentication_only;
    id;
    login_username;
    managed_instance_id;
    object_id;
    tenant_id;
    timeouts;
  }

type t = {
  tf_name : string;
  azuread_authentication_only : bool prop;
  id : string prop;
  login_username : string prop;
  managed_instance_id : string prop;
  object_id : string prop;
  tenant_id : string prop;
}

let make ?azuread_authentication_only ?id ?timeouts ~login_username
    ~managed_instance_id ~object_id ~tenant_id __id =
  let __type =
    "azurerm_mssql_managed_instance_active_directory_administrator"
  in
  let __attrs =
    ({
       tf_name = __id;
       azuread_authentication_only =
         Prop.computed __type __id "azuread_authentication_only";
       id = Prop.computed __type __id "id";
       login_username = Prop.computed __type __id "login_username";
       managed_instance_id =
         Prop.computed __type __id "managed_instance_id";
       object_id = Prop.computed __type __id "object_id";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_managed_instance_active_directory_administrator
        (azurerm_mssql_managed_instance_active_directory_administrator
           ?azuread_authentication_only ?id ?timeouts ~login_username
           ~managed_instance_id ~object_id ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?azuread_authentication_only ?id ?timeouts
    ~login_username ~managed_instance_id ~object_id ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?azuread_authentication_only ?id ?timeouts ~login_username
      ~managed_instance_id ~object_id ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
