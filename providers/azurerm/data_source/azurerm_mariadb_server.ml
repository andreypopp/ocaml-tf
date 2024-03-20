(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type storage_profile = {
  auto_grow : string prop;
  backup_retention_days : float prop;
  geo_redundant_backup : string prop;
  storage_mb : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_profile) -> ()

let yojson_of_storage_profile =
  (function
   | {
       auto_grow = v_auto_grow;
       backup_retention_days = v_backup_retention_days;
       geo_redundant_backup = v_geo_redundant_backup;
       storage_mb = v_storage_mb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_storage_mb in
         ("storage_mb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_geo_redundant_backup
         in
         ("geo_redundant_backup", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_backup_retention_days
         in
         ("backup_retention_days", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auto_grow in
         ("auto_grow", arg) :: bnds
       in
       `Assoc bnds
    : storage_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_profile

[@@@deriving.end]

type azurerm_mariadb_server = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mariadb_server) -> ()

let yojson_of_azurerm_mariadb_server =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mariadb_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mariadb_server

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_mariadb_server ?id ?timeouts ~name ~resource_group_name
    () : azurerm_mariadb_server =
  { id; name; resource_group_name; timeouts }

type t = {
  administrator_login : string prop;
  fqdn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  ssl_enforcement : string prop;
  storage_profile : storage_profile list prop;
  tags : (string * string) list prop;
  version : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_mariadb_server" in
  let __attrs =
    ({
       administrator_login =
         Prop.computed __type __id "administrator_login";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       ssl_enforcement = Prop.computed __type __id "ssl_enforcement";
       storage_profile = Prop.computed __type __id "storage_profile";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mariadb_server
        (azurerm_mariadb_server ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
