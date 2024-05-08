(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type notification__email = {
  custom_emails : string prop list option; [@option]
  send_to_subscription_administrator : bool prop option; [@option]
  send_to_subscription_co_administrator : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification__email) -> ()

let yojson_of_notification__email =
  (function
   | {
       custom_emails = v_custom_emails;
       send_to_subscription_administrator =
         v_send_to_subscription_administrator;
       send_to_subscription_co_administrator =
         v_send_to_subscription_co_administrator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_send_to_subscription_co_administrator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "send_to_subscription_co_administrator", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_send_to_subscription_administrator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send_to_subscription_administrator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_emails with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_emails", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : notification__email -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification__email

[@@@deriving.end]

type notification__webhook = {
  properties : (string * string prop) list option; [@option]
  service_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification__webhook) -> ()

let yojson_of_notification__webhook =
  (function
   | { properties = v_properties; service_uri = v_service_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_uri in
         ("service_uri", arg) :: bnds
       in
       let bnds =
         match v_properties with
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
             let bnd = "properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : notification__webhook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification__webhook

[@@@deriving.end]

type notification = {
  email : notification__email list;
      [@default []] [@yojson_drop_default ( = )]
  webhook : notification__webhook list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification) -> ()

let yojson_of_notification =
  (function
   | { email = v_email; webhook = v_webhook } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_webhook then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification__webhook)
               v_webhook
           in
           let bnd = "webhook", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_email then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification__email) v_email
           in
           let bnd = "email", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification

[@@@deriving.end]

type predictive = {
  look_ahead_time : string prop option; [@option]
  scale_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : predictive) -> ()

let yojson_of_predictive =
  (function
   | {
       look_ahead_time = v_look_ahead_time;
       scale_mode = v_scale_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scale_mode in
         ("scale_mode", arg) :: bnds
       in
       let bnds =
         match v_look_ahead_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "look_ahead_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : predictive -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_predictive

[@@@deriving.end]

type profile__capacity = {
  default : float prop;
  maximum : float prop;
  minimum : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : profile__capacity) -> ()

let yojson_of_profile__capacity =
  (function
   | {
       default = v_default;
       maximum = v_maximum;
       minimum = v_minimum;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minimum in
         ("minimum", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_maximum in
         ("maximum", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_default in
         ("default", arg) :: bnds
       in
       `Assoc bnds
    : profile__capacity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_profile__capacity

[@@@deriving.end]

type profile__fixed_date = {
  end_ : string prop; [@key "end"]
  start : string prop;
  timezone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : profile__fixed_date) -> ()

let yojson_of_profile__fixed_date =
  (function
   | { end_ = v_end_; start = v_start; timezone = v_timezone } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timezone", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_ in
         ("end", arg) :: bnds
       in
       `Assoc bnds
    : profile__fixed_date -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_profile__fixed_date

[@@@deriving.end]

type profile__recurrence = {
  days : string prop list; [@default []] [@yojson_drop_default ( = )]
  hours : float prop list; [@default []] [@yojson_drop_default ( = )]
  minutes : float prop list;
      [@default []] [@yojson_drop_default ( = )]
  timezone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : profile__recurrence) -> ()

let yojson_of_profile__recurrence =
  (function
   | {
       days = v_days;
       hours = v_hours;
       minutes = v_minutes;
       timezone = v_timezone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timezone", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_minutes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_minutes
           in
           let bnd = "minutes", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_hours then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_hours
           in
           let bnd = "hours", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_days then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_days
           in
           let bnd = "days", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : profile__recurrence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_profile__recurrence

[@@@deriving.end]

type profile__rule__metric_trigger__dimensions = {
  name : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : profile__rule__metric_trigger__dimensions) -> ()

let yojson_of_profile__rule__metric_trigger__dimensions =
  (function
   | { name = v_name; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : profile__rule__metric_trigger__dimensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_profile__rule__metric_trigger__dimensions

[@@@deriving.end]

type profile__rule__metric_trigger = {
  divide_by_instance_count : bool prop option; [@option]
  metric_name : string prop;
  metric_namespace : string prop option; [@option]
  metric_resource_id : string prop;
  operator : string prop;
  statistic : string prop;
  threshold : float prop;
  time_aggregation : string prop;
  time_grain : string prop;
  time_window : string prop;
  dimensions : profile__rule__metric_trigger__dimensions list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : profile__rule__metric_trigger) -> ()

let yojson_of_profile__rule__metric_trigger =
  (function
   | {
       divide_by_instance_count = v_divide_by_instance_count;
       metric_name = v_metric_name;
       metric_namespace = v_metric_namespace;
       metric_resource_id = v_metric_resource_id;
       operator = v_operator;
       statistic = v_statistic;
       threshold = v_threshold;
       time_aggregation = v_time_aggregation;
       time_grain = v_time_grain;
       time_window = v_time_window;
       dimensions = v_dimensions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_dimensions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_profile__rule__metric_trigger__dimensions)
               v_dimensions
           in
           let bnd = "dimensions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_window in
         ("time_window", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_grain in
         ("time_grain", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_time_aggregation
         in
         ("time_aggregation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_threshold in
         ("threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_statistic in
         ("statistic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_metric_resource_id
         in
         ("metric_resource_id", arg) :: bnds
       in
       let bnds =
         match v_metric_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_namespace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       let bnds =
         match v_divide_by_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "divide_by_instance_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : profile__rule__metric_trigger ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_profile__rule__metric_trigger

[@@@deriving.end]

type profile__rule__scale_action = {
  cooldown : string prop;
  direction : string prop;
  type_ : string prop; [@key "type"]
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : profile__rule__scale_action) -> ()

let yojson_of_profile__rule__scale_action =
  (function
   | {
       cooldown = v_cooldown;
       direction = v_direction;
       type_ = v_type_;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cooldown in
         ("cooldown", arg) :: bnds
       in
       `Assoc bnds
    : profile__rule__scale_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_profile__rule__scale_action

[@@@deriving.end]

type profile__rule = {
  metric_trigger : profile__rule__metric_trigger list;
      [@default []] [@yojson_drop_default ( = )]
  scale_action : profile__rule__scale_action list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : profile__rule) -> ()

let yojson_of_profile__rule =
  (function
   | {
       metric_trigger = v_metric_trigger;
       scale_action = v_scale_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_scale_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_profile__rule__scale_action)
               v_scale_action
           in
           let bnd = "scale_action", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_metric_trigger then bnds
         else
           let arg =
             (yojson_of_list yojson_of_profile__rule__metric_trigger)
               v_metric_trigger
           in
           let bnd = "metric_trigger", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : profile__rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_profile__rule

[@@@deriving.end]

type profile = {
  name : string prop;
  capacity : profile__capacity list;
      [@default []] [@yojson_drop_default ( = )]
  fixed_date : profile__fixed_date list;
      [@default []] [@yojson_drop_default ( = )]
  recurrence : profile__recurrence list;
      [@default []] [@yojson_drop_default ( = )]
  rule : profile__rule list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : profile) -> ()

let yojson_of_profile =
  (function
   | {
       name = v_name;
       capacity = v_capacity;
       fixed_date = v_fixed_date;
       recurrence = v_recurrence;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_profile__rule) v_rule
           in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_recurrence then bnds
         else
           let arg =
             (yojson_of_list yojson_of_profile__recurrence)
               v_recurrence
           in
           let bnd = "recurrence", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_fixed_date then bnds
         else
           let arg =
             (yojson_of_list yojson_of_profile__fixed_date)
               v_fixed_date
           in
           let bnd = "fixed_date", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_capacity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_profile__capacity) v_capacity
           in
           let bnd = "capacity", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_profile

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

type azurerm_monitor_autoscale_setting = {
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  target_resource_id : string prop;
  notification : notification list;
      [@default []] [@yojson_drop_default ( = )]
  predictive : predictive list;
      [@default []] [@yojson_drop_default ( = )]
  profile : profile list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_autoscale_setting) -> ()

let yojson_of_azurerm_monitor_autoscale_setting =
  (function
   | {
       enabled = v_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       target_resource_id = v_target_resource_id;
       notification = v_notification;
       predictive = v_predictive;
       profile = v_profile;
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
         if [] = v_profile then bnds
         else
           let arg = (yojson_of_list yojson_of_profile) v_profile in
           let bnd = "profile", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_predictive then bnds
         else
           let arg =
             (yojson_of_list yojson_of_predictive) v_predictive
           in
           let bnd = "predictive", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_notification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification) v_notification
           in
           let bnd = "notification", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_resource_id
         in
         ("target_resource_id", arg) :: bnds
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
       `Assoc bnds
    : azurerm_monitor_autoscale_setting ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_autoscale_setting

[@@@deriving.end]

let notification__email ?custom_emails
    ?send_to_subscription_administrator
    ?send_to_subscription_co_administrator () : notification__email =
  {
    custom_emails;
    send_to_subscription_administrator;
    send_to_subscription_co_administrator;
  }

let notification__webhook ?properties ~service_uri () :
    notification__webhook =
  { properties; service_uri }

let notification ?(email = []) ?(webhook = []) () : notification =
  { email; webhook }

let predictive ?look_ahead_time ~scale_mode () : predictive =
  { look_ahead_time; scale_mode }

let profile__capacity ~default ~maximum ~minimum () :
    profile__capacity =
  { default; maximum; minimum }

let profile__fixed_date ?timezone ~end_ ~start () :
    profile__fixed_date =
  { end_; start; timezone }

let profile__recurrence ?timezone ~days ~hours ~minutes () :
    profile__recurrence =
  { days; hours; minutes; timezone }

let profile__rule__metric_trigger__dimensions ~name ~operator ~values
    () : profile__rule__metric_trigger__dimensions =
  { name; operator; values }

let profile__rule__metric_trigger ?divide_by_instance_count
    ?metric_namespace ?(dimensions = []) ~metric_name
    ~metric_resource_id ~operator ~statistic ~threshold
    ~time_aggregation ~time_grain ~time_window () :
    profile__rule__metric_trigger =
  {
    divide_by_instance_count;
    metric_name;
    metric_namespace;
    metric_resource_id;
    operator;
    statistic;
    threshold;
    time_aggregation;
    time_grain;
    time_window;
    dimensions;
  }

let profile__rule__scale_action ~cooldown ~direction ~type_ ~value ()
    : profile__rule__scale_action =
  { cooldown; direction; type_; value }

let profile__rule ~metric_trigger ~scale_action () : profile__rule =
  { metric_trigger; scale_action }

let profile ?(fixed_date = []) ?(recurrence = []) ?(rule = []) ~name
    ~capacity () : profile =
  { name; capacity; fixed_date; recurrence; rule }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_autoscale_setting ?enabled ?id ?tags
    ?(notification = []) ?(predictive = []) ?timeouts ~location ~name
    ~resource_group_name ~target_resource_id ~profile () :
    azurerm_monitor_autoscale_setting =
  {
    enabled;
    id;
    location;
    name;
    resource_group_name;
    tags;
    target_resource_id;
    notification;
    predictive;
    profile;
    timeouts;
  }

type t = {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  target_resource_id : string prop;
}

let make ?enabled ?id ?tags ?(notification = []) ?(predictive = [])
    ?timeouts ~location ~name ~resource_group_name
    ~target_resource_id ~profile __id =
  let __type = "azurerm_monitor_autoscale_setting" in
  let __attrs =
    ({
       tf_name = __id;
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_autoscale_setting
        (azurerm_monitor_autoscale_setting ?enabled ?id ?tags
           ~notification ~predictive ?timeouts ~location ~name
           ~resource_group_name ~target_resource_id ~profile ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?tags ?(notification = [])
    ?(predictive = []) ?timeouts ~location ~name ~resource_group_name
    ~target_resource_id ~profile __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?tags ~notification ~predictive ?timeouts
      ~location ~name ~resource_group_name ~target_resource_id
      ~profile __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
