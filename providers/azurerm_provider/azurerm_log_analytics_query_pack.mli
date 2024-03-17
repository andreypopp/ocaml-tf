(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_query_pack__timeouts
type azurerm_log_analytics_query_pack

val azurerm_log_analytics_query_pack :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_log_analytics_query_pack__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
