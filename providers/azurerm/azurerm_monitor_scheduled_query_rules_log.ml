(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type criteria__dimension = {
  name : string prop;
  operator : string prop option; [@option]
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__dimension) -> ()

let yojson_of_criteria__dimension =
  (function
   | { name = v_name; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : criteria__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__dimension

[@@@deriving.end]

type criteria = {
  metric_name : string prop;
  dimension : criteria__dimension list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria) -> ()

let yojson_of_criteria =
  (function
   | { metric_name = v_metric_name; dimension = v_dimension } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_criteria__dimension v_dimension
         in
         ("dimension", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       `Assoc bnds
    : criteria -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria

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

type azurerm_monitor_scheduled_query_rules_log = {
  authorized_resource_ids : string prop list option; [@option]
  data_source_id : string prop;
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  criteria : criteria list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_scheduled_query_rules_log) -> ()

let yojson_of_azurerm_monitor_scheduled_query_rules_log =
  (function
   | {
       authorized_resource_ids = v_authorized_resource_ids;
       data_source_id = v_data_source_id;
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       criteria = v_criteria;
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
         let arg = yojson_of_list yojson_of_criteria v_criteria in
         ("criteria", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_source_id
         in
         ("data_source_id", arg) :: bnds
       in
       let bnds =
         match v_authorized_resource_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "authorized_resource_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_monitor_scheduled_query_rules_log ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_scheduled_query_rules_log

[@@@deriving.end]

let criteria__dimension ?operator ~name ~values () :
    criteria__dimension =
  { name; operator; values }

let criteria ~metric_name ~dimension () : criteria =
  { metric_name; dimension }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_scheduled_query_rules_log
    ?authorized_resource_ids ?description ?enabled ?id ?tags
    ?timeouts ~data_source_id ~location ~name ~resource_group_name
    ~criteria () : azurerm_monitor_scheduled_query_rules_log =
  {
    authorized_resource_ids;
    data_source_id;
    description;
    enabled;
    id;
    location;
    name;
    resource_group_name;
    tags;
    criteria;
    timeouts;
  }

type t = {
  authorized_resource_ids : string list prop;
  data_source_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?authorized_resource_ids ?description ?enabled ?id ?tags
    ?timeouts ~data_source_id ~location ~name ~resource_group_name
    ~criteria __id =
  let __type = "azurerm_monitor_scheduled_query_rules_log" in
  let __attrs =
    ({
       authorized_resource_ids =
         Prop.computed __type __id "authorized_resource_ids";
       data_source_id = Prop.computed __type __id "data_source_id";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_scheduled_query_rules_log
        (azurerm_monitor_scheduled_query_rules_log
           ?authorized_resource_ids ?description ?enabled ?id ?tags
           ?timeouts ~data_source_id ~location ~name
           ~resource_group_name ~criteria ());
    attrs = __attrs;
  }

let register ?tf_module ?authorized_resource_ids ?description
    ?enabled ?id ?tags ?timeouts ~data_source_id ~location ~name
    ~resource_group_name ~criteria __id =
  let (r : _ Tf_core.resource) =
    make ?authorized_resource_ids ?description ?enabled ?id ?tags
      ?timeouts ~data_source_id ~location ~name ~resource_group_name
      ~criteria __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
