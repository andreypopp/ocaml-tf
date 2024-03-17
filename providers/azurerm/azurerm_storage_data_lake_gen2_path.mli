(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_data_lake_gen2_path__ace
type azurerm_storage_data_lake_gen2_path__timeouts
type azurerm_storage_data_lake_gen2_path

type t = private {
  filesystem_name : string prop;
  group : string prop;
  id : string prop;
  owner : string prop;
  path : string prop;
  resource : string prop;
  storage_account_id : string prop;
}

val azurerm_storage_data_lake_gen2_path :
  ?group:string prop ->
  ?id:string prop ->
  ?owner:string prop ->
  ?timeouts:azurerm_storage_data_lake_gen2_path__timeouts ->
  filesystem_name:string prop ->
  path:string prop ->
  resource:string prop ->
  storage_account_id:string prop ->
  ace:azurerm_storage_data_lake_gen2_path__ace list ->
  string ->
  t
