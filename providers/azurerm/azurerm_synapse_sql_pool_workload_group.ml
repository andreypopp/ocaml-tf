(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_synapse_sql_pool_workload_group = {
  id : string prop option; [@option]
  importance : string prop option; [@option]
  max_resource_percent : float prop;
  max_resource_percent_per_request : float prop option; [@option]
  min_resource_percent : float prop;
  min_resource_percent_per_request : float prop option; [@option]
  name : string prop;
  query_execution_timeout_in_seconds : float prop option; [@option]
  sql_pool_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_synapse_sql_pool_workload_group) -> ()

let yojson_of_azurerm_synapse_sql_pool_workload_group =
  (function
   | {
       id = v_id;
       importance = v_importance;
       max_resource_percent = v_max_resource_percent;
       max_resource_percent_per_request =
         v_max_resource_percent_per_request;
       min_resource_percent = v_min_resource_percent;
       min_resource_percent_per_request =
         v_min_resource_percent_per_request;
       name = v_name;
       query_execution_timeout_in_seconds =
         v_query_execution_timeout_in_seconds;
       sql_pool_id = v_sql_pool_id;
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
         let arg = yojson_of_prop yojson_of_string v_sql_pool_id in
         ("sql_pool_id", arg) :: bnds
       in
       let bnds =
         match v_query_execution_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "query_execution_timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_resource_percent_per_request with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_resource_percent_per_request", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_min_resource_percent
         in
         ("min_resource_percent", arg) :: bnds
       in
       let bnds =
         match v_max_resource_percent_per_request with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_resource_percent_per_request", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_resource_percent
         in
         ("max_resource_percent", arg) :: bnds
       in
       let bnds =
         match v_importance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "importance", arg in
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
    : azurerm_synapse_sql_pool_workload_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_synapse_sql_pool_workload_group

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_sql_pool_workload_group ?id ?importance
    ?max_resource_percent_per_request
    ?min_resource_percent_per_request
    ?query_execution_timeout_in_seconds ?timeouts
    ~max_resource_percent ~min_resource_percent ~name ~sql_pool_id ()
    : azurerm_synapse_sql_pool_workload_group =
  {
    id;
    importance;
    max_resource_percent;
    max_resource_percent_per_request;
    min_resource_percent;
    min_resource_percent_per_request;
    name;
    query_execution_timeout_in_seconds;
    sql_pool_id;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  importance : string prop;
  max_resource_percent : float prop;
  max_resource_percent_per_request : float prop;
  min_resource_percent : float prop;
  min_resource_percent_per_request : float prop;
  name : string prop;
  query_execution_timeout_in_seconds : float prop;
  sql_pool_id : string prop;
}

let make ?id ?importance ?max_resource_percent_per_request
    ?min_resource_percent_per_request
    ?query_execution_timeout_in_seconds ?timeouts
    ~max_resource_percent ~min_resource_percent ~name ~sql_pool_id
    __id =
  let __type = "azurerm_synapse_sql_pool_workload_group" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       importance = Prop.computed __type __id "importance";
       max_resource_percent =
         Prop.computed __type __id "max_resource_percent";
       max_resource_percent_per_request =
         Prop.computed __type __id "max_resource_percent_per_request";
       min_resource_percent =
         Prop.computed __type __id "min_resource_percent";
       min_resource_percent_per_request =
         Prop.computed __type __id "min_resource_percent_per_request";
       name = Prop.computed __type __id "name";
       query_execution_timeout_in_seconds =
         Prop.computed __type __id
           "query_execution_timeout_in_seconds";
       sql_pool_id = Prop.computed __type __id "sql_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_sql_pool_workload_group
        (azurerm_synapse_sql_pool_workload_group ?id ?importance
           ?max_resource_percent_per_request
           ?min_resource_percent_per_request
           ?query_execution_timeout_in_seconds ?timeouts
           ~max_resource_percent ~min_resource_percent ~name
           ~sql_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?importance
    ?max_resource_percent_per_request
    ?min_resource_percent_per_request
    ?query_execution_timeout_in_seconds ?timeouts
    ~max_resource_percent ~min_resource_percent ~name ~sql_pool_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?importance ?max_resource_percent_per_request
      ?min_resource_percent_per_request
      ?query_execution_timeout_in_seconds ?timeouts
      ~max_resource_percent ~min_resource_percent ~name ~sql_pool_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
