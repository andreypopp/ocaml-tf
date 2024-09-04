(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type azure_blob_storage_location

val azure_blob_storage_location :
  ?dynamic_container_enabled:bool prop ->
  ?dynamic_filename_enabled:bool prop ->
  ?dynamic_path_enabled:bool prop ->
  ?filename:string prop ->
  ?path:string prop ->
  container:string prop ->
  unit ->
  azure_blob_storage_location

type compression

val compression :
  ?level:string prop -> type_:string prop -> unit -> compression

type http_server_location

val http_server_location :
  ?dynamic_filename_enabled:bool prop ->
  ?dynamic_path_enabled:bool prop ->
  filename:string prop ->
  path:string prop ->
  relative_url:string prop ->
  unit ->
  http_server_location

type sftp_server_location

val sftp_server_location :
  ?dynamic_filename_enabled:bool prop ->
  ?dynamic_path_enabled:bool prop ->
  filename:string prop ->
  path:string prop ->
  unit ->
  sftp_server_location

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_dataset_binary

val azurerm_data_factory_dataset_binary :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?azure_blob_storage_location:azure_blob_storage_location list ->
  ?compression:compression list ->
  ?http_server_location:http_server_location list ->
  ?sftp_server_location:sftp_server_location list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_dataset_binary

val yojson_of_azurerm_data_factory_dataset_binary :
  azurerm_data_factory_dataset_binary -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?azure_blob_storage_location:azure_blob_storage_location list ->
  ?compression:compression list ->
  ?http_server_location:http_server_location list ->
  ?sftp_server_location:sftp_server_location list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?azure_blob_storage_location:azure_blob_storage_location list ->
  ?compression:compression list ->
  ?http_server_location:http_server_location list ->
  ?sftp_server_location:sftp_server_location list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
