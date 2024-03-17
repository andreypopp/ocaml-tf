(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_cluster__identity
type azurerm_log_analytics_cluster__timeouts
type azurerm_log_analytics_cluster

val azurerm_log_analytics_cluster :
  ?id:string prop ->
  ?size_gb:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_log_analytics_cluster__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_log_analytics_cluster__identity list ->
  string ->
  unit
