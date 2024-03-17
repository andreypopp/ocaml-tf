(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_cluster__identity
type azurerm_log_analytics_cluster__timeouts
type azurerm_log_analytics_cluster

val azurerm_log_analytics_cluster :
  ?id:string ->
  ?size_gb:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_log_analytics_cluster__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_log_analytics_cluster__identity list ->
  string ->
  unit
