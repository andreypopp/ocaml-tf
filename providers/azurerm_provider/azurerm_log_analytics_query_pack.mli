(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_query_pack__timeouts
type azurerm_log_analytics_query_pack

val azurerm_log_analytics_query_pack :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_log_analytics_query_pack__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
