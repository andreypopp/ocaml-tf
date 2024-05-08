(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type health_events_config = {
  availability_score_threshold : float prop option; [@option]
  performance_score_threshold : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : health_events_config) -> ()

let yojson_of_health_events_config =
  (function
   | {
       availability_score_threshold = v_availability_score_threshold;
       performance_score_threshold = v_performance_score_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_performance_score_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "performance_score_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_score_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "availability_score_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : health_events_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_health_events_config

[@@@deriving.end]

type internet_measurements_log_delivery__s3_config = {
  bucket_name : string prop;
  bucket_prefix : string prop option; [@option]
  log_delivery_status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : internet_measurements_log_delivery__s3_config) -> ()

let yojson_of_internet_measurements_log_delivery__s3_config =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_prefix = v_bucket_prefix;
       log_delivery_status = v_log_delivery_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_delivery_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_delivery_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : internet_measurements_log_delivery__s3_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_internet_measurements_log_delivery__s3_config

[@@@deriving.end]

type internet_measurements_log_delivery = {
  s3_config : internet_measurements_log_delivery__s3_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : internet_measurements_log_delivery) -> ()

let yojson_of_internet_measurements_log_delivery =
  (function
   | { s3_config = v_s3_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_s3_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_internet_measurements_log_delivery__s3_config)
               v_s3_config
           in
           let bnd = "s3_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : internet_measurements_log_delivery ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_internet_measurements_log_delivery

[@@@deriving.end]

type aws_internetmonitor_monitor = {
  id : string prop option; [@option]
  max_city_networks_to_monitor : float prop option; [@option]
  monitor_name : string prop;
  resources : string prop list option; [@option]
  status : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  traffic_percentage_to_monitor : float prop option; [@option]
  health_events_config : health_events_config list;
      [@default []] [@yojson_drop_default ( = )]
  internet_measurements_log_delivery :
    internet_measurements_log_delivery list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_internetmonitor_monitor) -> ()

let yojson_of_aws_internetmonitor_monitor =
  (function
   | {
       id = v_id;
       max_city_networks_to_monitor = v_max_city_networks_to_monitor;
       monitor_name = v_monitor_name;
       resources = v_resources;
       status = v_status;
       tags = v_tags;
       tags_all = v_tags_all;
       traffic_percentage_to_monitor =
         v_traffic_percentage_to_monitor;
       health_events_config = v_health_events_config;
       internet_measurements_log_delivery =
         v_internet_measurements_log_delivery;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_internet_measurements_log_delivery then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_internet_measurements_log_delivery)
               v_internet_measurements_log_delivery
           in
           let bnd = "internet_measurements_log_delivery", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_health_events_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_health_events_config)
               v_health_events_config
           in
           let bnd = "health_events_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_traffic_percentage_to_monitor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "traffic_percentage_to_monitor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
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
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resources", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_monitor_name in
         ("monitor_name", arg) :: bnds
       in
       let bnds =
         match v_max_city_networks_to_monitor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_city_networks_to_monitor", arg in
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
       `Assoc bnds
    : aws_internetmonitor_monitor ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_internetmonitor_monitor

[@@@deriving.end]

let health_events_config ?availability_score_threshold
    ?performance_score_threshold () : health_events_config =
  { availability_score_threshold; performance_score_threshold }

let internet_measurements_log_delivery__s3_config ?bucket_prefix
    ?log_delivery_status ~bucket_name () :
    internet_measurements_log_delivery__s3_config =
  { bucket_name; bucket_prefix; log_delivery_status }

let internet_measurements_log_delivery ?(s3_config = []) () :
    internet_measurements_log_delivery =
  { s3_config }

let aws_internetmonitor_monitor ?id ?max_city_networks_to_monitor
    ?resources ?status ?tags ?tags_all ?traffic_percentage_to_monitor
    ?(health_events_config = [])
    ?(internet_measurements_log_delivery = []) ~monitor_name () :
    aws_internetmonitor_monitor =
  {
    id;
    max_city_networks_to_monitor;
    monitor_name;
    resources;
    status;
    tags;
    tags_all;
    traffic_percentage_to_monitor;
    health_events_config;
    internet_measurements_log_delivery;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  max_city_networks_to_monitor : float prop;
  monitor_name : string prop;
  resources : string list prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  traffic_percentage_to_monitor : float prop;
}

let make ?id ?max_city_networks_to_monitor ?resources ?status ?tags
    ?tags_all ?traffic_percentage_to_monitor
    ?(health_events_config = [])
    ?(internet_measurements_log_delivery = []) ~monitor_name __id =
  let __type = "aws_internetmonitor_monitor" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       max_city_networks_to_monitor =
         Prop.computed __type __id "max_city_networks_to_monitor";
       monitor_name = Prop.computed __type __id "monitor_name";
       resources = Prop.computed __type __id "resources";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       traffic_percentage_to_monitor =
         Prop.computed __type __id "traffic_percentage_to_monitor";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_internetmonitor_monitor
        (aws_internetmonitor_monitor ?id
           ?max_city_networks_to_monitor ?resources ?status ?tags
           ?tags_all ?traffic_percentage_to_monitor
           ~health_events_config ~internet_measurements_log_delivery
           ~monitor_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?max_city_networks_to_monitor ?resources
    ?status ?tags ?tags_all ?traffic_percentage_to_monitor
    ?(health_events_config = [])
    ?(internet_measurements_log_delivery = []) ~monitor_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?max_city_networks_to_monitor ?resources ?status ?tags
      ?tags_all ?traffic_percentage_to_monitor ~health_events_config
      ~internet_measurements_log_delivery ~monitor_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
