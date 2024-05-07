(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_kusto_cluster_managed_private_endpoint

val azurerm_kusto_cluster_managed_private_endpoint :
  ?id:string prop ->
  ?private_link_resource_region:string prop ->
  ?request_message:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  group_id:string prop ->
  name:string prop ->
  private_link_resource_id:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_kusto_cluster_managed_private_endpoint

val yojson_of_azurerm_kusto_cluster_managed_private_endpoint :
  azurerm_kusto_cluster_managed_private_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_name : string prop;
  group_id : string prop;
  id : string prop;
  name : string prop;
  private_link_resource_id : string prop;
  private_link_resource_region : string prop;
  request_message : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?private_link_resource_region:string prop ->
  ?request_message:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  group_id:string prop ->
  name:string prop ->
  private_link_resource_id:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?private_link_resource_region:string prop ->
  ?request_message:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  group_id:string prop ->
  name:string prop ->
  private_link_resource_id:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
