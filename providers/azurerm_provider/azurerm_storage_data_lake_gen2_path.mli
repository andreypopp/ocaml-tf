(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_data_lake_gen2_path__ace
type azurerm_storage_data_lake_gen2_path__timeouts
type azurerm_storage_data_lake_gen2_path

val azurerm_storage_data_lake_gen2_path :
  ?timeouts:azurerm_storage_data_lake_gen2_path__timeouts ->
  filesystem_name:string ->
  path:string ->
  resource:string ->
  storage_account_id:string ->
  ace:azurerm_storage_data_lake_gen2_path__ace list ->
  string ->
  unit
