(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_share_dataset_kusto_database__timeouts
type azurerm_data_share_dataset_kusto_database

type t = private {
  display_name : string prop;
  id : string prop;
  kusto_cluster_location : string prop;
  kusto_database_id : string prop;
  name : string prop;
  share_id : string prop;
}

val azurerm_data_share_dataset_kusto_database :
  ?id:string prop ->
  ?timeouts:azurerm_data_share_dataset_kusto_database__timeouts ->
  kusto_database_id:string prop ->
  name:string prop ->
  share_id:string prop ->
  string ->
  t
