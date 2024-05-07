(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type partition_config__capacity = {
  publish_mib_per_sec : float prop;
  subscribe_mib_per_sec : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : partition_config__capacity) -> ()

let yojson_of_partition_config__capacity =
  (function
   | {
       publish_mib_per_sec = v_publish_mib_per_sec;
       subscribe_mib_per_sec = v_subscribe_mib_per_sec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_subscribe_mib_per_sec
         in
         ("subscribe_mib_per_sec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_publish_mib_per_sec
         in
         ("publish_mib_per_sec", arg) :: bnds
       in
       `Assoc bnds
    : partition_config__capacity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_partition_config__capacity

[@@@deriving.end]

type partition_config = {
  count : float prop;
  capacity : partition_config__capacity list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : partition_config) -> ()

let yojson_of_partition_config =
  (function
   | { count = v_count; capacity = v_capacity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_partition_config__capacity
             v_capacity
         in
         ("capacity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : partition_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_partition_config

[@@@deriving.end]

type reservation_config = {
  throughput_reservation : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reservation_config) -> ()

let yojson_of_reservation_config =
  (function
   | { throughput_reservation = v_throughput_reservation } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_throughput_reservation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "throughput_reservation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : reservation_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reservation_config

[@@@deriving.end]

type retention_config = {
  per_partition_bytes : string prop;
  period : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_config) -> ()

let yojson_of_retention_config =
  (function
   | {
       per_partition_bytes = v_per_partition_bytes;
       period = v_period;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "period", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_per_partition_bytes
         in
         ("per_partition_bytes", arg) :: bnds
       in
       `Assoc bnds
    : retention_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_config

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

type google_pubsub_lite_topic = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  zone : string prop option; [@option]
  partition_config : partition_config list;
  reservation_config : reservation_config list;
  retention_config : retention_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_pubsub_lite_topic) -> ()

let yojson_of_google_pubsub_lite_topic =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
       zone = v_zone;
       partition_config = v_partition_config;
       reservation_config = v_reservation_config;
       retention_config = v_retention_config;
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
           yojson_of_list yojson_of_retention_config
             v_retention_config
         in
         ("retention_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_reservation_config
             v_reservation_config
         in
         ("reservation_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_partition_config
             v_partition_config
         in
         ("partition_config", arg) :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
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
    : google_pubsub_lite_topic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_pubsub_lite_topic

[@@@deriving.end]

let partition_config__capacity ~publish_mib_per_sec
    ~subscribe_mib_per_sec () : partition_config__capacity =
  { publish_mib_per_sec; subscribe_mib_per_sec }

let partition_config ?(capacity = []) ~count () : partition_config =
  { count; capacity }

let reservation_config ?throughput_reservation () :
    reservation_config =
  { throughput_reservation }

let retention_config ?period ~per_partition_bytes () :
    retention_config =
  { per_partition_bytes; period }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_pubsub_lite_topic ?id ?project ?region ?zone
    ?(partition_config = []) ?(reservation_config = [])
    ?(retention_config = []) ?timeouts ~name () :
    google_pubsub_lite_topic =
  {
    id;
    name;
    project;
    region;
    zone;
    partition_config;
    reservation_config;
    retention_config;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  zone : string prop;
}

let make ?id ?project ?region ?zone ?(partition_config = [])
    ?(reservation_config = []) ?(retention_config = []) ?timeouts
    ~name __id =
  let __type = "google_pubsub_lite_topic" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_pubsub_lite_topic
        (google_pubsub_lite_topic ?id ?project ?region ?zone
           ~partition_config ~reservation_config ~retention_config
           ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ?zone
    ?(partition_config = []) ?(reservation_config = [])
    ?(retention_config = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ?zone ~partition_config
      ~reservation_config ~retention_config ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
