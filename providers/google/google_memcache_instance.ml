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
  duration : string prop;
  start_time :
    maintenance_policy__weekly_maintenance_window__start_time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_start_time then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_maintenance_policy__weekly_maintenance_window__start_time)
               v_start_time
           in
           let bnd = "start_time", arg in
           bnd :: bnds
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
  description : string prop option; [@option]
  weekly_maintenance_window :
    maintenance_policy__weekly_maintenance_window list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_weekly_maintenance_window then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_maintenance_policy__weekly_maintenance_window)
               v_weekly_maintenance_window
           in
           let bnd = "weekly_maintenance_window", arg in
           bnd :: bnds
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

type memcache_parameters = {
  params : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : memcache_parameters) -> ()

let yojson_of_memcache_parameters =
  (function
   | { params = v_params } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_params with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "params", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : memcache_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_memcache_parameters

[@@@deriving.end]

type node_config = {
  cpu_count : float prop;
  memory_size_mb : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config) -> ()

let yojson_of_node_config =
  (function
   | { cpu_count = v_cpu_count; memory_size_mb = v_memory_size_mb }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory_size_mb in
         ("memory_size_mb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_cpu_count in
         ("cpu_count", arg) :: bnds
       in
       `Assoc bnds
    : node_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config

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

type memcache_nodes = {
  host : string prop;
  node_id : string prop;
  port : float prop;
  state : string prop;
  zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : memcache_nodes) -> ()

let yojson_of_memcache_nodes =
  (function
   | {
       host = v_host;
       node_id = v_node_id;
       port = v_port;
       state = v_state;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_id in
         ("node_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : memcache_nodes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_memcache_nodes

[@@@deriving.end]

type google_memcache_instance = {
  authorized_network : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  memcache_version : string prop option; [@option]
  name : string prop;
  node_count : float prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  reserved_ip_range_id : string prop list option; [@option]
  zones : string prop list option; [@option]
  maintenance_policy : maintenance_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  memcache_parameters : memcache_parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_config : node_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_memcache_instance) -> ()

let yojson_of_google_memcache_instance =
  (function
   | {
       authorized_network = v_authorized_network;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       memcache_version = v_memcache_version;
       name = v_name;
       node_count = v_node_count;
       project = v_project;
       region = v_region;
       reserved_ip_range_id = v_reserved_ip_range_id;
       zones = v_zones;
       maintenance_policy = v_maintenance_policy;
       memcache_parameters = v_memcache_parameters;
       node_config = v_node_config;
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
         if Stdlib.( = ) [] v_node_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config) v_node_config
           in
           let bnd = "node_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_memcache_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_memcache_parameters)
               v_memcache_parameters
           in
           let bnd = "memcache_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance_policy)
               v_maintenance_policy
           in
           let bnd = "maintenance_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reserved_ip_range_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "reserved_ip_range_id", arg in
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
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
         match v_memcache_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "memcache_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         match v_authorized_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorized_network", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_memcache_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_memcache_instance

[@@@deriving.end]

let maintenance_policy__weekly_maintenance_window__start_time ?hours
    ?minutes ?nanos ?seconds () :
    maintenance_policy__weekly_maintenance_window__start_time =
  { hours; minutes; nanos; seconds }

let maintenance_policy__weekly_maintenance_window ~day ~duration
    ~start_time () : maintenance_policy__weekly_maintenance_window =
  { day; duration; start_time }

let maintenance_policy ?description ~weekly_maintenance_window () :
    maintenance_policy =
  { description; weekly_maintenance_window }

let memcache_parameters ?params () : memcache_parameters = { params }

let node_config ~cpu_count ~memory_size_mb () : node_config =
  { cpu_count; memory_size_mb }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_memcache_instance ?authorized_network ?display_name ?id
    ?labels ?memcache_version ?project ?region ?reserved_ip_range_id
    ?zones ?(maintenance_policy = []) ?(memcache_parameters = [])
    ?timeouts ~name ~node_count ~node_config () :
    google_memcache_instance =
  {
    authorized_network;
    display_name;
    id;
    labels;
    memcache_version;
    name;
    node_count;
    project;
    region;
    reserved_ip_range_id;
    zones;
    maintenance_policy;
    memcache_parameters;
    node_config;
    timeouts;
  }

type t = {
  tf_name : string;
  authorized_network : string prop;
  create_time : string prop;
  discovery_endpoint : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  maintenance_schedule : maintenance_schedule list prop;
  memcache_full_version : string prop;
  memcache_nodes : memcache_nodes list prop;
  memcache_version : string prop;
  name : string prop;
  node_count : float prop;
  project : string prop;
  region : string prop;
  reserved_ip_range_id : string list prop;
  terraform_labels : string Tf_core.assoc prop;
  zones : string list prop;
}

let make ?authorized_network ?display_name ?id ?labels
    ?memcache_version ?project ?region ?reserved_ip_range_id ?zones
    ?(maintenance_policy = []) ?(memcache_parameters = []) ?timeouts
    ~name ~node_count ~node_config __id =
  let __type = "google_memcache_instance" in
  let __attrs =
    ({
       tf_name = __id;
       authorized_network =
         Prop.computed __type __id "authorized_network";
       create_time = Prop.computed __type __id "create_time";
       discovery_endpoint =
         Prop.computed __type __id "discovery_endpoint";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       maintenance_schedule =
         Prop.computed __type __id "maintenance_schedule";
       memcache_full_version =
         Prop.computed __type __id "memcache_full_version";
       memcache_nodes = Prop.computed __type __id "memcache_nodes";
       memcache_version =
         Prop.computed __type __id "memcache_version";
       name = Prop.computed __type __id "name";
       node_count = Prop.computed __type __id "node_count";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       reserved_ip_range_id =
         Prop.computed __type __id "reserved_ip_range_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_memcache_instance
        (google_memcache_instance ?authorized_network ?display_name
           ?id ?labels ?memcache_version ?project ?region
           ?reserved_ip_range_id ?zones ~maintenance_policy
           ~memcache_parameters ?timeouts ~name ~node_count
           ~node_config ());
    attrs = __attrs;
  }

let register ?tf_module ?authorized_network ?display_name ?id ?labels
    ?memcache_version ?project ?region ?reserved_ip_range_id ?zones
    ?(maintenance_policy = []) ?(memcache_parameters = []) ?timeouts
    ~name ~node_count ~node_config __id =
  let (r : _ Tf_core.resource) =
    make ?authorized_network ?display_name ?id ?labels
      ?memcache_version ?project ?region ?reserved_ip_range_id ?zones
      ~maintenance_policy ~memcache_parameters ?timeouts ~name
      ~node_count ~node_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
