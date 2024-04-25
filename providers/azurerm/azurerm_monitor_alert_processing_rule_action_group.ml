(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition__alert_context = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__alert_context) -> ()

let yojson_of_condition__alert_context =
  (function
   | { operator = v_operator; values = v_values } ->
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__alert_context -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__alert_context

[@@@deriving.end]

type condition__alert_rule_id = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__alert_rule_id) -> ()

let yojson_of_condition__alert_rule_id =
  (function
   | { operator = v_operator; values = v_values } ->
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__alert_rule_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__alert_rule_id

[@@@deriving.end]

type condition__alert_rule_name = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__alert_rule_name) -> ()

let yojson_of_condition__alert_rule_name =
  (function
   | { operator = v_operator; values = v_values } ->
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__alert_rule_name -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__alert_rule_name

[@@@deriving.end]

type condition__description = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__description) -> ()

let yojson_of_condition__description =
  (function
   | { operator = v_operator; values = v_values } ->
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__description -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__description

[@@@deriving.end]

type condition__monitor_condition = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__monitor_condition) -> ()

let yojson_of_condition__monitor_condition =
  (function
   | { operator = v_operator; values = v_values } ->
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__monitor_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__monitor_condition

[@@@deriving.end]

type condition__monitor_service = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__monitor_service) -> ()

let yojson_of_condition__monitor_service =
  (function
   | { operator = v_operator; values = v_values } ->
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__monitor_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__monitor_service

[@@@deriving.end]

type condition__severity = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__severity) -> ()

let yojson_of_condition__severity =
  (function
   | { operator = v_operator; values = v_values } ->
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__severity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__severity

[@@@deriving.end]

type condition__signal_type = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__signal_type) -> ()

let yojson_of_condition__signal_type =
  (function
   | { operator = v_operator; values = v_values } ->
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__signal_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__signal_type

[@@@deriving.end]

type condition__target_resource = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__target_resource) -> ()

let yojson_of_condition__target_resource =
  (function
   | { operator = v_operator; values = v_values } ->
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__target_resource -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__target_resource

[@@@deriving.end]

type condition__target_resource_group = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__target_resource_group) -> ()

let yojson_of_condition__target_resource_group =
  (function
   | { operator = v_operator; values = v_values } ->
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__target_resource_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__target_resource_group

[@@@deriving.end]

type condition__target_resource_type = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__target_resource_type) -> ()

