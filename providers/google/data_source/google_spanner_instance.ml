(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscaling_config__autoscaling_targets = {
  high_priority_cpu_utilization_percent : float prop;
  storage_utilization_percent : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float
             v_storage_utilization_percent
         in
         ("storage_utilization_percent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_high_priority_cpu_utilization_percent
         in
         ("high_priority_cpu_utilization_percent", arg) :: bnds
       in
       `Assoc bnds
    : autoscaling_config__autoscaling_targets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling_config__autoscaling_targets

[@@@deriving.end]

type autoscaling_config__autoscaling_limits = {
  max_nodes : float prop;
  max_processing_units : float prop;
  min_nodes : float prop;
  min_processing_units : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_min_processing_units
         in
         ("min_processing_units", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_nodes in
         ("min_nodes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_processing_units
         in
         ("max_processing_units", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_nodes in
         ("max_nodes", arg) :: bnds
       in
       `Assoc bnds
    : autoscaling_config__autoscaling_limits ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling_config__autoscaling_limits

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

type google_spanner_instance = {
  config : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_spanner_instance) -> ()

let yojson_of_google_spanner_instance =
  (function
   | {
       config = v_config;
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "config", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_spanner_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_spanner_instance

[@@@deriving.end]

let google_spanner_instance ?config ?display_name ?id ?project ~name
    () : google_spanner_instance =
  { config; display_name; id; name; project }

type t = {
  autoscaling_config : autoscaling_config list prop;
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

let make ?config ?display_name ?id ?project ~name __id =
  let __type = "google_spanner_instance" in
  let __attrs =
    ({
       autoscaling_config =
         Prop.computed __type __id "autoscaling_config";
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
        (google_spanner_instance ?config ?display_name ?id ?project
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?config ?display_name ?id ?project ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?config ?display_name ?id ?project ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
