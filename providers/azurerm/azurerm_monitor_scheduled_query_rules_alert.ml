(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = {
  action_group : string prop list;
  custom_webhook_payload : string prop option; [@option]
  email_subject : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action) -> ()

let yojson_of_action =
  (function
   | {
       action_group = v_action_group;
       custom_webhook_payload = v_custom_webhook_payload;
       email_subject = v_email_subject;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_email_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_subject", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_webhook_payload with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_webhook_payload", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_action_group
         in
         ("action_group", arg) :: bnds
       in
       `Assoc bnds
    : action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action

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

type trigger__metric_trigger = {
  metric_column : string prop option; [@option]
  metric_trigger_type : string prop;
  operator : string prop;
  threshold : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger__metric_trigger) -> ()

let yojson_of_trigger__metric_trigger =
  (function
   | {
       metric_column = v_metric_column;
       metric_trigger_type = v_metric_trigger_type;
       operator = v_operator;
       threshold = v_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_threshold in
         ("threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_metric_trigger_type
         in
         ("metric_trigger_type", arg) :: bnds
       in
       let bnds =
         match v_metric_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_column", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trigger__metric_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger__metric_trigger

[@@@deriving.end]

type trigger = {
  operator : string prop;
  threshold : float prop;
  metric_trigger : trigger__metric_trigger list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger) -> ()

let yojson_of_trigger =
  (function
   | {
       operator = v_operator;
       threshold = v_threshold;
       metric_trigger = v_metric_trigger;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_trigger__metric_trigger
             v_metric_trigger
         in
         ("metric_trigger", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_threshold in
         ("threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger

[@@@deriving.end]

type azurerm_monitor_scheduled_query_rules_alert = {
  authorized_resource_ids : string prop list option; [@option]
  auto_mitigation_enabled : bool prop option; [@option]
  data_source_id : string prop;
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  frequency : float prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  query : string prop;
  query_type : string prop option; [@option]
  resource_group_name : string prop;
  severity : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  throttling : float prop option; [@option]
  time_window : float prop;
  action : action list;
  timeouts : timeouts option;
  trigger : trigger list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_scheduled_query_rules_alert) -> ()

let yojson_of_azurerm_monitor_scheduled_query_rules_alert =
  (function
   | {
       authorized_resource_ids = v_authorized_resource_ids;
       auto_mitigation_enabled = v_auto_mitigation_enabled;
       data_source_id = v_data_source_id;
       description = v_description;
       enabled = v_enabled;
       frequency = v_frequency;
       id = v_id;
       location = v_location;
       name = v_name;
       query = v_query;
       query_type = v_query_type;
       resource_group_name = v_resource_group_name;
       severity = v_severity;
       tags = v_tags;
       throttling = v_throttling;
       time_window = v_time_window;
       action = v_action;
       timeouts = v_timeouts;
       trigger = v_trigger;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_trigger v_trigger in
         ("trigger", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_action v_action in
         ("action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_time_window in
         ("time_window", arg) :: bnds
       in
       let bnds =
         match v_throttling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throttling", arg in
             bnd :: bnds
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
         match v_severity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "severity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_query_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_frequency in
         ("frequency", arg) :: bnds
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
         match v_auto_mitigation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_mitigation_enabled", arg in
             bnd :: bnds
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
    : azurerm_monitor_scheduled_query_rules_alert ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_scheduled_query_rules_alert

[@@@deriving.end]

let action ?custom_webhook_payload ?email_subject ~action_group () :
    action =
  { action_group; custom_webhook_payload; email_subject }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let trigger__metric_trigger ?metric_column ~metric_trigger_type
    ~operator ~threshold () : trigger__metric_trigger =
  { metric_column; metric_trigger_type; operator; threshold }

let trigger ?(metric_trigger = []) ~operator ~threshold () : trigger
    =
  { operator; threshold; metric_trigger }

let azurerm_monitor_scheduled_query_rules_alert
    ?authorized_resource_ids ?auto_mitigation_enabled ?description
    ?enabled ?id ?query_type ?severity ?tags ?throttling ?timeouts
    ~data_source_id ~frequency ~location ~name ~query
    ~resource_group_name ~time_window ~action ~trigger () :
    azurerm_monitor_scheduled_query_rules_alert =
  {
    authorized_resource_ids;
    auto_mitigation_enabled;
    data_source_id;
    description;
    enabled;
    frequency;
    id;
    location;
    name;
    query;
    query_type;
    resource_group_name;
    severity;
    tags;
    throttling;
    time_window;
    action;
    timeouts;
    trigger;
  }

type t = {
  tf_name : string;
  authorized_resource_ids : string list prop;
  auto_mitigation_enabled : bool prop;
  data_source_id : string prop;
  description : string prop;
  enabled : bool prop;
  frequency : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  query : string prop;
  query_type : string prop;
  resource_group_name : string prop;
  severity : float prop;
  tags : (string * string) list prop;
  throttling : float prop;
  time_window : float prop;
}

let make ?authorized_resource_ids ?auto_mitigation_enabled
    ?description ?enabled ?id ?query_type ?severity ?tags ?throttling
    ?timeouts ~data_source_id ~frequency ~location ~name ~query
    ~resource_group_name ~time_window ~action ~trigger __id =
  let __type = "azurerm_monitor_scheduled_query_rules_alert" in
  let __attrs =
    ({
       tf_name = __id;
       authorized_resource_ids =
         Prop.computed __type __id "authorized_resource_ids";
       auto_mitigation_enabled =
         Prop.computed __type __id "auto_mitigation_enabled";
       data_source_id = Prop.computed __type __id "data_source_id";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       query = Prop.computed __type __id "query";
       query_type = Prop.computed __type __id "query_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       severity = Prop.computed __type __id "severity";
       tags = Prop.computed __type __id "tags";
       throttling = Prop.computed __type __id "throttling";
       time_window = Prop.computed __type __id "time_window";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_scheduled_query_rules_alert
        (azurerm_monitor_scheduled_query_rules_alert
           ?authorized_resource_ids ?auto_mitigation_enabled
           ?description ?enabled ?id ?query_type ?severity ?tags
           ?throttling ?timeouts ~data_source_id ~frequency ~location
           ~name ~query ~resource_group_name ~time_window ~action
           ~trigger ());
    attrs = __attrs;
  }

let register ?tf_module ?authorized_resource_ids
    ?auto_mitigation_enabled ?description ?enabled ?id ?query_type
    ?severity ?tags ?throttling ?timeouts ~data_source_id ~frequency
    ~location ~name ~query ~resource_group_name ~time_window ~action
    ~trigger __id =
  let (r : _ Tf_core.resource) =
    make ?authorized_resource_ids ?auto_mitigation_enabled
      ?description ?enabled ?id ?query_type ?severity ?tags
      ?throttling ?timeouts ~data_source_id ~frequency ~location
      ~name ~query ~resource_group_name ~time_window ~action ~trigger
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
