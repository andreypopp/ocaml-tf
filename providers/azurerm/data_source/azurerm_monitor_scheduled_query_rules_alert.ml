(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type action = {
  action_group : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_webhook_payload : string prop;
  email_subject : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_email_subject in
         ("email_subject", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_webhook_payload
         in
         ("custom_webhook_payload", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action_group then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_action_group
           in
           let bnd = "action_group", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action

[@@@deriving.end]

type trigger__metric_trigger = {
  metric_column : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_metric_column in
         ("metric_column", arg) :: bnds
       in
       `Assoc bnds
    : trigger__metric_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger__metric_trigger

[@@@deriving.end]

type trigger = {
  metric_trigger : trigger__metric_trigger list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  operator : string prop;
  threshold : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger) -> ()

let yojson_of_trigger =
  (function
   | {
       metric_trigger = v_metric_trigger;
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
         if Stdlib.( = ) [] v_metric_trigger then bnds
         else
           let arg =
             (yojson_of_list yojson_of_trigger__metric_trigger)
               v_metric_trigger
           in
           let bnd = "metric_trigger", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger

[@@@deriving.end]

type azurerm_monitor_scheduled_query_rules_alert = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_scheduled_query_rules_alert) -> ()

let yojson_of_azurerm_monitor_scheduled_query_rules_alert =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
       `Assoc bnds
    : azurerm_monitor_scheduled_query_rules_alert ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_scheduled_query_rules_alert

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_monitor_scheduled_query_rules_alert ?id ?timeouts ~name
    ~resource_group_name () :
    azurerm_monitor_scheduled_query_rules_alert =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  action : action list prop;
  authorized_resource_ids : string list prop;
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
  trigger : trigger list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_monitor_scheduled_query_rules_alert" in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       authorized_resource_ids =
         Prop.computed __type __id "authorized_resource_ids";
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
       trigger = Prop.computed __type __id "trigger";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_scheduled_query_rules_alert
        (azurerm_monitor_scheduled_query_rules_alert ?id ?timeouts
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
