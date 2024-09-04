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

type azurerm_mariadb_server = {
  administrator_login : string prop option; [@option]
  administrator_login_password : string prop option; [@option]
  auto_grow_enabled : bool prop option; [@option]
  backup_retention_days : float prop option; [@option]
  create_mode : string prop option; [@option]
  creation_source_server_id : string prop option; [@option]
  geo_redundant_backup_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  restore_point_in_time : string prop option; [@option]
  sku_name : string prop;
  ssl_enforcement_enabled : bool prop;
  ssl_minimal_tls_version_enforced : string prop option; [@option]
  storage_mb : float prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  version : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mariadb_server) -> ()

let yojson_of_azurerm_mariadb_server =
  (function
   | {
       administrator_login = v_administrator_login;
       administrator_login_password = v_administrator_login_password;
       auto_grow_enabled = v_auto_grow_enabled;
       backup_retention_days = v_backup_retention_days;
       create_mode = v_create_mode;
       creation_source_server_id = v_creation_source_server_id;
       geo_redundant_backup_enabled = v_geo_redundant_backup_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       restore_point_in_time = v_restore_point_in_time;
       sku_name = v_sku_name;
       ssl_enforcement_enabled = v_ssl_enforcement_enabled;
       ssl_minimal_tls_version_enforced =
         v_ssl_minimal_tls_version_enforced;
       storage_mb = v_storage_mb;
       tags = v_tags;
       version = v_version;
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
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
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
         match v_storage_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "storage_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl_minimal_tls_version_enforced with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_minimal_tls_version_enforced", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_ssl_enforcement_enabled
         in
         ("ssl_enforcement_enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         match v_restore_point_in_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "restore_point_in_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
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
         match v_geo_redundant_backup_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "geo_redundant_backup_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_creation_source_server_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "creation_source_server_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "backup_retention_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_grow_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_grow_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_administrator_login_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administrator_login_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_administrator_login with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administrator_login", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mariadb_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mariadb_server

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mariadb_server ?administrator_login
    ?administrator_login_password ?auto_grow_enabled
    ?backup_retention_days ?create_mode ?creation_source_server_id
    ?geo_redundant_backup_enabled ?id ?public_network_access_enabled
    ?restore_point_in_time ?ssl_minimal_tls_version_enforced
    ?storage_mb ?tags ?timeouts ~location ~name ~resource_group_name
    ~sku_name ~ssl_enforcement_enabled ~version () :
    azurerm_mariadb_server =
  {
    administrator_login;
    administrator_login_password;
    auto_grow_enabled;
    backup_retention_days;
    create_mode;
    creation_source_server_id;
    geo_redundant_backup_enabled;
    id;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    restore_point_in_time;
    sku_name;
    ssl_enforcement_enabled;
    ssl_minimal_tls_version_enforced;
    storage_mb;
    tags;
    version;
    timeouts;
  }

type t = {
  tf_name : string;
  administrator_login : string prop;
  administrator_login_password : string prop;
  auto_grow_enabled : bool prop;
  backup_retention_days : float prop;
  create_mode : string prop;
  creation_source_server_id : string prop;
  fqdn : string prop;
  geo_redundant_backup_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  restore_point_in_time : string prop;
  sku_name : string prop;
  ssl_enforcement_enabled : bool prop;
  ssl_minimal_tls_version_enforced : string prop;
  storage_mb : float prop;
  tags : string Tf_core.assoc prop;
  version : string prop;
}

let make ?administrator_login ?administrator_login_password
    ?auto_grow_enabled ?backup_retention_days ?create_mode
    ?creation_source_server_id ?geo_redundant_backup_enabled ?id
    ?public_network_access_enabled ?restore_point_in_time
    ?ssl_minimal_tls_version_enforced ?storage_mb ?tags ?timeouts
    ~location ~name ~resource_group_name ~sku_name
    ~ssl_enforcement_enabled ~version __id =
  let __type = "azurerm_mariadb_server" in
  let __attrs =
    ({
       tf_name = __id;
       administrator_login =
         Prop.computed __type __id "administrator_login";
       administrator_login_password =
         Prop.computed __type __id "administrator_login_password";
       auto_grow_enabled =
         Prop.computed __type __id "auto_grow_enabled";
       backup_retention_days =
         Prop.computed __type __id "backup_retention_days";
       create_mode = Prop.computed __type __id "create_mode";
       creation_source_server_id =
         Prop.computed __type __id "creation_source_server_id";
       fqdn = Prop.computed __type __id "fqdn";
       geo_redundant_backup_enabled =
         Prop.computed __type __id "geo_redundant_backup_enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       restore_point_in_time =
         Prop.computed __type __id "restore_point_in_time";
       sku_name = Prop.computed __type __id "sku_name";
       ssl_enforcement_enabled =
         Prop.computed __type __id "ssl_enforcement_enabled";
       ssl_minimal_tls_version_enforced =
         Prop.computed __type __id "ssl_minimal_tls_version_enforced";
       storage_mb = Prop.computed __type __id "storage_mb";
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
        (azurerm_mariadb_server ?administrator_login
           ?administrator_login_password ?auto_grow_enabled
           ?backup_retention_days ?create_mode
           ?creation_source_server_id ?geo_redundant_backup_enabled
           ?id ?public_network_access_enabled ?restore_point_in_time
           ?ssl_minimal_tls_version_enforced ?storage_mb ?tags
           ?timeouts ~location ~name ~resource_group_name ~sku_name
           ~ssl_enforcement_enabled ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?administrator_login
    ?administrator_login_password ?auto_grow_enabled
    ?backup_retention_days ?create_mode ?creation_source_server_id
    ?geo_redundant_backup_enabled ?id ?public_network_access_enabled
    ?restore_point_in_time ?ssl_minimal_tls_version_enforced
    ?storage_mb ?tags ?timeouts ~location ~name ~resource_group_name
    ~sku_name ~ssl_enforcement_enabled ~version __id =
  let (r : _ Tf_core.resource) =
    make ?administrator_login ?administrator_login_password
      ?auto_grow_enabled ?backup_retention_days ?create_mode
      ?creation_source_server_id ?geo_redundant_backup_enabled ?id
      ?public_network_access_enabled ?restore_point_in_time
      ?ssl_minimal_tls_version_enforced ?storage_mb ?tags ?timeouts
      ~location ~name ~resource_group_name ~sku_name
      ~ssl_enforcement_enabled ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
