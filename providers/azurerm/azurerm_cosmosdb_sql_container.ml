(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscale_settings = {
  max_throughput : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscale_settings) -> ()

let yojson_of_autoscale_settings =
  (function
   | { max_throughput = v_max_throughput } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_throughput", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : autoscale_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscale_settings

[@@@deriving.end]

type conflict_resolution_policy = {
  conflict_resolution_path : string prop option; [@option]
  conflict_resolution_procedure : string prop option; [@option]
  mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conflict_resolution_policy) -> ()

let yojson_of_conflict_resolution_policy =
  (function
   | {
       conflict_resolution_path = v_conflict_resolution_path;
       conflict_resolution_procedure =
         v_conflict_resolution_procedure;
       mode = v_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         match v_conflict_resolution_procedure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "conflict_resolution_procedure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_conflict_resolution_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "conflict_resolution_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conflict_resolution_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conflict_resolution_policy

[@@@deriving.end]

type indexing_policy__composite_index__index = {
  order : string prop;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : indexing_policy__composite_index__index) -> ()

let yojson_of_indexing_policy__composite_index__index =
  (function
   | { order = v_order; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_order in
         ("order", arg) :: bnds
       in
       `Assoc bnds
    : indexing_policy__composite_index__index ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_indexing_policy__composite_index__index

[@@@deriving.end]

type indexing_policy__composite_index = {
  index : indexing_policy__composite_index__index list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : indexing_policy__composite_index) -> ()

let yojson_of_indexing_policy__composite_index =
  (function
   | { index = v_index } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_index then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_indexing_policy__composite_index__index)
               v_index
           in
           let bnd = "index", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : indexing_policy__composite_index ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_indexing_policy__composite_index

[@@@deriving.end]

type indexing_policy__excluded_path = { path : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : indexing_policy__excluded_path) -> ()

let yojson_of_indexing_policy__excluded_path =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : indexing_policy__excluded_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_indexing_policy__excluded_path

[@@@deriving.end]

type indexing_policy__included_path = { path : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : indexing_policy__included_path) -> ()

let yojson_of_indexing_policy__included_path =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : indexing_policy__included_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_indexing_policy__included_path

[@@@deriving.end]

type indexing_policy__spatial_index = { path : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : indexing_policy__spatial_index) -> ()

let yojson_of_indexing_policy__spatial_index =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : indexing_policy__spatial_index ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_indexing_policy__spatial_index

[@@@deriving.end]

type indexing_policy = {
  indexing_mode : string prop option; [@option]
  composite_index : indexing_policy__composite_index list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  excluded_path : indexing_policy__excluded_path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  included_path : indexing_policy__included_path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spatial_index : indexing_policy__spatial_index list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : indexing_policy) -> ()

let yojson_of_indexing_policy =
  (function
   | {
       indexing_mode = v_indexing_mode;
       composite_index = v_composite_index;
       excluded_path = v_excluded_path;
       included_path = v_included_path;
       spatial_index = v_spatial_index;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_spatial_index then bnds
         else
           let arg =
             (yojson_of_list yojson_of_indexing_policy__spatial_index)
               v_spatial_index
           in
           let bnd = "spatial_index", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_included_path then bnds
         else
           let arg =
             (yojson_of_list yojson_of_indexing_policy__included_path)
               v_included_path
           in
           let bnd = "included_path", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_excluded_path then bnds
         else
           let arg =
             (yojson_of_list yojson_of_indexing_policy__excluded_path)
               v_excluded_path
           in
           let bnd = "excluded_path", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_composite_index then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_indexing_policy__composite_index)
               v_composite_index
           in
           let bnd = "composite_index", arg in
           bnd :: bnds
       in
       let bnds =
         match v_indexing_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "indexing_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : indexing_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_indexing_policy

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

type unique_key = {
  paths : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : unique_key) -> ()

let yojson_of_unique_key =
  (function
   | { paths = v_paths } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_paths then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_paths
           in
           let bnd = "paths", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : unique_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_unique_key

[@@@deriving.end]

type azurerm_cosmosdb_sql_container = {
  account_name : string prop;
  analytical_storage_ttl : float prop option; [@option]
  database_name : string prop;
  default_ttl : float prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  partition_key_kind : string prop option; [@option]
  partition_key_path : string prop option; [@option]
  partition_key_paths : string prop list option; [@option]
  partition_key_version : float prop option; [@option]
  resource_group_name : string prop;
  throughput : float prop option; [@option]
  autoscale_settings : autoscale_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  conflict_resolution_policy : conflict_resolution_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  indexing_policy : indexing_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  unique_key : unique_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_sql_container) -> ()

let yojson_of_azurerm_cosmosdb_sql_container =
  (function
   | {
       account_name = v_account_name;
       analytical_storage_ttl = v_analytical_storage_ttl;
       database_name = v_database_name;
       default_ttl = v_default_ttl;
       id = v_id;
       name = v_name;
       partition_key_kind = v_partition_key_kind;
       partition_key_path = v_partition_key_path;
       partition_key_paths = v_partition_key_paths;
       partition_key_version = v_partition_key_version;
       resource_group_name = v_resource_group_name;
       throughput = v_throughput;
       autoscale_settings = v_autoscale_settings;
       conflict_resolution_policy = v_conflict_resolution_policy;
       indexing_policy = v_indexing_policy;
       timeouts = v_timeouts;
       unique_key = v_unique_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_unique_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_unique_key) v_unique_key
           in
           let bnd = "unique_key", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_indexing_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_indexing_policy)
               v_indexing_policy
           in
           let bnd = "indexing_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_conflict_resolution_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_conflict_resolution_policy)
               v_conflict_resolution_policy
           in
           let bnd = "conflict_resolution_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_autoscale_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_autoscale_settings)
               v_autoscale_settings
           in
           let bnd = "autoscale_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throughput", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_partition_key_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "partition_key_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partition_key_paths with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "partition_key_paths", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partition_key_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partition_key_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partition_key_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partition_key_kind", arg in
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
         match v_default_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_analytical_storage_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "analytical_storage_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cosmosdb_sql_container ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_sql_container

[@@@deriving.end]

let autoscale_settings ?max_throughput () : autoscale_settings =
  { max_throughput }

let conflict_resolution_policy ?conflict_resolution_path
    ?conflict_resolution_procedure ~mode () :
    conflict_resolution_policy =
  { conflict_resolution_path; conflict_resolution_procedure; mode }

let indexing_policy__composite_index__index ~order ~path () :
    indexing_policy__composite_index__index =
  { order; path }

let indexing_policy__composite_index ~index () :
    indexing_policy__composite_index =
  { index }

let indexing_policy__excluded_path ~path () :
    indexing_policy__excluded_path =
  { path }

let indexing_policy__included_path ~path () :
    indexing_policy__included_path =
  { path }

let indexing_policy__spatial_index ~path () :
    indexing_policy__spatial_index =
  { path }

let indexing_policy ?indexing_mode ?(composite_index = [])
    ?(excluded_path = []) ?(included_path = []) ?(spatial_index = [])
    () : indexing_policy =
  {
    indexing_mode;
    composite_index;
    excluded_path;
    included_path;
    spatial_index;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let unique_key ~paths () : unique_key = { paths }

let azurerm_cosmosdb_sql_container ?analytical_storage_ttl
    ?default_ttl ?id ?partition_key_kind ?partition_key_path
    ?partition_key_paths ?partition_key_version ?throughput
    ?(autoscale_settings = []) ?(conflict_resolution_policy = [])
    ?(indexing_policy = []) ?timeouts ~account_name ~database_name
    ~name ~resource_group_name ~unique_key () :
    azurerm_cosmosdb_sql_container =
  {
    account_name;
    analytical_storage_ttl;
    database_name;
    default_ttl;
    id;
    name;
    partition_key_kind;
    partition_key_path;
    partition_key_paths;
    partition_key_version;
    resource_group_name;
    throughput;
    autoscale_settings;
    conflict_resolution_policy;
    indexing_policy;
    timeouts;
    unique_key;
  }

type t = {
  tf_name : string;
  account_name : string prop;
  analytical_storage_ttl : float prop;
  database_name : string prop;
  default_ttl : float prop;
  id : string prop;
  name : string prop;
  partition_key_kind : string prop;
  partition_key_path : string prop;
  partition_key_paths : string list prop;
  partition_key_version : float prop;
  resource_group_name : string prop;
  throughput : float prop;
}

let make ?analytical_storage_ttl ?default_ttl ?id ?partition_key_kind
    ?partition_key_path ?partition_key_paths ?partition_key_version
    ?throughput ?(autoscale_settings = [])
    ?(conflict_resolution_policy = []) ?(indexing_policy = [])
    ?timeouts ~account_name ~database_name ~name ~resource_group_name
    ~unique_key __id =
  let __type = "azurerm_cosmosdb_sql_container" in
  let __attrs =
    ({
       tf_name = __id;
       account_name = Prop.computed __type __id "account_name";
       analytical_storage_ttl =
         Prop.computed __type __id "analytical_storage_ttl";
       database_name = Prop.computed __type __id "database_name";
       default_ttl = Prop.computed __type __id "default_ttl";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       partition_key_kind =
         Prop.computed __type __id "partition_key_kind";
       partition_key_path =
         Prop.computed __type __id "partition_key_path";
       partition_key_paths =
         Prop.computed __type __id "partition_key_paths";
       partition_key_version =
         Prop.computed __type __id "partition_key_version";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       throughput = Prop.computed __type __id "throughput";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_sql_container
        (azurerm_cosmosdb_sql_container ?analytical_storage_ttl
           ?default_ttl ?id ?partition_key_kind ?partition_key_path
           ?partition_key_paths ?partition_key_version ?throughput
           ~autoscale_settings ~conflict_resolution_policy
           ~indexing_policy ?timeouts ~account_name ~database_name
           ~name ~resource_group_name ~unique_key ());
    attrs = __attrs;
  }

let register ?tf_module ?analytical_storage_ttl ?default_ttl ?id
    ?partition_key_kind ?partition_key_path ?partition_key_paths
    ?partition_key_version ?throughput ?(autoscale_settings = [])
    ?(conflict_resolution_policy = []) ?(indexing_policy = [])
    ?timeouts ~account_name ~database_name ~name ~resource_group_name
    ~unique_key __id =
  let (r : _ Tf_core.resource) =
    make ?analytical_storage_ttl ?default_ttl ?id ?partition_key_kind
      ?partition_key_path ?partition_key_paths ?partition_key_version
      ?throughput ~autoscale_settings ~conflict_resolution_policy
      ~indexing_policy ?timeouts ~account_name ~database_name ~name
      ~resource_group_name ~unique_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
