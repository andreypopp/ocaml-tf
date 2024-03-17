(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_traffic_manager_profile__dns_config
type azurerm_traffic_manager_profile__monitor_config__custom_header
type azurerm_traffic_manager_profile__monitor_config
type azurerm_traffic_manager_profile__timeouts
type azurerm_traffic_manager_profile

val azurerm_traffic_manager_profile :
  ?id:string ->
  ?max_return:float ->
  ?profile_status:string ->
  ?tags:(string * string) list ->
  ?traffic_view_enabled:bool ->
  ?timeouts:azurerm_traffic_manager_profile__timeouts ->
  name:string ->
  resource_group_name:string ->
  traffic_routing_method:string ->
  dns_config:azurerm_traffic_manager_profile__dns_config list ->
  monitor_config:azurerm_traffic_manager_profile__monitor_config list ->
  string ->
  unit
