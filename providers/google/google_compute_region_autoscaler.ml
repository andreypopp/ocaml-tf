(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscaling_policy__cpu_utilization = {
  predictive_method : string prop option; [@option]
  target : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscaling_policy__cpu_utilization) -> ()

let yojson_of_autoscaling_policy__cpu_utilization =
  (function
   | { predictive_method = v_predictive_method; target = v_target }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         match v_predictive_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "predictive_method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : autoscaling_policy__cpu_utilization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling_policy__cpu_utilization

[@@@deriving.end]

type autoscaling_policy__load_balancing_utilization = {
  target : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : autoscaling_policy__load_balancing_utilization) -> ()

let yojson_of_autoscaling_policy__load_balancing_utilization =
  (function
   | { target = v_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_target in
         ("target", arg) :: bnds
       in
       `Assoc bnds
    : autoscaling_policy__load_balancing_utilization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling_policy__load_balancing_utilization

[@@@deriving.end]

type autoscaling_policy__metric = {
  name : string prop;
  target : float prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscaling_policy__metric) -> ()

let yojson_of_autoscaling_policy__metric =
  (function
   | { name = v_name; target = v_target; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : autoscaling_policy__metric -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling_policy__metric

[@@@deriving.end]

type autoscaling_policy__scale_in_control__max_scaled_in_replicas = {
  fixed : float prop option; [@option]
  percent : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       autoscaling_policy__scale_in_control__max_scaled_in_replicas) ->
  ()

let yojson_of_autoscaling_policy__scale_in_control__max_scaled_in_replicas
    =
  (function
   | { fixed = v_fixed; percent = v_percent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fixed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fixed", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : autoscaling_policy__scale_in_control__max_scaled_in_replicas ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_autoscaling_policy__scale_in_control__max_scaled_in_replicas

[@@@deriving.end]

type autoscaling_policy__scale_in_control = {
  time_window_sec : float prop option; [@option]
  max_scaled_in_replicas :
    autoscaling_policy__scale_in_control__max_scaled_in_replicas list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscaling_policy__scale_in_control) -> ()

let yojson_of_autoscaling_policy__scale_in_control =
  (function
   | {
       time_window_sec = v_time_window_sec;
       max_scaled_in_replicas = v_max_scaled_in_replicas;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_max_scaled_in_replicas then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_autoscaling_policy__scale_in_control__max_scaled_in_replicas)
               v_max_scaled_in_replicas
           in
           let bnd = "max_scaled_in_replicas", arg in
           bnd :: bnds
       in
       let bnds =
         match v_time_window_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "time_window_sec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : autoscaling_policy__scale_in_control ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling_policy__scale_in_control

[@@@deriving.end]

type autoscaling_policy__scaling_schedules = {
  description : string prop option; [@option]
  disabled : bool prop option; [@option]
  duration_sec : float prop;
  min_required_replicas : float prop;
  name : string prop;
  schedule : string prop;
  time_zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscaling_policy__scaling_schedules) -> ()

let yojson_of_autoscaling_policy__scaling_schedules =
  (function
   | {
       description = v_description;
       disabled = v_disabled;
       duration_sec = v_duration_sec;
       min_required_replicas = v_min_required_replicas;
       name = v_name;
       schedule = v_schedule;
       time_zone = v_time_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_zone", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schedule in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_min_required_replicas
         in
         ("min_required_replicas", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_duration_sec in
         ("duration_sec", arg) :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
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
    : autoscaling_policy__scaling_schedules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling_policy__scaling_schedules

[@@@deriving.end]

type autoscaling_policy = {
  cooldown_period : float prop option; [@option]
  max_replicas : float prop;
  min_replicas : float prop;
  mode : string prop option; [@option]
  cpu_utilization : autoscaling_policy__cpu_utilization list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  load_balancing_utilization :
    autoscaling_policy__load_balancing_utilization list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metric : autoscaling_policy__metric list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scale_in_control : autoscaling_policy__scale_in_control list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scaling_schedules : autoscaling_policy__scaling_schedules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscaling_policy) -> ()

let yojson_of_autoscaling_policy =
  (function
   | {
       cooldown_period = v_cooldown_period;
       max_replicas = v_max_replicas;
       min_replicas = v_min_replicas;
       mode = v_mode;
       cpu_utilization = v_cpu_utilization;
       load_balancing_utilization = v_load_balancing_utilization;
       metric = v_metric;
       scale_in_control = v_scale_in_control;
       scaling_schedules = v_scaling_schedules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_scaling_schedules then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_autoscaling_policy__scaling_schedules)
               v_scaling_schedules
           in
           let bnd = "scaling_schedules", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scale_in_control then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_autoscaling_policy__scale_in_control)
               v_scale_in_control
           in
           let bnd = "scale_in_control", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metric then bnds
         else
           let arg =
             (yojson_of_list yojson_of_autoscaling_policy__metric)
               v_metric
           in
           let bnd = "metric", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_load_balancing_utilization then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_autoscaling_policy__load_balancing_utilization)
               v_load_balancing_utilization
           in
           let bnd = "load_balancing_utilization", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cpu_utilization then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_autoscaling_policy__cpu_utilization)
               v_cpu_utilization
           in
           let bnd = "cpu_utilization", arg in
           bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_replicas in
         ("min_replicas", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_replicas in
         ("max_replicas", arg) :: bnds
       in
       let bnds =
         match v_cooldown_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cooldown_period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : autoscaling_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling_policy

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

type google_compute_region_autoscaler = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  target : string prop;
  autoscaling_policy : autoscaling_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_region_autoscaler) -> ()

let yojson_of_google_compute_region_autoscaler =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
       target = v_target;
       autoscaling_policy = v_autoscaling_policy;
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
         if Stdlib.( = ) [] v_autoscaling_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_autoscaling_policy)
               v_autoscaling_policy
           in
           let bnd = "autoscaling_policy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_region_autoscaler ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_autoscaler

[@@@deriving.end]

let autoscaling_policy__cpu_utilization ?predictive_method ~target ()
    : autoscaling_policy__cpu_utilization =
  { predictive_method; target }

let autoscaling_policy__load_balancing_utilization ~target () :
    autoscaling_policy__load_balancing_utilization =
  { target }

let autoscaling_policy__metric ?target ?type_ ~name () :
    autoscaling_policy__metric =
  { name; target; type_ }

let autoscaling_policy__scale_in_control__max_scaled_in_replicas
    ?fixed ?percent () :
    autoscaling_policy__scale_in_control__max_scaled_in_replicas =
  { fixed; percent }

let autoscaling_policy__scale_in_control ?time_window_sec
    ?(max_scaled_in_replicas = []) () :
    autoscaling_policy__scale_in_control =
  { time_window_sec; max_scaled_in_replicas }

let autoscaling_policy__scaling_schedules ?description ?disabled
    ?time_zone ~duration_sec ~min_required_replicas ~name ~schedule
    () : autoscaling_policy__scaling_schedules =
  {
    description;
    disabled;
    duration_sec;
    min_required_replicas;
    name;
    schedule;
    time_zone;
  }

let autoscaling_policy ?cooldown_period ?mode ?(cpu_utilization = [])
    ?(load_balancing_utilization = []) ?(metric = [])
    ?(scale_in_control = []) ~max_replicas ~min_replicas
    ~scaling_schedules () : autoscaling_policy =
  {
    cooldown_period;
    max_replicas;
    min_replicas;
    mode;
    cpu_utilization;
    load_balancing_utilization;
    metric;
    scale_in_control;
    scaling_schedules;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_region_autoscaler ?description ?id ?project
    ?region ?timeouts ~name ~target ~autoscaling_policy () :
    google_compute_region_autoscaler =
  {
    description;
    id;
    name;
    project;
    region;
    target;
    autoscaling_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  target : string prop;
}

let make ?description ?id ?project ?region ?timeouts ~name ~target
    ~autoscaling_policy __id =
  let __type = "google_compute_region_autoscaler" in
  let __attrs =
    ({
       tf_name = __id;
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       target = Prop.computed __type __id "target";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_autoscaler
        (google_compute_region_autoscaler ?description ?id ?project
           ?region ?timeouts ~name ~target ~autoscaling_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?region ?timeouts
    ~name ~target ~autoscaling_policy __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?region ?timeouts ~name ~target
      ~autoscaling_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
