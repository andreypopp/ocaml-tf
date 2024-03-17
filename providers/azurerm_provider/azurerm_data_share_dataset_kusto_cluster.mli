(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_share_dataset_kusto_cluster__timeouts
type azurerm_data_share_dataset_kusto_cluster

val azurerm_data_share_dataset_kusto_cluster :
  ?id:string prop ->
  ?timeouts:azurerm_data_share_dataset_kusto_cluster__timeouts ->
  kusto_cluster_id:string prop ->
  name:string prop ->
  share_id:string prop ->
  string ->
  unit
