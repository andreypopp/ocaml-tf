(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_cluster__timeouts
type azurerm_stream_analytics_cluster

val azurerm_stream_analytics_cluster :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_stream_analytics_cluster__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  streaming_capacity:float ->
  string ->
  unit
