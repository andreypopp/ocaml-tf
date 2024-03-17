(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_traffic_manager_profile__dns_config
type azurerm_traffic_manager_profile__monitor_config__custom_header
type azurerm_traffic_manager_profile__monitor_config
type azurerm_traffic_manager_profile__timeouts
type azurerm_traffic_manager_profile

val azurerm_traffic_manager_profile :
  ?id:string prop ->
  ?max_return:float prop ->
  ?profile_status:string prop ->
  ?tags:(string * string prop) list ->
  ?traffic_view_enabled:bool prop ->
  ?timeouts:azurerm_traffic_manager_profile__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  traffic_routing_method:string prop ->
  dns_config:azurerm_traffic_manager_profile__dns_config list ->
  monitor_config:azurerm_traffic_manager_profile__monitor_config list ->
  string ->
  unit
