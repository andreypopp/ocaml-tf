(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type notification__email

val notification__email :
  ?custom_emails:string prop list ->
  ?send_to_subscription_administrator:bool prop ->
  ?send_to_subscription_co_administrator:bool prop ->
  unit ->
  notification__email

type notification__webhook

val notification__webhook :
  ?properties:(string * string prop) list ->
  service_uri:string prop ->
  unit ->
  notification__webhook

type notification

val notification :
  ?email:notification__email list ->
  ?webhook:notification__webhook list ->
  unit ->
  notification

type predictive

val predictive :
  ?look_ahead_time:string prop ->
  scale_mode:string prop ->
  unit ->
  predictive

type profile__capacity

val profile__capacity :
  default:float prop ->
  maximum:float prop ->
  minimum:float prop ->
  unit ->
  profile__capacity

type profile__fixed_date

val profile__fixed_date :
  ?timezone:string prop ->
  end_:string prop ->
  start:string prop ->
  unit ->
  profile__fixed_date

type profile__recurrence

val profile__recurrence :
  ?timezone:string prop ->
  days:string prop list ->
  hours:float prop list ->
  minutes:float prop list ->
  unit ->
  profile__recurrence

type profile__rule__metric_trigger__dimensions

val profile__rule__metric_trigger__dimensions :
  name:string prop ->
  operator:string prop ->
  values:string prop list ->
  unit ->
  profile__rule__metric_trigger__dimensions

type profile__rule__metric_trigger

val profile__rule__metric_trigger :
  ?divide_by_instance_count:bool prop ->
  ?metric_namespace:string prop ->
  ?dimensions:profile__rule__metric_trigger__dimensions list ->
  metric_name:string prop ->
  metric_resource_id:string prop ->
  operator:string prop ->
  statistic:string prop ->
  threshold:float prop ->
  time_aggregation:string prop ->
  time_grain:string prop ->
  time_window:string prop ->
  unit ->
  profile__rule__metric_trigger

type profile__rule__scale_action

val profile__rule__scale_action :
  cooldown:string prop ->
  direction:string prop ->
  type_:string prop ->
  value:float prop ->
  unit ->
  profile__rule__scale_action

type profile__rule

val profile__rule :
  metric_trigger:profile__rule__metric_trigger list ->
  scale_action:profile__rule__scale_action list ->
  unit ->
  profile__rule

type profile

val profile :
  ?fixed_date:profile__fixed_date list ->
  ?recurrence:profile__recurrence list ->
  ?rule:profile__rule list ->
  name:string prop ->
  capacity:profile__capacity list ->
  unit ->
  profile

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_monitor_autoscale_setting

val azurerm_monitor_autoscale_setting :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?notification:notification list ->
  ?predictive:predictive list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  target_resource_id:string prop ->
  profile:profile list ->
  unit ->
  azurerm_monitor_autoscale_setting

val yojson_of_azurerm_monitor_autoscale_setting :
  azurerm_monitor_autoscale_setting -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  target_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?notification:notification list ->
  ?predictive:predictive list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  target_resource_id:string prop ->
  profile:profile list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?notification:notification list ->
  ?predictive:predictive list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  target_resource_id:string prop ->
  profile:profile list ->
  string ->
  t Tf_core.resource
