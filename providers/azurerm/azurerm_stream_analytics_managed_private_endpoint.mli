(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_stream_analytics_managed_private_endpoint

val azurerm_stream_analytics_managed_private_endpoint :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  stream_analytics_cluster_name:string prop ->
  subresource_name:string prop ->
  target_resource_id:string prop ->
  unit ->
  azurerm_stream_analytics_managed_private_endpoint

val yojson_of_azurerm_stream_analytics_managed_private_endpoint :
  azurerm_stream_analytics_managed_private_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  stream_analytics_cluster_name : string prop;
  subresource_name : string prop;
  target_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  stream_analytics_cluster_name:string prop ->
  subresource_name:string prop ->
  target_resource_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  stream_analytics_cluster_name:string prop ->
  subresource_name:string prop ->
  target_resource_id:string prop ->
  string ->
  t Tf_core.resource
