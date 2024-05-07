(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscaling_config__autoscaling_limits = {
  max_nodes : float prop option; [@option]
  max_processing_units : float prop option; [@option]
  min_nodes : float prop option; [@option]
  min_processing_units : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscaling_config__autoscaling_limits) -> ()

let yojson_of_autoscaling_config__autoscaling_limits =
  (function
   | {
       max_nodes = v_max_nodes;
       max_processing_units = v_max_processing_units;
       min_nodes = v_min_nodes;
       min_processing_units = v_min_processing_units;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_processing_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_processing_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_processing_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_processing_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_nodes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : autoscaling_config__autoscaling_limits ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling_config__autoscaling_limits

[@@@deriving.end]

type autoscaling_config__autoscaling_targets = {
  high_priority_cpu_utilization_percent : float prop option;
      [@option]
  storage_utilization_percent : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscaling_config__autoscaling_targets) -> ()

let yojson_of_autoscaling_config__autoscaling_targets =
  (function
   | {
       high_priority_cpu_utilization_percent =
         v_high_priority_cpu_utilization_percent;
       storage_utilization_percent = v_storage_utilization_percent;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_utilization_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "storage_utilization_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_high_priority_cpu_utilization_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "high_priority_cpu_utilization_percent", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : autoscaling_config__autoscaling_targets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling_config__autoscaling_targets

[@@@deriving.end]

type autoscaling_config = {
  autoscaling_limits : autoscaling_config__autoscaling_limits list;
  autoscaling_targets : autoscaling_config__autoscaling_targets list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscaling_config) -> ()

let yojson_of_autoscaling_config =
  (function
   | {
       autoscaling_limits = v_autoscaling_limits;
       autoscaling_targets = v_autoscaling_targets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_autoscaling_config__autoscaling_targets
             v_autoscaling_targets
         in
         ("autoscaling_targets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_autoscaling_config__autoscaling_limits
             v_autoscaling_limits
         in
         ("autoscaling_limits", arg) :: bnds
       in
       `Assoc bnds
    : autoscaling_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling_config

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

type google_spanner_instance = {
  config : string prop;
  display_name : string prop;
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
  num_nodes : float prop option; [@option]
  processing_units : float prop option; [@option]
  project : string prop option; [@option]
  autoscaling_config : autoscaling_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_spanner_instance) -> ()

let yojson_of_google_spanner_instance =
  (function
   | {
       config = v_config;
       display_name = v_display_name;
       force_destroy = v_force_destroy;
       id = v_id;
       labels = v_labels;
       name = v_name;
       num_nodes = v_num_nodes;
       processing_units = v_processing_units;
       project = v_project;
       autoscaling_config = v_autoscaling_config;
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
           yojson_of_list yojson_of_autoscaling_config
             v_autoscaling_config
         in
         ("autoscaling_config", arg) :: bnds
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
         match v_processing_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "processing_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_config in
         ("config", arg) :: bnds
       in
       `Assoc bnds
    : google_spanner_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_spanner_instance

[@@@deriving.end]

let autoscaling_config__autoscaling_limits ?max_nodes
    ?max_processing_units ?min_nodes ?min_processing_units () :
    autoscaling_config__autoscaling_limits =
  {
    max_nodes;
    max_processing_units;
    min_nodes;
    min_processing_units;
  }

let autoscaling_config__autoscaling_targets
    ?high_priority_cpu_utilization_percent
    ?storage_utilization_percent () :
    autoscaling_config__autoscaling_targets =
  {
    high_priority_cpu_utilization_percent;
    storage_utilization_percent;
  }

let autoscaling_config ?(autoscaling_limits = [])
    ?(autoscaling_targets = []) () : autoscaling_config =
  { autoscaling_limits; autoscaling_targets }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_spanner_instance ?force_destroy ?id ?labels ?name
    ?num_nodes ?processing_units ?project ?(autoscaling_config = [])
    ?timeouts ~config ~display_name () : google_spanner_instance =
  {
    config;
    display_name;
    force_destroy;
    id;
    labels;
    name;
    num_nodes;
    processing_units;
    project;
    autoscaling_config;
    timeouts;
  }

type t = {
  tf_name : string;
  config : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  force_destroy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  num_nodes : float prop;
  processing_units : float prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?force_destroy ?id ?labels ?name ?num_nodes
    ?processing_units ?project ?(autoscaling_config = []) ?timeouts
    ~config ~display_name __id =
  let __type = "google_spanner_instance" in
  let __attrs =
    ({
       tf_name = __id;
       config = Prop.computed __type __id "config";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       num_nodes = Prop.computed __type __id "num_nodes";
       processing_units =
         Prop.computed __type __id "processing_units";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_spanner_instance
        (google_spanner_instance ?force_destroy ?id ?labels ?name
           ?num_nodes ?processing_units ?project ~autoscaling_config
           ?timeouts ~config ~display_name ());
    attrs = __attrs;
  }

let register ?tf_module ?force_destroy ?id ?labels ?name ?num_nodes
    ?processing_units ?project ?(autoscaling_config = []) ?timeouts
    ~config ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?force_destroy ?id ?labels ?name ?num_nodes
      ?processing_units ?project ~autoscaling_config ?timeouts
      ~config ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
