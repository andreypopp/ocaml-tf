(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type maintenance_policy__weekly_maintenance_window__start_time = {
  hours : float prop;
  minutes : float prop;
  nanos : float prop;
  seconds : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_seconds in
         ("seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_nanos in
         ("nanos", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minutes in
         ("minutes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hours in
         ("hours", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_policy__weekly_maintenance_window__start_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_maintenance_policy__weekly_maintenance_window__start_time

[@@@deriving.end]

type maintenance_policy__weekly_maintenance_window = {
  day : string prop;
  duration : string prop;
  start_time :
    maintenance_policy__weekly_maintenance_window__start_time list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy__weekly_maintenance_window) -> ()

let yojson_of_maintenance_policy__weekly_maintenance_window =
  (function
   | {
       day = v_day;
       duration = v_duration;
       start_time = v_start_time;
     } ->
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
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
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
  create_time : string prop;
  description : string prop;
  update_time : string prop;
  weekly_maintenance_window :
    maintenance_policy__weekly_maintenance_window list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy) -> ()

let yojson_of_maintenance_policy =
  (function
   | {
       create_time = v_create_time;
       description = v_description;
       update_time = v_update_time;
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
         let arg = yojson_of_prop yojson_of_string v_update_time in
         ("update_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy

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

type persistence_config = {
  persistence_mode : string prop;
  rdb_next_snapshot_time : string prop;
  rdb_snapshot_period : string prop;
  rdb_snapshot_start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : persistence_config) -> ()

let yojson_of_persistence_config =
  (function
   | {
       persistence_mode = v_persistence_mode;
       rdb_next_snapshot_time = v_rdb_next_snapshot_time;
       rdb_snapshot_period = v_rdb_snapshot_period;
       rdb_snapshot_start_time = v_rdb_snapshot_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rdb_snapshot_start_time
         in
         ("rdb_snapshot_start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rdb_snapshot_period
         in
         ("rdb_snapshot_period", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rdb_next_snapshot_time
         in
         ("rdb_next_snapshot_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_persistence_mode
         in
         ("persistence_mode", arg) :: bnds
       in
       `Assoc bnds
    : persistence_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_persistence_config

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
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_redis_instance) -> ()

let yojson_of_google_redis_instance =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_redis_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_redis_instance

[@@@deriving.end]

let google_redis_instance ?id ?project ?region ~name () :
    google_redis_instance =
  { id; name; project; region }

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
  maintenance_policy : maintenance_policy list prop;
  maintenance_schedule : maintenance_schedule list prop;
  memory_size_gb : float prop;
  name : string prop;
  nodes : nodes list prop;
  persistence_config : persistence_config list prop;
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

let make ?id ?project ?region ~name __id =
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
       maintenance_policy =
         Prop.computed __type __id "maintenance_policy";
       maintenance_schedule =
         Prop.computed __type __id "maintenance_schedule";
       memory_size_gb = Prop.computed __type __id "memory_size_gb";
       name = Prop.computed __type __id "name";
       nodes = Prop.computed __type __id "nodes";
       persistence_config =
         Prop.computed __type __id "persistence_config";
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
        (google_redis_instance ?id ?project ?region ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
