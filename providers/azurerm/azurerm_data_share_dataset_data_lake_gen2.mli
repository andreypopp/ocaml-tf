(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_share_dataset_data_lake_gen2__timeouts
type azurerm_data_share_dataset_data_lake_gen2

type t = private {
  display_name : string prop;
  file_path : string prop;
  file_system_name : string prop;
  folder_path : string prop;
  id : string prop;
  name : string prop;
  share_id : string prop;
  storage_account_id : string prop;
}

val azurerm_data_share_dataset_data_lake_gen2 :
  ?file_path:string prop ->
  ?folder_path:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_data_share_dataset_data_lake_gen2__timeouts ->
  file_system_name:string prop ->
  name:string prop ->
  share_id:string prop ->
  storage_account_id:string prop ->
  string ->
  t
