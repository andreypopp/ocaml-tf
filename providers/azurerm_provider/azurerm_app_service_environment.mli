(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_environment__cluster_setting
type azurerm_app_service_environment__timeouts
type azurerm_app_service_environment

val azurerm_app_service_environment :
  ?allowed_user_ip_cidrs:string prop list ->
  ?front_end_scale_factor:float prop ->
  ?id:string prop ->
  ?internal_load_balancing_mode:string prop ->
  ?pricing_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_app_service_environment__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  subnet_id:string prop ->
  cluster_setting:
    azurerm_app_service_environment__cluster_setting list ->
  string ->
  unit
