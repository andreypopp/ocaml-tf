(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type import = {
  administrator_login : string prop;
  administrator_login_password : string prop;
  authentication_type : string prop;
  operation_mode : string prop option; [@option]
  storage_key : string prop;
  storage_key_type : string prop;
  storage_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : import) -> ()

let yojson_of_import =
  (function
   | {
       administrator_login = v_administrator_login;
       administrator_login_password = v_administrator_login_password;
       authentication_type = v_authentication_type;
       operation_mode = v_operation_mode;
       storage_key = v_storage_key;
       storage_key_type = v_storage_key_type;
       storage_uri = v_storage_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_uri in
         ("storage_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_key_type
         in
         ("storage_key_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_key in
         ("storage_key", arg) :: bnds
       in
       let bnds =
         match v_operation_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operation_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_type
         in
         ("authentication_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_administrator_login_password
         in
         ("administrator_login_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_administrator_login
         in
         ("administrator_login", arg) :: bnds
       in
       `Assoc bnds
    : import -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_import

[@@@deriving.end]

type threat_detection_policy = {
  disabled_alerts : string prop list option; [@option]
  email_account_admins : string prop option; [@option]
  email_addresses : string prop list option; [@option]
  retention_days : float prop option; [@option]
  state : string prop option; [@option]
  storage_account_access_key : string prop option; [@option]
  storage_endpoint : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threat_detection_policy) -> ()

let yojson_of_threat_detection_policy =
  (function
   | {
       disabled_alerts = v_disabled_alerts;
       email_account_admins = v_email_account_admins;
       email_addresses = v_email_addresses;
       retention_days = v_retention_days;
       state = v_state;
       storage_account_access_key = v_storage_account_access_key;
       storage_endpoint = v_storage_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_access_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_access_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_account_admins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_account_admins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled_alerts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "disabled_alerts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : threat_detection_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threat_detection_policy

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

type azurerm_sql_database = {
  collation : string prop option; [@option]
  create_mode : string prop option; [@option]
  edition : string prop option; [@option]
  elastic_pool_name : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  max_size_bytes : string prop option; [@option]
  max_size_gb : string prop option; [@option]
  name : string prop;
  read_scale : bool prop option; [@option]
  requested_service_objective_id : string prop option; [@option]
  requested_service_objective_name : string prop option; [@option]
  resource_group_name : string prop;
  restore_point_in_time : string prop option; [@option]
  server_name : string prop;
  source_database_deletion_date : string prop option; [@option]
  source_database_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  zone_redundant : bool prop option; [@option]
  import : import list;
  threat_detection_policy : threat_detection_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sql_database) -> ()

let yojson_of_azurerm_sql_database =
  (function
   | {
       collation = v_collation;
       create_mode = v_create_mode;
       edition = v_edition;
       elastic_pool_name = v_elastic_pool_name;
       id = v_id;
       location = v_location;
       max_size_bytes = v_max_size_bytes;
       max_size_gb = v_max_size_gb;
       name = v_name;
       read_scale = v_read_scale;
       requested_service_objective_id =
         v_requested_service_objective_id;
       requested_service_objective_name =
         v_requested_service_objective_name;
       resource_group_name = v_resource_group_name;
       restore_point_in_time = v_restore_point_in_time;
       server_name = v_server_name;
       source_database_deletion_date =
         v_source_database_deletion_date;
       source_database_id = v_source_database_id;
       tags = v_tags;
       zone_redundant = v_zone_redundant;
       import = v_import;
       threat_detection_policy = v_threat_detection_policy;
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
           yojson_of_list yojson_of_threat_detection_policy
             v_threat_detection_policy
         in
         ("threat_detection_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_import v_import in
         ("import", arg) :: bnds
       in
       let bnds =
         match v_zone_redundant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_redundant", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_database_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_database_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_database_deletion_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_database_deletion_date", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_name in
         ("server_name", arg) :: bnds
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
         match v_requested_service_objective_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "requested_service_objective_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_requested_service_objective_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "requested_service_objective_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_scale with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_scale", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_size_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_size_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_size_bytes", arg in
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
         match v_elastic_pool_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elastic_pool_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edition", arg in
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
         match v_collation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "collation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_sql_database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sql_database

[@@@deriving.end]

let import ?operation_mode ~administrator_login
    ~administrator_login_password ~authentication_type ~storage_key
    ~storage_key_type ~storage_uri () : import =
  {
    administrator_login;
    administrator_login_password;
    authentication_type;
    operation_mode;
    storage_key;
    storage_key_type;
    storage_uri;
  }

let threat_detection_policy ?disabled_alerts ?email_account_admins
    ?email_addresses ?retention_days ?state
    ?storage_account_access_key ?storage_endpoint () :
    threat_detection_policy =
  {
    disabled_alerts;
    email_account_admins;
    email_addresses;
    retention_days;
    state;
    storage_account_access_key;
    storage_endpoint;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sql_database ?collation ?create_mode ?edition
    ?elastic_pool_name ?id ?max_size_bytes ?max_size_gb ?read_scale
    ?requested_service_objective_id ?requested_service_objective_name
    ?restore_point_in_time ?source_database_deletion_date
    ?source_database_id ?tags ?zone_redundant ?timeouts ~location
    ~name ~resource_group_name ~server_name ~import
    ~threat_detection_policy () : azurerm_sql_database =
  {
    collation;
    create_mode;
    edition;
    elastic_pool_name;
    id;
    location;
    max_size_bytes;
    max_size_gb;
    name;
    read_scale;
    requested_service_objective_id;
    requested_service_objective_name;
    resource_group_name;
    restore_point_in_time;
    server_name;
    source_database_deletion_date;
    source_database_id;
    tags;
    zone_redundant;
    import;
    threat_detection_policy;
    timeouts;
  }

type t = {
  collation : string prop;
  create_mode : string prop;
  creation_date : string prop;
  default_secondary_location : string prop;
  edition : string prop;
  elastic_pool_name : string prop;
  encryption : string prop;
  id : string prop;
  location : string prop;
  max_size_bytes : string prop;
  max_size_gb : string prop;
  name : string prop;
  read_scale : bool prop;
  requested_service_objective_id : string prop;
  requested_service_objective_name : string prop;
  resource_group_name : string prop;
  restore_point_in_time : string prop;
  server_name : string prop;
  source_database_deletion_date : string prop;
  source_database_id : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

let make ?collation ?create_mode ?edition ?elastic_pool_name ?id
    ?max_size_bytes ?max_size_gb ?read_scale
    ?requested_service_objective_id ?requested_service_objective_name
    ?restore_point_in_time ?source_database_deletion_date
    ?source_database_id ?tags ?zone_redundant ?timeouts ~location
    ~name ~resource_group_name ~server_name ~import
    ~threat_detection_policy __id =
  let __type = "azurerm_sql_database" in
  let __attrs =
    ({
       collation = Prop.computed __type __id "collation";
       create_mode = Prop.computed __type __id "create_mode";
       creation_date = Prop.computed __type __id "creation_date";
       default_secondary_location =
         Prop.computed __type __id "default_secondary_location";
       edition = Prop.computed __type __id "edition";
       elastic_pool_name =
         Prop.computed __type __id "elastic_pool_name";
       encryption = Prop.computed __type __id "encryption";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       max_size_bytes = Prop.computed __type __id "max_size_bytes";
       max_size_gb = Prop.computed __type __id "max_size_gb";
       name = Prop.computed __type __id "name";
       read_scale = Prop.computed __type __id "read_scale";
       requested_service_objective_id =
         Prop.computed __type __id "requested_service_objective_id";
       requested_service_objective_name =
         Prop.computed __type __id "requested_service_objective_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       restore_point_in_time =
         Prop.computed __type __id "restore_point_in_time";
       server_name = Prop.computed __type __id "server_name";
       source_database_deletion_date =
         Prop.computed __type __id "source_database_deletion_date";
       source_database_id =
         Prop.computed __type __id "source_database_id";
       tags = Prop.computed __type __id "tags";
       zone_redundant = Prop.computed __type __id "zone_redundant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sql_database
        (azurerm_sql_database ?collation ?create_mode ?edition
           ?elastic_pool_name ?id ?max_size_bytes ?max_size_gb
           ?read_scale ?requested_service_objective_id
           ?requested_service_objective_name ?restore_point_in_time
           ?source_database_deletion_date ?source_database_id ?tags
           ?zone_redundant ?timeouts ~location ~name
           ~resource_group_name ~server_name ~import
           ~threat_detection_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?collation ?create_mode ?edition
    ?elastic_pool_name ?id ?max_size_bytes ?max_size_gb ?read_scale
    ?requested_service_objective_id ?requested_service_objective_name
    ?restore_point_in_time ?source_database_deletion_date
    ?source_database_id ?tags ?zone_redundant ?timeouts ~location
    ~name ~resource_group_name ~server_name ~import
    ~threat_detection_policy __id =
  let (r : _ Tf_core.resource) =
    make ?collation ?create_mode ?edition ?elastic_pool_name ?id
      ?max_size_bytes ?max_size_gb ?read_scale
      ?requested_service_objective_id
      ?requested_service_objective_name ?restore_point_in_time
      ?source_database_deletion_date ?source_database_id ?tags
      ?zone_redundant ?timeouts ~location ~name ~resource_group_name
      ~server_name ~import ~threat_detection_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
