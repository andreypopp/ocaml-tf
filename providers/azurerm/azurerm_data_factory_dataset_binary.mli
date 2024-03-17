(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_binary__azure_blob_storage_location
type azurerm_data_factory_dataset_binary__compression
type azurerm_data_factory_dataset_binary__http_server_location
type azurerm_data_factory_dataset_binary__sftp_server_location
type azurerm_data_factory_dataset_binary__timeouts
type azurerm_data_factory_dataset_binary

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
}

val azurerm_data_factory_dataset_binary :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:azurerm_data_factory_dataset_binary__timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  azure_blob_storage_location:
    azurerm_data_factory_dataset_binary__azure_blob_storage_location
    list ->
  compression:azurerm_data_factory_dataset_binary__compression list ->
  http_server_location:
    azurerm_data_factory_dataset_binary__http_server_location list ->
  sftp_server_location:
    azurerm_data_factory_dataset_binary__sftp_server_location list ->
  string ->
  t
