(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_autoscale_setting__notification__email
type azurerm_monitor_autoscale_setting__notification__webhook
type azurerm_monitor_autoscale_setting__notification
type azurerm_monitor_autoscale_setting__predictive
type azurerm_monitor_autoscale_setting__profile__capacity
type azurerm_monitor_autoscale_setting__profile__fixed_date
type azurerm_monitor_autoscale_setting__profile__recurrence

type azurerm_monitor_autoscale_setting__profile__rule__metric_trigger__dimensions

type azurerm_monitor_autoscale_setting__profile__rule__metric_trigger
type azurerm_monitor_autoscale_setting__profile__rule__scale_action
type azurerm_monitor_autoscale_setting__profile__rule
type azurerm_monitor_autoscale_setting__profile
type azurerm_monitor_autoscale_setting__timeouts
type azurerm_monitor_autoscale_setting

val azurerm_monitor_autoscale_setting :
  ?enabled:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_monitor_autoscale_setting__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  target_resource_id:string ->
  notification:azurerm_monitor_autoscale_setting__notification list ->
  predictive:azurerm_monitor_autoscale_setting__predictive list ->
  profile:azurerm_monitor_autoscale_setting__profile list ->
  string ->
  unit
