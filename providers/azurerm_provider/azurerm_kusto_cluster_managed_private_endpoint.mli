(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_cluster_managed_private_endpoint__timeouts
type azurerm_kusto_cluster_managed_private_endpoint

val azurerm_kusto_cluster_managed_private_endpoint :
  ?id:string prop ->
  ?private_link_resource_region:string prop ->
  ?request_message:string prop ->
  ?timeouts:azurerm_kusto_cluster_managed_private_endpoint__timeouts ->
  cluster_name:string prop ->
  group_id:string prop ->
  name:string prop ->
  private_link_resource_id:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
