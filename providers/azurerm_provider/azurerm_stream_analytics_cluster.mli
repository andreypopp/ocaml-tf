(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_cluster__timeouts
type azurerm_stream_analytics_cluster

val azurerm_stream_analytics_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_stream_analytics_cluster__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  streaming_capacity:float prop ->
  string ->
  unit
