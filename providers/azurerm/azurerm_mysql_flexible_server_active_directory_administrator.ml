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

type azurerm_mysql_flexible_server_active_directory_administrator = {
  id : string prop option; [@option]
  identity_id : string prop;
  login : string prop;
  object_id : string prop;
  server_id : string prop;
  tenant_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_mysql_flexible_server_active_directory_administrator) ->
  ()

let yojson_of_azurerm_mysql_flexible_server_active_directory_administrator
    =
  (function
   | {
       id = v_id;
       identity_id = v_identity_id;
       login = v_login;
       object_id = v_object_id;
       server_id = v_server_id;
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
         let arg = yojson_of_prop yojson_of_string v_server_id in
         ("server_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_identity_id in
         ("identity_id", arg) :: bnds
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
    : azurerm_mysql_flexible_server_active_directory_administrator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_mysql_flexible_server_active_directory_administrator

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mysql_flexible_server_active_directory_administrator ?id
    ?timeouts ~identity_id ~login ~object_id ~server_id ~tenant_id ()
    : azurerm_mysql_flexible_server_active_directory_administrator =
  {
    id;
    identity_id;
    login;
    object_id;
    server_id;
    tenant_id;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  identity_id : string prop;
  login : string prop;
  object_id : string prop;
  server_id : string prop;
  tenant_id : string prop;
}

let make ?id ?timeouts ~identity_id ~login ~object_id ~server_id
    ~tenant_id __id =
  let __type =
    "azurerm_mysql_flexible_server_active_directory_administrator"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       identity_id = Prop.computed __type __id "identity_id";
       login = Prop.computed __type __id "login";
       object_id = Prop.computed __type __id "object_id";
       server_id = Prop.computed __type __id "server_id";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mysql_flexible_server_active_directory_administrator
        (azurerm_mysql_flexible_server_active_directory_administrator
           ?id ?timeouts ~identity_id ~login ~object_id ~server_id
           ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~identity_id ~login ~object_id
    ~server_id ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~identity_id ~login ~object_id ~server_id
      ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
