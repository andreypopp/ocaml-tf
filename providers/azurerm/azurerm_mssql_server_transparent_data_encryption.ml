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

type azurerm_mssql_server_transparent_data_encryption = {
  auto_rotation_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  key_vault_key_id : string prop option; [@option]
  server_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_mssql_server_transparent_data_encryption) -> ()

let yojson_of_azurerm_mssql_server_transparent_data_encryption =
  (function
   | {
       auto_rotation_enabled = v_auto_rotation_enabled;
       id = v_id;
       key_vault_key_id = v_key_vault_key_id;
       server_id = v_server_id;
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
         let arg = yojson_of_prop yojson_of_string v_server_id in
         ("server_id", arg) :: bnds
       in
       let bnds =
         match v_key_vault_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_key_id", arg in
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
       let bnds =
         match v_auto_rotation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_rotation_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mssql_server_transparent_data_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_server_transparent_data_encryption

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_server_transparent_data_encryption
    ?auto_rotation_enabled ?id ?key_vault_key_id ?timeouts ~server_id
    () : azurerm_mssql_server_transparent_data_encryption =
  {
    auto_rotation_enabled;
    id;
    key_vault_key_id;
    server_id;
    timeouts;
  }

type t = {
  tf_name : string;
  auto_rotation_enabled : bool prop;
  id : string prop;
  key_vault_key_id : string prop;
  server_id : string prop;
}

let make ?auto_rotation_enabled ?id ?key_vault_key_id ?timeouts
    ~server_id __id =
  let __type = "azurerm_mssql_server_transparent_data_encryption" in
  let __attrs =
    ({
       tf_name = __id;
       auto_rotation_enabled =
         Prop.computed __type __id "auto_rotation_enabled";
       id = Prop.computed __type __id "id";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       server_id = Prop.computed __type __id "server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_server_transparent_data_encryption
        (azurerm_mssql_server_transparent_data_encryption
           ?auto_rotation_enabled ?id ?key_vault_key_id ?timeouts
           ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_rotation_enabled ?id ?key_vault_key_id
    ?timeouts ~server_id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_rotation_enabled ?id ?key_vault_key_id ?timeouts
      ~server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
