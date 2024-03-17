(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logz_monitor__plan
type azurerm_logz_monitor__timeouts
type azurerm_logz_monitor__user
type azurerm_logz_monitor

val azurerm_logz_monitor :
  ?company_name:string ->
  ?enabled:bool ->
  ?enterprise_app_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_logz_monitor__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  plan:azurerm_logz_monitor__plan list ->
  user:azurerm_logz_monitor__user list ->
  string ->
  unit
