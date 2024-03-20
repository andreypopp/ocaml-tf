(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_pause = { delay_in_minutes : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_pause) -> ()

let yojson_of_auto_pause =
  (function
   | { delay_in_minutes = v_delay_in_minutes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_delay_in_minutes
         in
         ("delay_in_minutes", arg) :: bnds
       in
       `Assoc bnds
    : auto_pause -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_pause

[@@@deriving.end]

type auto_scale = {
  max_node_count : float prop;
  min_node_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_scale) -> ()

let yojson_of_auto_scale =
  (function
   | {
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
       `Assoc bnds
    : auto_scale -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_scale

[@@@deriving.end]

type library_requirement = {
  content : string prop;
  filename : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : library_requirement) -> ()

let yojson_of_library_requirement =
  (function
   | { content = v_content; filename = v_filename } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filename in
         ("filename", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : library_requirement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_library_requirement

[@@@deriving.end]

type spark_config = { content : string prop; filename : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spark_config) -> ()

let yojson_of_spark_config =
  (function
   | { content = v_content; filename = v_filename } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filename in
         ("filename", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : spark_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spark_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type azurerm_synapse_spark_pool = {
  cache_size : float prop option; [@option]
  compute_isolation_enabled : bool prop option; [@option]
  dynamic_executor_allocation_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  max_executors : float prop option; [@option]
  min_executors : float prop option; [@option]
  name : string prop;
  node_count : float prop option; [@option]
  node_size : string prop;
  node_size_family : string prop;
  session_level_packages_enabled : bool prop option; [@option]
  spark_events_folder : string prop option; [@option]
  spark_log_folder : string prop option; [@option]
  spark_version : string prop option; [@option]
  synapse_workspace_id : string prop;
  tags : (string * string prop) list option; [@option]
  auto_pause : auto_pause list;
  auto_scale : auto_scale list;
  library_requirement : library_requirement list;
  spark_config : spark_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_synapse_spark_pool) -> ()

let yojson_of_azurerm_synapse_spark_pool =
  (function
   | {
       cache_size = v_cache_size;
       compute_isolation_enabled = v_compute_isolation_enabled;
       dynamic_executor_allocation_enabled =
         v_dynamic_executor_allocation_enabled;
       id = v_id;
       max_executors = v_max_executors;
       min_executors = v_min_executors;
       name = v_name;
       node_count = v_node_count;
       node_size = v_node_size;
       node_size_family = v_node_size_family;
       session_level_packages_enabled =
         v_session_level_packages_enabled;
       spark_events_folder = v_spark_events_folder;
       spark_log_folder = v_spark_log_folder;
       spark_version = v_spark_version;
       synapse_workspace_id = v_synapse_workspace_id;
       tags = v_tags;
       auto_pause = v_auto_pause;
       auto_scale = v_auto_scale;
       library_requirement = v_library_requirement;
       spark_config = v_spark_config;
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
           yojson_of_list yojson_of_spark_config v_spark_config
         in
         ("spark_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_library_requirement
             v_library_requirement
         in
         ("library_requirement", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auto_scale v_auto_scale
         in
         ("auto_scale", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auto_pause v_auto_pause
         in
         ("auto_pause", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_synapse_workspace_id
         in
         ("synapse_workspace_id", arg) :: bnds
       in
       let bnds =
         match v_spark_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spark_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spark_log_folder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spark_log_folder", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spark_events_folder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spark_events_folder", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_level_packages_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "session_level_packages_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_node_size_family
         in
         ("node_size_family", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_size in
         ("node_size", arg) :: bnds
       in
       let bnds =
         match v_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "node_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_executors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_executors", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_executors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_executors", arg in
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
         match v_dynamic_executor_allocation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dynamic_executor_allocation_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compute_isolation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "compute_isolation_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cache_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_synapse_spark_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_synapse_spark_pool

[@@@deriving.end]

let auto_pause ~delay_in_minutes () : auto_pause =
  { delay_in_minutes }

let auto_scale ~max_node_count ~min_node_count () : auto_scale =
  { max_node_count; min_node_count }

let library_requirement ~content ~filename () : library_requirement =
  { content; filename }

let spark_config ~content ~filename () : spark_config =
  { content; filename }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_spark_pool ?cache_size ?compute_isolation_enabled
    ?dynamic_executor_allocation_enabled ?id ?max_executors
    ?min_executors ?node_count ?session_level_packages_enabled
    ?spark_events_folder ?spark_log_folder ?spark_version ?tags
    ?timeouts ~name ~node_size ~node_size_family
    ~synapse_workspace_id ~auto_pause ~auto_scale
    ~library_requirement ~spark_config () :
    azurerm_synapse_spark_pool =
  {
    cache_size;
    compute_isolation_enabled;
    dynamic_executor_allocation_enabled;
    id;
    max_executors;
    min_executors;
    name;
    node_count;
    node_size;
    node_size_family;
    session_level_packages_enabled;
    spark_events_folder;
    spark_log_folder;
    spark_version;
    synapse_workspace_id;
    tags;
    auto_pause;
    auto_scale;
    library_requirement;
    spark_config;
    timeouts;
  }

type t = {
  cache_size : float prop;
  compute_isolation_enabled : bool prop;
  dynamic_executor_allocation_enabled : bool prop;
  id : string prop;
  max_executors : float prop;
  min_executors : float prop;
  name : string prop;
  node_count : float prop;
  node_size : string prop;
  node_size_family : string prop;
  session_level_packages_enabled : bool prop;
  spark_events_folder : string prop;
  spark_log_folder : string prop;
  spark_version : string prop;
  synapse_workspace_id : string prop;
  tags : (string * string) list prop;
}

let make ?cache_size ?compute_isolation_enabled
    ?dynamic_executor_allocation_enabled ?id ?max_executors
    ?min_executors ?node_count ?session_level_packages_enabled
    ?spark_events_folder ?spark_log_folder ?spark_version ?tags
    ?timeouts ~name ~node_size ~node_size_family
    ~synapse_workspace_id ~auto_pause ~auto_scale
    ~library_requirement ~spark_config __id =
  let __type = "azurerm_synapse_spark_pool" in
  let __attrs =
    ({
       cache_size = Prop.computed __type __id "cache_size";
       compute_isolation_enabled =
         Prop.computed __type __id "compute_isolation_enabled";
       dynamic_executor_allocation_enabled =
         Prop.computed __type __id
           "dynamic_executor_allocation_enabled";
       id = Prop.computed __type __id "id";
       max_executors = Prop.computed __type __id "max_executors";
       min_executors = Prop.computed __type __id "min_executors";
       name = Prop.computed __type __id "name";
       node_count = Prop.computed __type __id "node_count";
       node_size = Prop.computed __type __id "node_size";
       node_size_family =
         Prop.computed __type __id "node_size_family";
       session_level_packages_enabled =
         Prop.computed __type __id "session_level_packages_enabled";
       spark_events_folder =
         Prop.computed __type __id "spark_events_folder";
       spark_log_folder =
         Prop.computed __type __id "spark_log_folder";
       spark_version = Prop.computed __type __id "spark_version";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_spark_pool
        (azurerm_synapse_spark_pool ?cache_size
           ?compute_isolation_enabled
           ?dynamic_executor_allocation_enabled ?id ?max_executors
           ?min_executors ?node_count ?session_level_packages_enabled
           ?spark_events_folder ?spark_log_folder ?spark_version
           ?tags ?timeouts ~name ~node_size ~node_size_family
           ~synapse_workspace_id ~auto_pause ~auto_scale
           ~library_requirement ~spark_config ());
    attrs = __attrs;
  }

let register ?tf_module ?cache_size ?compute_isolation_enabled
    ?dynamic_executor_allocation_enabled ?id ?max_executors
    ?min_executors ?node_count ?session_level_packages_enabled
    ?spark_events_folder ?spark_log_folder ?spark_version ?tags
    ?timeouts ~name ~node_size ~node_size_family
    ~synapse_workspace_id ~auto_pause ~auto_scale
    ~library_requirement ~spark_config __id =
  let (r : _ Tf_core.resource) =
    make ?cache_size ?compute_isolation_enabled
      ?dynamic_executor_allocation_enabled ?id ?max_executors
      ?min_executors ?node_count ?session_level_packages_enabled
      ?spark_events_folder ?spark_log_folder ?spark_version ?tags
      ?timeouts ~name ~node_size ~node_size_family
      ~synapse_workspace_id ~auto_pause ~auto_scale
      ~library_requirement ~spark_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
