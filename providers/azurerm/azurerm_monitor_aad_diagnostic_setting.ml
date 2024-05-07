(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type enabled_log__retention_policy = {
  days : float prop option; [@option]
  enabled : bool prop option; [@option]
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
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
  category : string prop;
  retention_policy : enabled_log__retention_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : enabled_log) -> ()

let yojson_of_enabled_log =
  (function
   | { category = v_category; retention_policy = v_retention_policy }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_enabled_log__retention_policy
             v_retention_policy
         in
         ("retention_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_category in
         ("category", arg) :: bnds
       in
       `Assoc bnds
    : enabled_log -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enabled_log

[@@@deriving.end]

type log__retention_policy = {
  days : float prop option; [@option]
  enabled : bool prop option; [@option]
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
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
  category : string prop;
  enabled : bool prop option; [@option]
  retention_policy : log__retention_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log) -> ()

let yojson_of_log =
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
         let arg =
           yojson_of_list yojson_of_log__retention_policy
             v_retention_policy
         in
         ("retention_policy", arg) :: bnds
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
    : log -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log

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

type azurerm_monitor_aad_diagnostic_setting = {
  eventhub_authorization_rule_id : string prop option; [@option]
  eventhub_name : string prop option; [@option]
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop option; [@option]
  name : string prop;
  storage_account_id : string prop option; [@option]
  enabled_log : enabled_log list;
  log : log list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_aad_diagnostic_setting) -> ()

let yojson_of_azurerm_monitor_aad_diagnostic_setting =
  (function
   | {
       eventhub_authorization_rule_id =
         v_eventhub_authorization_rule_id;
       eventhub_name = v_eventhub_name;
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       name = v_name;
       storage_account_id = v_storage_account_id;
       enabled_log = v_enabled_log;
       log = v_log;
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
         let arg = yojson_of_list yojson_of_log v_log in
         ("log", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_enabled_log v_enabled_log
         in
         ("enabled_log", arg) :: bnds
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
    : azurerm_monitor_aad_diagnostic_setting ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_aad_diagnostic_setting

[@@@deriving.end]

let enabled_log__retention_policy ?days ?enabled () :
    enabled_log__retention_policy =
  { days; enabled }

let enabled_log ~category ~retention_policy () : enabled_log =
  { category; retention_policy }

let log__retention_policy ?days ?enabled () : log__retention_policy =
  { days; enabled }

let log ?enabled ~category ~retention_policy () : log =
  { category; enabled; retention_policy }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_aad_diagnostic_setting
    ?eventhub_authorization_rule_id ?eventhub_name ?id
    ?log_analytics_workspace_id ?storage_account_id ?timeouts ~name
    ~enabled_log ~log () : azurerm_monitor_aad_diagnostic_setting =
  {
    eventhub_authorization_rule_id;
    eventhub_name;
    id;
    log_analytics_workspace_id;
    name;
    storage_account_id;
    enabled_log;
    log;
    timeouts;
  }

type t = {
  tf_name : string;
  eventhub_authorization_rule_id : string prop;
  eventhub_name : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  storage_account_id : string prop;
}

let make ?eventhub_authorization_rule_id ?eventhub_name ?id
    ?log_analytics_workspace_id ?storage_account_id ?timeouts ~name
    ~enabled_log ~log __id =
  let __type = "azurerm_monitor_aad_diagnostic_setting" in
  let __attrs =
    ({
       tf_name = __id;
       eventhub_authorization_rule_id =
         Prop.computed __type __id "eventhub_authorization_rule_id";
       eventhub_name = Prop.computed __type __id "eventhub_name";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_aad_diagnostic_setting
        (azurerm_monitor_aad_diagnostic_setting
           ?eventhub_authorization_rule_id ?eventhub_name ?id
           ?log_analytics_workspace_id ?storage_account_id ?timeouts
           ~name ~enabled_log ~log ());
    attrs = __attrs;
  }

let register ?tf_module ?eventhub_authorization_rule_id
    ?eventhub_name ?id ?log_analytics_workspace_id
    ?storage_account_id ?timeouts ~name ~enabled_log ~log __id =
  let (r : _ Tf_core.resource) =
    make ?eventhub_authorization_rule_id ?eventhub_name ?id
      ?log_analytics_workspace_id ?storage_account_id ?timeouts ~name
      ~enabled_log ~log __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
