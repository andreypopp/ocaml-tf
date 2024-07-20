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

type azurerm_data_protection_backup_instance_postgresql_flexible_server = {
  backup_policy_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  server_id : string prop;
  vault_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_data_protection_backup_instance_postgresql_flexible_server) ->
  ()

let yojson_of_azurerm_data_protection_backup_instance_postgresql_flexible_server
    =
  (function
   | {
       backup_policy_id = v_backup_policy_id;
       id = v_id;
       location = v_location;
       name = v_name;
       server_id = v_server_id;
       vault_id = v_vault_id;
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
         let arg = yojson_of_prop yojson_of_string v_vault_id in
         ("vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_id in
         ("server_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_backup_policy_id
         in
         ("backup_policy_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_data_protection_backup_instance_postgresql_flexible_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_data_protection_backup_instance_postgresql_flexible_server

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_protection_backup_instance_postgresql_flexible_server
    ?id ?timeouts ~backup_policy_id ~location ~name ~server_id
    ~vault_id () :
    azurerm_data_protection_backup_instance_postgresql_flexible_server
    =
  {
    backup_policy_id;
    id;
    location;
    name;
    server_id;
    vault_id;
    timeouts;
  }

type t = {
  tf_name : string;
  backup_policy_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  server_id : string prop;
  vault_id : string prop;
}

let make ?id ?timeouts ~backup_policy_id ~location ~name ~server_id
    ~vault_id __id =
  let __type =
    "azurerm_data_protection_backup_instance_postgresql_flexible_server"
  in
  let __attrs =
    ({
       tf_name = __id;
       backup_policy_id =
         Prop.computed __type __id "backup_policy_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       server_id = Prop.computed __type __id "server_id";
       vault_id = Prop.computed __type __id "vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_protection_backup_instance_postgresql_flexible_server
        (azurerm_data_protection_backup_instance_postgresql_flexible_server
           ?id ?timeouts ~backup_policy_id ~location ~name ~server_id
           ~vault_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~backup_policy_id ~location
    ~name ~server_id ~vault_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~backup_policy_id ~location ~name ~server_id
      ~vault_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
