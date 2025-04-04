(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type enabled_log__retention_policy = {
  days : float prop option; [@option]
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : enabled_log__retention_policy) -> ()

let yojson_of_enabled_log__retention_policy =
  (function
   | { days = v_days; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : enabled_log__retention_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enabled_log__retention_policy

[@@@deriving.end]

type enabled_log = {
  category : string prop option; [@option]
  category_group : string prop option; [@option]
  retention_policy : enabled_log__retention_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : enabled_log) -> ()

let yojson_of_enabled_log =
  (function
   | {
       category = v_category;
       category_group = v_category_group;
       retention_policy = v_retention_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_retention_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_enabled_log__retention_policy)
               v_retention_policy
           in
           let bnd = "retention_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_category_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "category_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_category with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "category", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : enabled_log -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enabled_log

[@@@deriving.end]

type log__retention_policy = {
  days : float prop option; [@option]
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log__retention_policy) -> ()

let yojson_of_log__retention_policy =
  (function
   | { days = v_days; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : log__retention_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log__retention_policy

[@@@deriving.end]

type log = {
  category : string prop option; [@option]
  category_group : string prop option; [@option]
  enabled : bool prop option; [@option]
  retention_policy : log__retention_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log) -> ()

let yojson_of_log =
  (function
   | {
       category = v_category;
       category_group = v_category_group;
       enabled = v_enabled;
       retention_policy = v_retention_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_retention_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_log__retention_policy)
               v_retention_policy
           in
           let bnd = "retention_policy", arg in
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
         match v_category_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "category_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_category with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "category", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : log -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log

[@@@deriving.end]

type metric__retention_policy = {
  days : float prop option; [@option]
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metric__retention_policy) -> ()

let yojson_of_metric__retention_policy =
  (function
   | { days = v_days; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metric__retention_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metric__retention_policy

[@@@deriving.end]

type metric = {
  category : string prop;
  enabled : bool prop option; [@option]
  retention_policy : metric__retention_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metric) -> ()

let yojson_of_metric =
  (function
   | {
       category = v_category;
       enabled = v_enabled;
       retention_policy = v_retention_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_retention_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metric__retention_policy)
               v_retention_policy
           in
           let bnd = "retention_policy", arg in
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
         let arg = yojson_of_prop yojson_of_string v_category in
         ("category", arg) :: bnds
       in
       `Assoc bnds
    : metric -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metric

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

type azurerm_monitor_diagnostic_setting = {
  eventhub_authorization_rule_id : string prop option; [@option]
  eventhub_name : string prop option; [@option]
  id : string prop option; [@option]
  log_analytics_destination_type : string prop option; [@option]
  log_analytics_workspace_id : string prop option; [@option]
  name : string prop;
  partner_solution_id : string prop option; [@option]
  storage_account_id : string prop option; [@option]
  target_resource_id : string prop;
  enabled_log : enabled_log list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  log : log list; [@default []] [@yojson_drop_default Stdlib.( = )]
  metric : metric list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_diagnostic_setting) -> ()

let yojson_of_azurerm_monitor_diagnostic_setting =
  (function
   | {
       eventhub_authorization_rule_id =
         v_eventhub_authorization_rule_id;
       eventhub_name = v_eventhub_name;
       id = v_id;
       log_analytics_destination_type =
         v_log_analytics_destination_type;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       name = v_name;
       partner_solution_id = v_partner_solution_id;
       storage_account_id = v_storage_account_id;
       target_resource_id = v_target_resource_id;
       enabled_log = v_enabled_log;
       log = v_log;
       metric = v_metric;
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
         if Stdlib.( = ) [] v_metric then bnds
         else
           let arg = (yojson_of_list yojson_of_metric) v_metric in
           let bnd = "metric", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log then bnds
         else
           let arg = (yojson_of_list yojson_of_log) v_log in
           let bnd = "log", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_enabled_log then bnds
         else
           let arg =
             (yojson_of_list yojson_of_enabled_log) v_enabled_log
           in
           let bnd = "enabled_log", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_resource_id
         in
         ("target_resource_id", arg) :: bnds
       in
       let bnds =
         match v_storage_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partner_solution_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partner_solution_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_log_analytics_workspace_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_analytics_workspace_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_analytics_destination_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_analytics_destination_type", arg in
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
         match v_eventhub_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eventhub_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eventhub_authorization_rule_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eventhub_authorization_rule_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_monitor_diagnostic_setting ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_diagnostic_setting

[@@@deriving.end]

let enabled_log__retention_policy ?days ~enabled () :
    enabled_log__retention_policy =
  { days; enabled }

let enabled_log ?category ?category_group ?(retention_policy = []) ()
    : enabled_log =
  { category; category_group; retention_policy }

let log__retention_policy ?days ~enabled () : log__retention_policy =
  { days; enabled }

let log ?category ?category_group ?enabled ?(retention_policy = [])
    () : log =
  { category; category_group; enabled; retention_policy }

let metric__retention_policy ?days ~enabled () :
    metric__retention_policy =
  { days; enabled }

let metric ?enabled ?(retention_policy = []) ~category () : metric =
  { category; enabled; retention_policy }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_diagnostic_setting
    ?eventhub_authorization_rule_id ?eventhub_name ?id
    ?log_analytics_destination_type ?log_analytics_workspace_id
    ?partner_solution_id ?storage_account_id ?timeouts ~name
    ~target_resource_id ~enabled_log ~log ~metric () :
    azurerm_monitor_diagnostic_setting =
  {
    eventhub_authorization_rule_id;
    eventhub_name;
    id;
    log_analytics_destination_type;
    log_analytics_workspace_id;
    name;
    partner_solution_id;
    storage_account_id;
    target_resource_id;
    enabled_log;
    log;
    metric;
    timeouts;
  }

type t = {
  tf_name : string;
  eventhub_authorization_rule_id : string prop;
  eventhub_name : string prop;
  id : string prop;
  log_analytics_destination_type : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  partner_solution_id : string prop;
  storage_account_id : string prop;
  target_resource_id : string prop;
}

let make ?eventhub_authorization_rule_id ?eventhub_name ?id
    ?log_analytics_destination_type ?log_analytics_workspace_id
    ?partner_solution_id ?storage_account_id ?timeouts ~name
    ~target_resource_id ~enabled_log ~log ~metric __id =
  let __type = "azurerm_monitor_diagnostic_setting" in
  let __attrs =
    ({
       tf_name = __id;
       eventhub_authorization_rule_id =
         Prop.computed __type __id "eventhub_authorization_rule_id";
       eventhub_name = Prop.computed __type __id "eventhub_name";
       id = Prop.computed __type __id "id";
       log_analytics_destination_type =
         Prop.computed __type __id "log_analytics_destination_type";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       partner_solution_id =
         Prop.computed __type __id "partner_solution_id";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_diagnostic_setting
        (azurerm_monitor_diagnostic_setting
           ?eventhub_authorization_rule_id ?eventhub_name ?id
           ?log_analytics_destination_type
           ?log_analytics_workspace_id ?partner_solution_id
           ?storage_account_id ?timeouts ~name ~target_resource_id
           ~enabled_log ~log ~metric ());
    attrs = __attrs;
  }

let register ?tf_module ?eventhub_authorization_rule_id
    ?eventhub_name ?id ?log_analytics_destination_type
    ?log_analytics_workspace_id ?partner_solution_id
    ?storage_account_id ?timeouts ~name ~target_resource_id
    ~enabled_log ~log ~metric __id =
  let (r : _ Tf_core.resource) =
    make ?eventhub_authorization_rule_id ?eventhub_name ?id
      ?log_analytics_destination_type ?log_analytics_workspace_id
      ?partner_solution_id ?storage_account_id ?timeouts ~name
      ~target_resource_id ~enabled_log ~log ~metric __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
