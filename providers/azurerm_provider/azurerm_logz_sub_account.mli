(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logz_sub_account__timeouts
type azurerm_logz_sub_account__user
type azurerm_logz_sub_account

val azurerm_logz_sub_account :
  ?enabled:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_logz_sub_account__timeouts ->
  logz_monitor_id:string ->
  name:string ->
  user:azurerm_logz_sub_account__user list ->
  string ->
  unit
