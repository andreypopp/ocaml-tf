(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_managed_private_endpoint__timeouts
type azurerm_stream_analytics_managed_private_endpoint

val azurerm_stream_analytics_managed_private_endpoint :
  ?id:string ->
  ?timeouts:
    azurerm_stream_analytics_managed_private_endpoint__timeouts ->
  name:string ->
  resource_group_name:string ->
  stream_analytics_cluster_name:string ->
  subresource_name:string ->
  target_resource_id:string ->
  string ->
  unit
