(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type storage_account = {
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  subscription_id : string prop;  (** subscription_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_data_share_dataset_blob_storage

val azurerm_data_share_dataset_blob_storage :
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_share_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_share_dataset_blob_storage

val yojson_of_azurerm_data_share_dataset_blob_storage :
  azurerm_data_share_dataset_blob_storage -> json

(** RESOURCE REGISTRATION *)

type t = private {
  container_name : string prop;
  data_share_id : string prop;
  display_name : string prop;
  file_path : string prop;
  folder_path : string prop;
  id : string prop;
  name : string prop;
  storage_account : storage_account list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_share_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_share_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
