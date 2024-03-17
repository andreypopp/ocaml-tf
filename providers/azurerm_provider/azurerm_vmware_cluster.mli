(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vmware_cluster__timeouts
type azurerm_vmware_cluster

val azurerm_vmware_cluster :
  ?id:string ->
  ?timeouts:azurerm_vmware_cluster__timeouts ->
  cluster_node_count:float ->
  name:string ->
  sku_name:string ->
  vmware_cloud_id:string ->
  string ->
  unit
