(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type maintenance_policy__weekly_maintenance_window__start_time = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : maintenance_policy__weekly_maintenance_window__start_time) ->
  ()

let yojson_of_maintenance_policy__weekly_maintenance_window__start_time
    =
  (function
   | {
       hours = v_hours;
       minutes = v_minutes;
       nanos = v_nanos;
       seconds = v_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : maintenance_policy__weekly_maintenance_window__start_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_maintenance_policy__weekly_maintenance_window__start_time

[@@@deriving.end]

type maintenance_policy__weekly_maintenance_window = {
  day : string prop;
  start_time :
    maintenance_policy__weekly_maintenance_window__start_time list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy__weekly_maintenance_window) -> ()

let yojson_of_maintenance_policy__weekly_maintenance_window =
  (function
   | { day = v_day; start_time = v_start_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_maintenance_policy__weekly_maintenance_window__start_time
             v_start_time
         in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_policy__weekly_maintenance_window ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy__weekly_maintenance_window

[@@@deriving.end]

type maintenance_policy = {
  description : string prop option; [@option]
  weekly_maintenance_window :
    maintenance_policy__weekly_maintenance_window list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy) -> ()

let yojson_of_maintenance_policy =
  (function
   | {
       description = v_description;
       weekly_maintenance_window = v_weekly_maintenance_window;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_maintenance_policy__weekly_maintenance_window
             v_weekly_maintenance_window
         in
         ("weekly_maintenance_window", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : maintenance_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy

[@@@deriving.end]

type persistence_config = {
  persistence_mode : string prop option; [@option]
  rdb_snapshot_period : string prop option; [@option]
  rdb_snapshot_start_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : persistence_config) -> ()

let yojson_of_persistence_config =
  (function
   | {
       persistence_mode = v_persistence_mode;
       rdb_snapshot_period = v_rdb_snapshot_period;
       rdb_snapshot_start_time = v_rdb_snapshot_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rdb_snapshot_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rdb_snapshot_start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rdb_snapshot_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rdb_snapshot_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_persistence_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "persistence_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : persistence_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_persistence_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type maintenance_schedule = {
  end_time : string prop;
  schedule_deadline_time : string prop;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_schedule) -> ()

let yojson_of_maintenance_schedule =
  (function
   | {
       end_time = v_end_time;
       schedule_deadline_time = v_schedule_deadline_time;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_schedule_deadline_time
         in
         ("schedule_deadline_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_time in
         ("end_time", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_schedule

[@@@deriving.end]

type nodes = { id : string prop; zone : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : nodes) -> ()

let yojson_of_nodes =
  (function
   | { id = v_id; zone = v_zone } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : nodes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nodes

[@@@deriving.end]

type server_ca_certs = {
  cert : string prop;
  create_time : string prop;
  expire_time : string prop;
  serial_number : string prop;
  sha1_fingerprint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : server_ca_certs) -> ()

let yojson_of_server_ca_certs =
  (function
   | {
       cert = v_cert;
       create_time = v_create_time;
       expire_time = v_expire_time;
       serial_number = v_serial_number;
       sha1_fingerprint = v_sha1_fingerprint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sha1_fingerprint
         in
         ("sha1_fingerprint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_serial_number in
         ("serial_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expire_time in
         ("expire_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cert in
         ("cert", arg) :: bnds
       in
       `Assoc bnds
    : server_ca_certs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_ca_certs

[@@@deriving.end]

type google_redis_instance = {
  alternative_location_id : string prop option; [@option]
  auth_enabled : bool prop option; [@option]
  authorized_network : string prop option; [@option]
  connect_mode : string prop option; [@option]
  customer_managed_key : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location_id : string prop option; [@option]
  memory_size_gb : float prop;
  name : string prop;
  project : string prop option; [@option]
  read_replicas_mode : string prop option; [@option]
  redis_configs : (string * string prop) list option; [@option]
  redis_version : string prop option; [@option]
  region : string prop option; [@option]
  replica_count : float prop option; [@option]
  reserved_ip_range : string prop option; [@option]
  secondary_ip_range : string prop option; [@option]
  tier : string prop option; [@option]
  transit_encryption_mode : string prop option; [@option]
  maintenance_policy : maintenance_policy list;
  persistence_config : persistence_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_redis_instance) -> ()

let yojson_of_google_redis_instance =
  (function
   | {
       alternative_location_id = v_alternative_location_id;
       auth_enabled = v_auth_enabled;
       authorized_network = v_authorized_network;
       connect_mode = v_connect_mode;
       customer_managed_key = v_customer_managed_key;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       location_id = v_location_id;
       memory_size_gb = v_memory_size_gb;
       name = v_name;
       project = v_project;
       read_replicas_mode = v_read_replicas_mode;
       redis_configs = v_redis_configs;
       redis_version = v_redis_version;
       region = v_region;
       replica_count = v_replica_count;
       reserved_ip_range = v_reserved_ip_range;
       secondary_ip_range = v_secondary_ip_range;
       tier = v_tier;
       transit_encryption_mode = v_transit_encryption_mode;
       maintenance_policy = v_maintenance_policy;
       persistence_config = v_persistence_config;
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
           yojson_of_list yojson_of_persistence_config
             v_persistence_config
         in
         ("persistence_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_maintenance_policy
             v_maintenance_policy
         in
         ("maintenance_policy", arg) :: bnds
       in
       let bnds =
         match v_transit_encryption_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transit_encryption_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secondary_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secondary_ip_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reserved_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reserved_ip_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replica_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replica_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redis_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redis_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redis_configs with
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
             let bnd = "redis_configs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_replicas_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read_replicas_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory_size_gb in
         ("memory_size_gb", arg) :: bnds
       in
       let bnds =
         match v_location_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_managed_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_managed_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connect_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connect_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorized_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorized_network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auth_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alternative_location_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alternative_location_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_redis_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_redis_instance

[@@@deriving.end]

let maintenance_policy__weekly_maintenance_window__start_time ?hours
    ?minutes ?nanos ?seconds () :
    maintenance_policy__weekly_maintenance_window__start_time =
  { hours; minutes; nanos; seconds }

let maintenance_policy__weekly_maintenance_window ~day ~start_time ()
    : maintenance_policy__weekly_maintenance_window =
  { day; start_time }

let maintenance_policy ?description ~weekly_maintenance_window () :
    maintenance_policy =
  { description; weekly_maintenance_window }

let persistence_config ?persistence_mode ?rdb_snapshot_period
    ?rdb_snapshot_start_time () : persistence_config =
  { persistence_mode; rdb_snapshot_period; rdb_snapshot_start_time }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_redis_instance ?alternative_location_id ?auth_enabled
    ?authorized_network ?connect_mode ?customer_managed_key
    ?display_name ?id ?labels ?location_id ?project
    ?read_replicas_mode ?redis_configs ?redis_version ?region
    ?replica_count ?reserved_ip_range ?secondary_ip_range ?tier
    ?transit_encryption_mode ?timeouts ~memory_size_gb ~name
    ~maintenance_policy ~persistence_config () :
    google_redis_instance =
  {
    alternative_location_id;
    auth_enabled;
    authorized_network;
    connect_mode;
    customer_managed_key;
    display_name;
    id;
    labels;
    location_id;
    memory_size_gb;
    name;
    project;
    read_replicas_mode;
    redis_configs;
    redis_version;
    region;
    replica_count;
    reserved_ip_range;
    secondary_ip_range;
    tier;
    transit_encryption_mode;
    maintenance_policy;
    persistence_config;
    timeouts;
  }

type t = {
  alternative_location_id : string prop;
  auth_enabled : bool prop;
  auth_string : string prop;
  authorized_network : string prop;
  connect_mode : string prop;
  create_time : string prop;
  current_location_id : string prop;
  customer_managed_key : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  host : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location_id : string prop;
  maintenance_schedule : maintenance_schedule list prop;
  memory_size_gb : float prop;
  name : string prop;
  nodes : nodes list prop;
  persistence_iam_identity : string prop;
  port : float prop;
  project : string prop;
  read_endpoint : string prop;
  read_endpoint_port : float prop;
  read_replicas_mode : string prop;
  redis_configs : (string * string) list prop;
  redis_version : string prop;
  region : string prop;
  replica_count : float prop;
  reserved_ip_range : string prop;
  secondary_ip_range : string prop;
  server_ca_certs : server_ca_certs list prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
  transit_encryption_mode : string prop;
}

let make ?alternative_location_id ?auth_enabled ?authorized_network
    ?connect_mode ?customer_managed_key ?display_name ?id ?labels
    ?location_id ?project ?read_replicas_mode ?redis_configs
    ?redis_version ?region ?replica_count ?reserved_ip_range
    ?secondary_ip_range ?tier ?transit_encryption_mode ?timeouts
    ~memory_size_gb ~name ~maintenance_policy ~persistence_config
    __id =
  let __type = "google_redis_instance" in
  let __attrs =
    ({
       alternative_location_id =
         Prop.computed __type __id "alternative_location_id";
       auth_enabled = Prop.computed __type __id "auth_enabled";
       auth_string = Prop.computed __type __id "auth_string";
       authorized_network =
         Prop.computed __type __id "authorized_network";
       connect_mode = Prop.computed __type __id "connect_mode";
       create_time = Prop.computed __type __id "create_time";
       current_location_id =
         Prop.computed __type __id "current_location_id";
       customer_managed_key =
         Prop.computed __type __id "customer_managed_key";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location_id = Prop.computed __type __id "location_id";
       maintenance_schedule =
         Prop.computed __type __id "maintenance_schedule";
       memory_size_gb = Prop.computed __type __id "memory_size_gb";
       name = Prop.computed __type __id "name";
       nodes = Prop.computed __type __id "nodes";
       persistence_iam_identity =
         Prop.computed __type __id "persistence_iam_identity";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       read_endpoint = Prop.computed __type __id "read_endpoint";
       read_endpoint_port =
         Prop.computed __type __id "read_endpoint_port";
       read_replicas_mode =
         Prop.computed __type __id "read_replicas_mode";
       redis_configs = Prop.computed __type __id "redis_configs";
       redis_version = Prop.computed __type __id "redis_version";
       region = Prop.computed __type __id "region";
       replica_count = Prop.computed __type __id "replica_count";
       reserved_ip_range =
         Prop.computed __type __id "reserved_ip_range";
       secondary_ip_range =
         Prop.computed __type __id "secondary_ip_range";
       server_ca_certs = Prop.computed __type __id "server_ca_certs";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       tier = Prop.computed __type __id "tier";
       transit_encryption_mode =
         Prop.computed __type __id "transit_encryption_mode";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_redis_instance
        (google_redis_instance ?alternative_location_id ?auth_enabled
           ?authorized_network ?connect_mode ?customer_managed_key
           ?display_name ?id ?labels ?location_id ?project
           ?read_replicas_mode ?redis_configs ?redis_version ?region
           ?replica_count ?reserved_ip_range ?secondary_ip_range
           ?tier ?transit_encryption_mode ?timeouts ~memory_size_gb
           ~name ~maintenance_policy ~persistence_config ());
    attrs = __attrs;
  }

let register ?tf_module ?alternative_location_id ?auth_enabled
    ?authorized_network ?connect_mode ?customer_managed_key
    ?display_name ?id ?labels ?location_id ?project
    ?read_replicas_mode ?redis_configs ?redis_version ?region
    ?replica_count ?reserved_ip_range ?secondary_ip_range ?tier
    ?transit_encryption_mode ?timeouts ~memory_size_gb ~name
    ~maintenance_policy ~persistence_config __id =
  let (r : _ Tf_core.resource) =
    make ?alternative_location_id ?auth_enabled ?authorized_network
      ?connect_mode ?customer_managed_key ?display_name ?id ?labels
      ?location_id ?project ?read_replicas_mode ?redis_configs
      ?redis_version ?region ?replica_count ?reserved_ip_range
      ?secondary_ip_range ?tier ?transit_encryption_mode ?timeouts
      ~memory_size_gb ~name ~maintenance_policy ~persistence_config
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
