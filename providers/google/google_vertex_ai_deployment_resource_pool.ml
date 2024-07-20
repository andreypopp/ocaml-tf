(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dedicated_resources__autoscaling_metric_specs = {
  metric_name : string prop;
  target : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dedicated_resources__autoscaling_metric_specs) -> ()

let yojson_of_dedicated_resources__autoscaling_metric_specs =
  (function
   | { metric_name = v_metric_name; target = v_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       `Assoc bnds
    : dedicated_resources__autoscaling_metric_specs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dedicated_resources__autoscaling_metric_specs

[@@@deriving.end]

type dedicated_resources__machine_spec = {
  accelerator_count : float prop option; [@option]
  accelerator_type : string prop option; [@option]
  machine_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dedicated_resources__machine_spec) -> ()

let yojson_of_dedicated_resources__machine_spec =
  (function
   | {
       accelerator_count = v_accelerator_count;
       accelerator_type = v_accelerator_type;
       machine_type = v_machine_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accelerator_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "accelerator_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dedicated_resources__machine_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dedicated_resources__machine_spec

[@@@deriving.end]

type dedicated_resources = {
  max_replica_count : float prop option; [@option]
  min_replica_count : float prop;
  autoscaling_metric_specs :
    dedicated_resources__autoscaling_metric_specs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  machine_spec : dedicated_resources__machine_spec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dedicated_resources) -> ()

let yojson_of_dedicated_resources =
  (function
   | {
       max_replica_count = v_max_replica_count;
       min_replica_count = v_min_replica_count;
       autoscaling_metric_specs = v_autoscaling_metric_specs;
       machine_spec = v_machine_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_machine_spec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_dedicated_resources__machine_spec)
               v_machine_spec
           in
           let bnd = "machine_spec", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_autoscaling_metric_specs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_dedicated_resources__autoscaling_metric_specs)
               v_autoscaling_metric_specs
           in
           let bnd = "autoscaling_metric_specs", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_min_replica_count
         in
         ("min_replica_count", arg) :: bnds
       in
       let bnds =
         match v_max_replica_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_replica_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dedicated_resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dedicated_resources

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_vertex_ai_deployment_resource_pool = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  dedicated_resources : dedicated_resources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vertex_ai_deployment_resource_pool) -> ()

let yojson_of_google_vertex_ai_deployment_resource_pool =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
       dedicated_resources = v_dedicated_resources;
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
         if Stdlib.( = ) [] v_dedicated_resources then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dedicated_resources)
               v_dedicated_resources
           in
           let bnd = "dedicated_resources", arg in
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
    : google_vertex_ai_deployment_resource_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vertex_ai_deployment_resource_pool

[@@@deriving.end]

let dedicated_resources__autoscaling_metric_specs ?target
    ~metric_name () : dedicated_resources__autoscaling_metric_specs =
  { metric_name; target }

let dedicated_resources__machine_spec ?accelerator_count
    ?accelerator_type ?machine_type () :
    dedicated_resources__machine_spec =
  { accelerator_count; accelerator_type; machine_type }

let dedicated_resources ?max_replica_count
    ?(autoscaling_metric_specs = []) ~min_replica_count ~machine_spec
    () : dedicated_resources =
  {
    max_replica_count;
    min_replica_count;
    autoscaling_metric_specs;
    machine_spec;
  }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_vertex_ai_deployment_resource_pool ?id ?project ?region
    ?(dedicated_resources = []) ?timeouts ~name () :
    google_vertex_ai_deployment_resource_pool =
  { id; name; project; region; dedicated_resources; timeouts }

type t = {
  tf_name : string;
  create_time : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

let make ?id ?project ?region ?(dedicated_resources = []) ?timeouts
    ~name __id =
  let __type = "google_vertex_ai_deployment_resource_pool" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vertex_ai_deployment_resource_pool
        (google_vertex_ai_deployment_resource_pool ?id ?project
           ?region ~dedicated_resources ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region
    ?(dedicated_resources = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~dedicated_resources ?timeouts ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
