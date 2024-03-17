(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_cluster_managed_private_endpoint__timeouts
type azurerm_kusto_cluster_managed_private_endpoint

val azurerm_kusto_cluster_managed_private_endpoint :
  ?private_link_resource_region:string ->
  ?request_message:string ->
  ?timeouts:azurerm_kusto_cluster_managed_private_endpoint__timeouts ->
  cluster_name:string ->
  group_id:string ->
  name:string ->
  private_link_resource_id:string ->
  resource_group_name:string ->
  string ->
  unit
