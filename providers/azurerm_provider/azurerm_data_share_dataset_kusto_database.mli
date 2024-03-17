(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_share_dataset_kusto_database__timeouts
type azurerm_data_share_dataset_kusto_database

val azurerm_data_share_dataset_kusto_database :
  ?id:string prop ->
  ?timeouts:azurerm_data_share_dataset_kusto_database__timeouts ->
  kusto_database_id:string prop ->
  name:string prop ->
  share_id:string prop ->
  string ->
  unit