let yojson_of_condition__target_resource_type =
  (function
   | { operator = v_operator; values = v_values } ->
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__target_resource_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__target_resource_type

[@@@deriving.end]

type condition = {
  alert_context : condition__alert_context list;
  alert_rule_id : condition__alert_rule_id list;
  alert_rule_name : condition__alert_rule_name list;
  description : condition__description list;
  monitor_condition : condition__monitor_condition list;
  monitor_service : condition__monitor_service list;
  severity : condition__severity list;
  signal_type : condition__signal_type list;
  target_resource : condition__target_resource list;
  target_resource_group : condition__target_resource_group list;
  target_resource_type : condition__target_resource_type list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition) -> ()

let yojson_of_condition =
  (function
   | {
       alert_context = v_alert_context;
       alert_rule_id = v_alert_rule_id;
       alert_rule_name = v_alert_rule_name;
       description = v_description;
       monitor_condition = v_monitor_condition;
       monitor_service = v_monitor_service;
       severity = v_severity;
       signal_type = v_signal_type;
       target_resource = v_target_resource;
       target_resource_group = v_target_resource_group;
       target_resource_type = v_target_resource_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__target_resource_type
             v_target_resource_type
         in
         ("target_resource_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__target_resource_group
             v_target_resource_group
         in
         ("target_resource_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__target_resource
             v_target_resource
         in
         ("target_resource", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__signal_type
             v_signal_type
         in
         ("signal_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__severity v_severity
         in
         ("severity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__monitor_service
             v_monitor_service
         in
         ("monitor_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__monitor_condition
             v_monitor_condition
         in
         ("monitor_condition", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__description
             v_description
         in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__alert_rule_name
             v_alert_rule_name
         in
         ("alert_rule_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__alert_rule_id
             v_alert_rule_id
         in
         ("alert_rule_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__alert_context
             v_alert_context
         in
         ("alert_context", arg) :: bnds
       in
       `Assoc bnds
    : condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition

[@@@deriving.end]

type schedule__recurrence__daily = {
  end_time : string prop;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule__recurrence__daily) -> ()

let yojson_of_schedule__recurrence__daily =
  (function
   | { end_time = v_end_time; start_time = v_start_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_time in
         ("end_time", arg) :: bnds
       in
       `Assoc bnds
    : schedule__recurrence__daily ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule__recurrence__daily

[@@@deriving.end]

type schedule__recurrence__monthly = {
  days_of_month : float prop list;
  end_time : string prop option; [@option]
  start_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule__recurrence__monthly) -> ()

let yojson_of_schedule__recurrence__monthly =
  (function
   | {
       days_of_month = v_days_of_month;
       end_time = v_end_time;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_float)
             v_days_of_month
         in
         ("days_of_month", arg) :: bnds
       in
       `Assoc bnds
    : schedule__recurrence__monthly ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule__recurrence__monthly

[@@@deriving.end]

type schedule__recurrence__weekly = {
  days_of_week : string prop list;
  end_time : string prop option; [@option]
  start_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule__recurrence__weekly) -> ()

let yojson_of_schedule__recurrence__weekly =
  (function
   | {
       days_of_week = v_days_of_week;
       end_time = v_end_time;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_days_of_week
         in
         ("days_of_week", arg) :: bnds
       in
       `Assoc bnds
    : schedule__recurrence__weekly ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule__recurrence__weekly

[@@@deriving.end]

type schedule__recurrence = {
  daily : schedule__recurrence__daily list;
  monthly : schedule__recurrence__monthly list;
  weekly : schedule__recurrence__weekly list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule__recurrence) -> ()

let yojson_of_schedule__recurrence =
  (function
   | { daily = v_daily; monthly = v_monthly; weekly = v_weekly } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_schedule__recurrence__weekly
             v_weekly
         in
         ("weekly", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_schedule__recurrence__monthly
             v_monthly
         in
         ("monthly", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_schedule__recurrence__daily
             v_daily
         in
         ("daily", arg) :: bnds
       in
       `Assoc bnds
    : schedule__recurrence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule__recurrence

[@@@deriving.end]

type schedule = {
  effective_from : string prop option; [@option]
  effective_until : string prop option; [@option]
  time_zone : string prop option; [@option]
  recurrence : schedule__recurrence list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule) -> ()

let yojson_of_schedule =
  (function
   | {
       effective_from = v_effective_from;
       effective_until = v_effective_until;
       time_zone = v_time_zone;
       recurrence = v_recurrence;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_schedule__recurrence v_recurrence
         in
         ("recurrence", arg) :: bnds
       in
       let bnds =
         match v_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_effective_until with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "effective_until", arg in
             bnd :: bnds
       in
       let bnds =
         match v_effective_from with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "effective_from", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule

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

type azurerm_monitor_alert_processing_rule_action_group = {
  add_action_group_ids : string prop list;
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  scopes : string prop list;
  tags : (string * string prop) list option; [@option]
  condition : condition list;
  schedule : schedule list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_monitor_alert_processing_rule_action_group) -> ()

let yojson_of_azurerm_monitor_alert_processing_rule_action_group =
  (function
   | {
       add_action_group_ids = v_add_action_group_ids;
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       scopes = v_scopes;
       tags = v_tags;
       condition = v_condition;
       schedule = v_schedule;
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
         let arg = yojson_of_list yojson_of_schedule v_schedule in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_condition v_condition in
         ("condition", arg) :: bnds
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
           yojson_of_list (yojson_of_prop yojson_of_string) v_scopes
         in
         ("scopes", arg) :: bnds
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
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_add_action_group_ids
         in
         ("add_action_group_ids", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_monitor_alert_processing_rule_action_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_alert_processing_rule_action_group

[@@@deriving.end]

let condition__alert_context ~operator ~values () :
    condition__alert_context =
  { operator; values }

let condition__alert_rule_id ~operator ~values () :
    condition__alert_rule_id =
  { operator; values }

let condition__alert_rule_name ~operator ~values () :
    condition__alert_rule_name =
  { operator; values }

let condition__description ~operator ~values () :
    condition__description =
  { operator; values }

let condition__monitor_condition ~operator ~values () :
    condition__monitor_condition =
  { operator; values }

let condition__monitor_service ~operator ~values () :
    condition__monitor_service =
  { operator; values }

let condition__severity ~operator ~values () : condition__severity =
  { operator; values }

let condition__signal_type ~operator ~values () :
    condition__signal_type =
  { operator; values }

let condition__target_resource ~operator ~values () :
    condition__target_resource =
  { operator; values }

let condition__target_resource_group ~operator ~values () :
    condition__target_resource_group =
  { operator; values }

let condition__target_resource_type ~operator ~values () :
    condition__target_resource_type =
  { operator; values }

let condition ?(alert_context = []) ?(alert_rule_id = [])
    ?(alert_rule_name = []) ?(description = [])
    ?(monitor_condition = []) ?(monitor_service = [])
    ?(severity = []) ?(signal_type = []) ?(target_resource = [])
    ?(target_resource_group = []) ?(target_resource_type = []) () :
    condition =
  {
    alert_context;
    alert_rule_id;
    alert_rule_name;
    description;
    monitor_condition;
    monitor_service;
    severity;
    signal_type;
    target_resource;
    target_resource_group;
    target_resource_type;
  }

let schedule__recurrence__daily ~end_time ~start_time () :
    schedule__recurrence__daily =
  { end_time; start_time }

let schedule__recurrence__monthly ?end_time ?start_time
    ~days_of_month () : schedule__recurrence__monthly =
  { days_of_month; end_time; start_time }

let schedule__recurrence__weekly ?end_time ?start_time ~days_of_week
    () : schedule__recurrence__weekly =
  { days_of_week; end_time; start_time }

let schedule__recurrence ?(daily = []) ?(monthly = []) ?(weekly = [])
    () : schedule__recurrence =
  { daily; monthly; weekly }

let schedule ?effective_from ?effective_until ?time_zone
    ?(recurrence = []) () : schedule =
  { effective_from; effective_until; time_zone; recurrence }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_alert_processing_rule_action_group ?description
    ?enabled ?id ?tags ?(condition = []) ?(schedule = []) ?timeouts
    ~add_action_group_ids ~name ~resource_group_name ~scopes () :
    azurerm_monitor_alert_processing_rule_action_group =
  {
    add_action_group_ids;
    description;
    enabled;
    id;
    name;
    resource_group_name;
    scopes;
    tags;
    condition;
    schedule;
    timeouts;
  }

type t = {
  add_action_group_ids : string list prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  tags : (string * string) list prop;
}

let make ?description ?enabled ?id ?tags ?(condition = [])
    ?(schedule = []) ?timeouts ~add_action_group_ids ~name
    ~resource_group_name ~scopes __id =
  let __type =
    "azurerm_monitor_alert_processing_rule_action_group"
  in
  let __attrs =
    ({
       add_action_group_ids =
         Prop.computed __type __id "add_action_group_ids";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scopes = Prop.computed __type __id "scopes";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_alert_processing_rule_action_group
        (azurerm_monitor_alert_processing_rule_action_group
           ?description ?enabled ?id ?tags ~condition ~schedule
           ?timeouts ~add_action_group_ids ~name ~resource_group_name
           ~scopes ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?tags
    ?(condition = []) ?(schedule = []) ?timeouts
    ~add_action_group_ids ~name ~resource_group_name ~scopes __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?tags ~condition ~schedule
      ?timeouts ~add_action_group_ids ~name ~resource_group_name
      ~scopes __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
