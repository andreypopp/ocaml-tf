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

type azurerm_synapse_sql_pool_workload_classifier = {
  context : string prop option; [@option]
  end_time : string prop option; [@option]
  id : string prop option; [@option]
  importance : string prop option; [@option]
  label : string prop option; [@option]
  member_name : string prop;
  name : string prop;
  start_time : string prop option; [@option]
  workload_group_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_synapse_sql_pool_workload_classifier) -> ()

let yojson_of_azurerm_synapse_sql_pool_workload_classifier =
  (function
   | {
       context = v_context;
       end_time = v_end_time;
       id = v_id;
       importance = v_importance;
       label = v_label;
       member_name = v_member_name;
       name = v_name;
       start_time = v_start_time;
       workload_group_id = v_workload_group_id;
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
           yojson_of_prop yojson_of_string v_workload_group_id
         in
         ("workload_group_id", arg) :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_member_name in
         ("member_name", arg) :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
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
       let bnds =
         match v_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_context with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "context", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_synapse_sql_pool_workload_classifier ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_synapse_sql_pool_workload_classifier

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_sql_pool_workload_classifier ?context ?end_time
    ?id ?importance ?label ?start_time ?timeouts ~member_name ~name
    ~workload_group_id () :
    azurerm_synapse_sql_pool_workload_classifier =
  {
    context;
    end_time;
    id;
    importance;
    label;
    member_name;
    name;
    start_time;
    workload_group_id;
    timeouts;
  }

type t = {
  tf_name : string;
  context : string prop;
  end_time : string prop;
  id : string prop;
  importance : string prop;
  label : string prop;
  member_name : string prop;
  name : string prop;
  start_time : string prop;
  workload_group_id : string prop;
}

let make ?context ?end_time ?id ?importance ?label ?start_time
    ?timeouts ~member_name ~name ~workload_group_id __id =
  let __type = "azurerm_synapse_sql_pool_workload_classifier" in
  let __attrs =
    ({
       tf_name = __id;
       context = Prop.computed __type __id "context";
       end_time = Prop.computed __type __id "end_time";
       id = Prop.computed __type __id "id";
       importance = Prop.computed __type __id "importance";
       label = Prop.computed __type __id "label";
       member_name = Prop.computed __type __id "member_name";
       name = Prop.computed __type __id "name";
       start_time = Prop.computed __type __id "start_time";
       workload_group_id =
         Prop.computed __type __id "workload_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_sql_pool_workload_classifier
        (azurerm_synapse_sql_pool_workload_classifier ?context
           ?end_time ?id ?importance ?label ?start_time ?timeouts
           ~member_name ~name ~workload_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?context ?end_time ?id ?importance ?label
    ?start_time ?timeouts ~member_name ~name ~workload_group_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?context ?end_time ?id ?importance ?label ?start_time
      ?timeouts ~member_name ~name ~workload_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
