(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bigtable__auto_scaling = {
  cpu_utilization_target : float prop option; [@option]
  max_node_count : float prop;
  min_node_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bigtable__auto_scaling) -> ()

let yojson_of_bigtable__auto_scaling =
  (function
   | {
       cpu_utilization_target = v_cpu_utilization_target;
       max_node_count = v_max_node_count;
       min_node_count = v_min_node_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_node_count in
         ("min_node_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_node_count in
         ("max_node_count", arg) :: bnds
       in
       let bnds =
         match v_cpu_utilization_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu_utilization_target", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : bigtable__auto_scaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bigtable__auto_scaling

[@@@deriving.end]

type bigtable = {
  auto_scaling : bigtable__auto_scaling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bigtable) -> ()

let yojson_of_bigtable =
  (function
   | { auto_scaling = v_auto_scaling } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_scaling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_bigtable__auto_scaling)
               v_auto_scaling
           in
           let bnd = "auto_scaling", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : bigtable -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bigtable

[@@@deriving.end]

type dedicated_serving_endpoint__private_service_connect_config = {
  enable_private_service_connect : bool prop;
  project_allowlist : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : dedicated_serving_endpoint__private_service_connect_config) ->
  ()

let yojson_of_dedicated_serving_endpoint__private_service_connect_config
    =
  (function
   | {
       enable_private_service_connect =
         v_enable_private_service_connect;
       project_allowlist = v_project_allowlist;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project_allowlist with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "project_allowlist", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_private_service_connect
         in
         ("enable_private_service_connect", arg) :: bnds
       in
       `Assoc bnds
    : dedicated_serving_endpoint__private_service_connect_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_dedicated_serving_endpoint__private_service_connect_config

[@@@deriving.end]

type dedicated_serving_endpoint = {
  private_service_connect_config :
    dedicated_serving_endpoint__private_service_connect_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dedicated_serving_endpoint) -> ()

let yojson_of_dedicated_serving_endpoint =
  (function
   | {
       private_service_connect_config =
         v_private_service_connect_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_private_service_connect_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_dedicated_serving_endpoint__private_service_connect_config)
               v_private_service_connect_config
           in
           let bnd = "private_service_connect_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : dedicated_serving_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dedicated_serving_endpoint

[@@@deriving.end]

type optimized = unit [@@deriving_inline yojson_of]

let _ = fun (_ : optimized) -> ()

let yojson_of_optimized =
  (yojson_of_unit : optimized -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_optimized

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

type google_vertex_ai_feature_online_store = {
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  bigtable : bigtable list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dedicated_serving_endpoint : dedicated_serving_endpoint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  optimized : optimized list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vertex_ai_feature_online_store) -> ()

let yojson_of_google_vertex_ai_feature_online_store =
  (function
   | {
       force_destroy = v_force_destroy;
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       region = v_region;
       bigtable = v_bigtable;
       dedicated_serving_endpoint = v_dedicated_serving_endpoint;
       optimized = v_optimized;
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
         if Stdlib.( = ) [] v_optimized then bnds
         else
           let arg =
             (yojson_of_list yojson_of_optimized) v_optimized
           in
           let bnd = "optimized", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dedicated_serving_endpoint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dedicated_serving_endpoint)
               v_dedicated_serving_endpoint
           in
           let bnd = "dedicated_serving_endpoint", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bigtable then bnds
         else
           let arg =
             (yojson_of_list yojson_of_bigtable) v_bigtable
           in
           let bnd = "bigtable", arg in
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
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_vertex_ai_feature_online_store ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vertex_ai_feature_online_store

[@@@deriving.end]

let bigtable__auto_scaling ?cpu_utilization_target ~max_node_count
    ~min_node_count () : bigtable__auto_scaling =
  { cpu_utilization_target; max_node_count; min_node_count }

let bigtable ~auto_scaling () : bigtable = { auto_scaling }

let dedicated_serving_endpoint__private_service_connect_config
    ?project_allowlist ~enable_private_service_connect () :
    dedicated_serving_endpoint__private_service_connect_config =
  { enable_private_service_connect; project_allowlist }

let dedicated_serving_endpoint ?(private_service_connect_config = [])
    () : dedicated_serving_endpoint =
  { private_service_connect_config }

let optimized () = ()

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_feature_online_store ?force_destroy ?id ?labels
    ?project ?region ?(bigtable = [])
    ?(dedicated_serving_endpoint = []) ?(optimized = []) ?timeouts
    ~name () : google_vertex_ai_feature_online_store =
  {
    force_destroy;
    id;
    labels;
    name;
    project;
    region;
    bigtable;
    dedicated_serving_endpoint;
    optimized;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  force_destroy : bool prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

let make ?force_destroy ?id ?labels ?project ?region ?(bigtable = [])
    ?(dedicated_serving_endpoint = []) ?(optimized = []) ?timeouts
    ~name __id =
  let __type = "google_vertex_ai_feature_online_store" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vertex_ai_feature_online_store
        (google_vertex_ai_feature_online_store ?force_destroy ?id
           ?labels ?project ?region ~bigtable
           ~dedicated_serving_endpoint ~optimized ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?force_destroy ?id ?labels ?project ?region
    ?(bigtable = []) ?(dedicated_serving_endpoint = [])
    ?(optimized = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?force_destroy ?id ?labels ?project ?region ~bigtable
      ~dedicated_serving_endpoint ~optimized ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
