(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backup_restore = {
  backup_created_at : string prop option; [@option]
  database_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup_restore) -> ()

let yojson_of_backup_restore =
  (function
   | {
       backup_created_at = v_backup_created_at;
       database_name = v_database_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_backup_created_at with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backup_created_at", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup_restore -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup_restore

[@@@deriving.end]

type maintenance_window = { day : string prop; hour : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window) -> ()

let yojson_of_maintenance_window =
  (function
   | { day = v_day; hour = v_hour } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hour in
         ("hour", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type digitalocean_database_cluster = {
  engine : string prop;
  eviction_policy : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  node_count : float prop;
  private_network_uuid : string prop option; [@option]
  project_id : string prop option; [@option]
  region : string prop;
  size : string prop;
  sql_mode : string prop option; [@option]
  storage_size_mib : string prop option; [@option]
  tags : string prop list option; [@option]
  version : string prop option; [@option]
  backup_restore : backup_restore list;
  maintenance_window : maintenance_window list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_database_cluster) -> ()

let yojson_of_digitalocean_database_cluster =
  (function
   | {
       engine = v_engine;
       eviction_policy = v_eviction_policy;
       id = v_id;
       name = v_name;
       node_count = v_node_count;
       private_network_uuid = v_private_network_uuid;
       project_id = v_project_id;
       region = v_region;
       size = v_size;
       sql_mode = v_sql_mode;
       storage_size_mib = v_storage_size_mib;
       tags = v_tags;
       version = v_version;
       backup_restore = v_backup_restore;
       maintenance_window = v_maintenance_window;
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
           yojson_of_list yojson_of_maintenance_window
             v_maintenance_window
         in
         ("maintenance_window", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_backup_restore v_backup_restore
         in
         ("backup_restore", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_size_mib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_size_mib", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_network_uuid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_network_uuid", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_node_count in
         ("node_count", arg) :: bnds
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
         match v_eviction_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eviction_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_engine in
         ("engine", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_database_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_database_cluster

[@@@deriving.end]

let backup_restore ?backup_created_at ~database_name () :
    backup_restore =
  { backup_created_at; database_name }

let maintenance_window ~day ~hour () : maintenance_window =
  { day; hour }

let timeouts ?create () : timeouts = { create }

let digitalocean_database_cluster ?eviction_policy ?id
    ?private_network_uuid ?project_id ?sql_mode ?storage_size_mib
    ?tags ?version ?(backup_restore = []) ?(maintenance_window = [])
    ?timeouts ~engine ~name ~node_count ~region ~size () :
    digitalocean_database_cluster =
  {
    engine;
    eviction_policy;
    id;
    name;
    node_count;
    private_network_uuid;
    project_id;
    region;
    size;
    sql_mode;
    storage_size_mib;
    tags;
    version;
    backup_restore;
    maintenance_window;
    timeouts;
  }

type t = {
  tf_name : string;
  database : string prop;
  engine : string prop;
  eviction_policy : string prop;
  host : string prop;
  id : string prop;
  name : string prop;
  node_count : float prop;
  password : string prop;
  port : float prop;
  private_host : string prop;
  private_network_uuid : string prop;
  private_uri : string prop;
  project_id : string prop;
  region : string prop;
  size : string prop;
  sql_mode : string prop;
  storage_size_mib : string prop;
  tags : string list prop;
  uri : string prop;
  urn : string prop;
  user : string prop;
  version : string prop;
}

let make ?eviction_policy ?id ?private_network_uuid ?project_id
    ?sql_mode ?storage_size_mib ?tags ?version ?(backup_restore = [])
    ?(maintenance_window = []) ?timeouts ~engine ~name ~node_count
    ~region ~size __id =
  let __type = "digitalocean_database_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       database = Prop.computed __type __id "database";
       engine = Prop.computed __type __id "engine";
       eviction_policy = Prop.computed __type __id "eviction_policy";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       node_count = Prop.computed __type __id "node_count";
       password = Prop.computed __type __id "password";
       port = Prop.computed __type __id "port";
       private_host = Prop.computed __type __id "private_host";
       private_network_uuid =
         Prop.computed __type __id "private_network_uuid";
       private_uri = Prop.computed __type __id "private_uri";
       project_id = Prop.computed __type __id "project_id";
       region = Prop.computed __type __id "region";
       size = Prop.computed __type __id "size";
       sql_mode = Prop.computed __type __id "sql_mode";
       storage_size_mib =
         Prop.computed __type __id "storage_size_mib";
       tags = Prop.computed __type __id "tags";
       uri = Prop.computed __type __id "uri";
       urn = Prop.computed __type __id "urn";
       user = Prop.computed __type __id "user";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_cluster
        (digitalocean_database_cluster ?eviction_policy ?id
           ?private_network_uuid ?project_id ?sql_mode
           ?storage_size_mib ?tags ?version ~backup_restore
           ~maintenance_window ?timeouts ~engine ~name ~node_count
           ~region ~size ());
    attrs = __attrs;
  }

let register ?tf_module ?eviction_policy ?id ?private_network_uuid
    ?project_id ?sql_mode ?storage_size_mib ?tags ?version
    ?(backup_restore = []) ?(maintenance_window = []) ?timeouts
    ~engine ~name ~node_count ~region ~size __id =
  let (r : _ Tf_core.resource) =
    make ?eviction_policy ?id ?private_network_uuid ?project_id
      ?sql_mode ?storage_size_mib ?tags ?version ~backup_restore
      ~maintenance_window ?timeouts ~engine ~name ~node_count ~region
      ~size __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
