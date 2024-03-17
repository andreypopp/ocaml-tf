(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_managed_private_endpoint__timeouts
type azurerm_stream_analytics_managed_private_endpoint

type t = private {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  stream_analytics_cluster_name : string prop;
  subresource_name : string prop;
  target_resource_id : string prop;
}

val azurerm_stream_analytics_managed_private_endpoint :
  ?id:string prop ->
  ?timeouts:
    azurerm_stream_analytics_managed_private_endpoint__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  stream_analytics_cluster_name:string prop ->
  subresource_name:string prop ->
  target_resource_id:string prop ->
  string ->
  t
