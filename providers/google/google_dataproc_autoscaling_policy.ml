(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type basic_algorithm__yarn_config = {
  graceful_decommission_timeout : string prop;
  scale_down_factor : float prop;
  scale_down_min_worker_fraction : float prop option; [@option]
  scale_up_factor : float prop;
  scale_up_min_worker_fraction : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : basic_algorithm__yarn_config) -> ()

let yojson_of_basic_algorithm__yarn_config =
  (function
   | {
       graceful_decommission_timeout =
         v_graceful_decommission_timeout;
       scale_down_factor = v_scale_down_factor;
       scale_down_min_worker_fraction =
         v_scale_down_min_worker_fraction;
       scale_up_factor = v_scale_up_factor;
       scale_up_min_worker_fraction = v_scale_up_min_worker_fraction;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scale_up_min_worker_fraction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scale_up_min_worker_fraction", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_scale_up_factor
         in
         ("scale_up_factor", arg) :: bnds
       in
       let bnds =
         match v_scale_down_min_worker_fraction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scale_down_min_worker_fraction", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_scale_down_factor
         in
         ("scale_down_factor", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_graceful_decommission_timeout
         in
         ("graceful_decommission_timeout", arg) :: bnds
       in
       `Assoc bnds
    : basic_algorithm__yarn_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_basic_algorithm__yarn_config

[@@@deriving.end]

type basic_algorithm = {
  cooldown_period : string prop option; [@option]
  yarn_config : basic_algorithm__yarn_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : basic_algorithm) -> ()

let yojson_of_basic_algorithm =
  (function
   | {
       cooldown_period = v_cooldown_period;
       yarn_config = v_yarn_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_yarn_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_basic_algorithm__yarn_config)
               v_yarn_config
           in
           let bnd = "yarn_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_cooldown_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cooldown_period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : basic_algorithm -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_basic_algorithm

[@@@deriving.end]

type secondary_worker_config = {
  max_instances : float prop option; [@option]
  min_instances : float prop option; [@option]
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secondary_worker_config) -> ()

let yojson_of_secondary_worker_config =
  (function
   | {
       max_instances = v_max_instances;
       min_instances = v_min_instances;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_instances", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : secondary_worker_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secondary_worker_config

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

type worker_config = {
  max_instances : float prop;
  min_instances : float prop option; [@option]
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : worker_config) -> ()

let yojson_of_worker_config =
  (function
   | {
       max_instances = v_max_instances;
       min_instances = v_min_instances;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_instances", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_instances in
         ("max_instances", arg) :: bnds
       in
       `Assoc bnds
    : worker_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_worker_config

[@@@deriving.end]

type google_dataproc_autoscaling_policy = {
  id : string prop option; [@option]
  location : string prop option; [@option]
  policy_id : string prop;
  project : string prop option; [@option]
  basic_algorithm : basic_algorithm list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secondary_worker_config : secondary_worker_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  worker_config : worker_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataproc_autoscaling_policy) -> ()

let yojson_of_google_dataproc_autoscaling_policy =
  (function
   | {
       id = v_id;
       location = v_location;
       policy_id = v_policy_id;
       project = v_project;
       basic_algorithm = v_basic_algorithm;
       secondary_worker_config = v_secondary_worker_config;
       timeouts = v_timeouts;
       worker_config = v_worker_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_worker_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_worker_config) v_worker_config
           in
           let bnd = "worker_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_secondary_worker_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secondary_worker_config)
               v_secondary_worker_config
           in
           let bnd = "secondary_worker_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_basic_algorithm then bnds
         else
           let arg =
             (yojson_of_list yojson_of_basic_algorithm)
               v_basic_algorithm
           in
           let bnd = "basic_algorithm", arg in
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
         let arg = yojson_of_prop yojson_of_string v_policy_id in
         ("policy_id", arg) :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
    : google_dataproc_autoscaling_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataproc_autoscaling_policy

[@@@deriving.end]

let basic_algorithm__yarn_config ?scale_down_min_worker_fraction
    ?scale_up_min_worker_fraction ~graceful_decommission_timeout
    ~scale_down_factor ~scale_up_factor () :
    basic_algorithm__yarn_config =
  {
    graceful_decommission_timeout;
    scale_down_factor;
    scale_down_min_worker_fraction;
    scale_up_factor;
    scale_up_min_worker_fraction;
  }

let basic_algorithm ?cooldown_period ~yarn_config () :
    basic_algorithm =
  { cooldown_period; yarn_config }

let secondary_worker_config ?max_instances ?min_instances ?weight ()
    : secondary_worker_config =
  { max_instances; min_instances; weight }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let worker_config ?min_instances ?weight ~max_instances () :
    worker_config =
  { max_instances; min_instances; weight }

let google_dataproc_autoscaling_policy ?id ?location ?project
    ?(basic_algorithm = []) ?(secondary_worker_config = []) ?timeouts
    ?(worker_config = []) ~policy_id () :
    google_dataproc_autoscaling_policy =
  {
    id;
    location;
    policy_id;
    project;
    basic_algorithm;
    secondary_worker_config;
    timeouts;
    worker_config;
  }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  policy_id : string prop;
  project : string prop;
}

let make ?id ?location ?project ?(basic_algorithm = [])
    ?(secondary_worker_config = []) ?timeouts ?(worker_config = [])
    ~policy_id __id =
  let __type = "google_dataproc_autoscaling_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       policy_id = Prop.computed __type __id "policy_id";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataproc_autoscaling_policy
        (google_dataproc_autoscaling_policy ?id ?location ?project
           ~basic_algorithm ~secondary_worker_config ?timeouts
           ~worker_config ~policy_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project
    ?(basic_algorithm = []) ?(secondary_worker_config = []) ?timeouts
    ?(worker_config = []) ~policy_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~basic_algorithm
      ~secondary_worker_config ?timeouts ~worker_config ~policy_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
