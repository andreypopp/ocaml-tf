(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_share_dataset_kusto_cluster__timeouts
type azurerm_data_share_dataset_kusto_cluster

val azurerm_data_share_dataset_kusto_cluster :
  ?timeouts:azurerm_data_share_dataset_kusto_cluster__timeouts ->
  kusto_cluster_id:string ->
  name:string ->
  share_id:string ->
  string ->
  unit
