(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_environment__cluster_setting
type azurerm_app_service_environment__timeouts
type azurerm_app_service_environment

val azurerm_app_service_environment :
  ?allowed_user_ip_cidrs:string list ->
  ?front_end_scale_factor:float ->
  ?internal_load_balancing_mode:string ->
  ?pricing_tier:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_app_service_environment__timeouts ->
  name:string ->
  resource_group_name:string ->
  subnet_id:string ->
  cluster_setting:
    azurerm_app_service_environment__cluster_setting list ->
  string ->
  unit
