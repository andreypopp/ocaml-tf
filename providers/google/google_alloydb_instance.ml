(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type client_connection_config__ssl_config = {
  ssl_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_connection_config__ssl_config) -> ()

let yojson_of_client_connection_config__ssl_config =
  (function
   | { ssl_mode = v_ssl_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ssl_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : client_connection_config__ssl_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_connection_config__ssl_config

[@@@deriving.end]

type client_connection_config = {
  require_connectors : bool prop option; [@option]
  ssl_config : client_connection_config__ssl_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_connection_config) -> ()

let yojson_of_client_connection_config =
  (function
   | {
       require_connectors = v_require_connectors;
       ssl_config = v_ssl_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_client_connection_config__ssl_config
             v_ssl_config
         in
         ("ssl_config", arg) :: bnds
       in
       let bnds =
         match v_require_connectors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_connectors", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : client_connection_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_connection_config

[@@@deriving.end]

type machine_config = { cpu_count : float prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : machine_config) -> ()

let yojson_of_machine_config =
  (function
   | { cpu_count = v_cpu_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cpu_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : machine_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_machine_config

[@@@deriving.end]

type query_insights_config = {
  query_plans_per_minute : float prop option; [@option]
  query_string_length : float prop option; [@option]
  record_application_tags : bool prop option; [@option]
  record_client_address : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : query_insights_config) -> ()

let yojson_of_query_insights_config =
  (function
   | {
       query_plans_per_minute = v_query_plans_per_minute;
       query_string_length = v_query_string_length;
       record_application_tags = v_record_application_tags;
       record_client_address = v_record_client_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_record_client_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "record_client_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_record_application_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "record_application_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_string_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "query_string_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_plans_per_minute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "query_plans_per_minute", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : query_insights_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_query_insights_config

[@@@deriving.end]

type read_pool_config = { node_count : float prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : read_pool_config) -> ()

let yojson_of_read_pool_config =
  (function
   | { node_count = v_node_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "node_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : read_pool_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_read_pool_config

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

type google_alloydb_instance = {
  annotations : (string * string prop) list option; [@option]
  availability_type : string prop option; [@option]
  cluster : string prop;
  database_flags : (string * string prop) list option; [@option]
  display_name : string prop option; [@option]
  gce_zone : string prop option; [@option]
  id : string prop option; [@option]
  instance_id : string prop;
  instance_type : string prop;
  labels : (string * string prop) list option; [@option]
  client_connection_config : client_connection_config list;
  machine_config : machine_config list;
  query_insights_config : query_insights_config list;
  read_pool_config : read_pool_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_alloydb_instance) -> ()

let yojson_of_google_alloydb_instance =
  (function
   | {
       annotations = v_annotations;
       availability_type = v_availability_type;
       cluster = v_cluster;
       database_flags = v_database_flags;
       display_name = v_display_name;
       gce_zone = v_gce_zone;
       id = v_id;
       instance_id = v_instance_id;
       instance_type = v_instance_type;
       labels = v_labels;
       client_connection_config = v_client_connection_config;
       machine_config = v_machine_config;
       query_insights_config = v_query_insights_config;
       read_pool_config = v_read_pool_config;
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
           yojson_of_list yojson_of_read_pool_config
             v_read_pool_config
         in
         ("read_pool_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_query_insights_config
             v_query_insights_config
         in
         ("query_insights_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_machine_config v_machine_config
         in
         ("machine_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_client_connection_config
             v_client_connection_config
         in
         ("client_connection_config", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
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
         match v_gce_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gce_zone", arg in
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
         match v_database_flags with
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
             let bnd = "database_flags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       let bnds =
         match v_availability_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_alloydb_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_alloydb_instance

[@@@deriving.end]

let client_connection_config__ssl_config ?ssl_mode () :
    client_connection_config__ssl_config =
  { ssl_mode }

let client_connection_config ?require_connectors ~ssl_config () :
    client_connection_config =
  { require_connectors; ssl_config }

let machine_config ?cpu_count () : machine_config = { cpu_count }

let query_insights_config ?query_plans_per_minute
    ?query_string_length ?record_application_tags
    ?record_client_address () : query_insights_config =
  {
    query_plans_per_minute;
    query_string_length;
    record_application_tags;
    record_client_address;
  }

let read_pool_config ?node_count () : read_pool_config =
  { node_count }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_alloydb_instance ?annotations ?availability_type
    ?database_flags ?display_name ?gce_zone ?id ?labels ?timeouts
    ~cluster ~instance_id ~instance_type ~client_connection_config
    ~machine_config ~query_insights_config ~read_pool_config () :
    google_alloydb_instance =
  {
    annotations;
    availability_type;
    cluster;
    database_flags;
    display_name;
    gce_zone;
    id;
    instance_id;
    instance_type;
    labels;
    client_connection_config;
    machine_config;
    query_insights_config;
    read_pool_config;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  availability_type : string prop;
  cluster : string prop;
  create_time : string prop;
  database_flags : (string * string) list prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  gce_zone : string prop;
  id : string prop;
  instance_id : string prop;
  instance_type : string prop;
  ip_address : string prop;
  labels : (string * string) list prop;
  name : string prop;
  reconciling : bool prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?annotations ?availability_type ?database_flags
    ?display_name ?gce_zone ?id ?labels ?timeouts ~cluster
    ~instance_id ~instance_type ~client_connection_config
    ~machine_config ~query_insights_config ~read_pool_config __id =
  let __type = "google_alloydb_instance" in
  let __attrs =
    ({
       annotations = Prop.computed __type __id "annotations";
       availability_type =
         Prop.computed __type __id "availability_type";
       cluster = Prop.computed __type __id "cluster";
       create_time = Prop.computed __type __id "create_time";
       database_flags = Prop.computed __type __id "database_flags";
       display_name = Prop.computed __type __id "display_name";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       gce_zone = Prop.computed __type __id "gce_zone";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       instance_type = Prop.computed __type __id "instance_type";
       ip_address = Prop.computed __type __id "ip_address";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       reconciling = Prop.computed __type __id "reconciling";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_alloydb_instance
        (google_alloydb_instance ?annotations ?availability_type
           ?database_flags ?display_name ?gce_zone ?id ?labels
           ?timeouts ~cluster ~instance_id ~instance_type
           ~client_connection_config ~machine_config
           ~query_insights_config ~read_pool_config ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?availability_type
    ?database_flags ?display_name ?gce_zone ?id ?labels ?timeouts
    ~cluster ~instance_id ~instance_type ~client_connection_config
    ~machine_config ~query_insights_config ~read_pool_config __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?availability_type ?database_flags
      ?display_name ?gce_zone ?id ?labels ?timeouts ~cluster
      ~instance_id ~instance_type ~client_connection_config
      ~machine_config ~query_insights_config ~read_pool_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
