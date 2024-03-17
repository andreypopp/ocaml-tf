(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_azure_blob__schema_column
type azurerm_data_factory_dataset_azure_blob__timeouts
type azurerm_data_factory_dataset_azure_blob

val azurerm_data_factory_dataset_azure_blob :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?dynamic_filename_enabled:bool ->
  ?dynamic_path_enabled:bool ->
  ?filename:string ->
  ?folder:string ->
  ?id:string ->
  ?parameters:(string * string) list ->
  ?path:string ->
  ?timeouts:azurerm_data_factory_dataset_azure_blob__timeouts ->
  data_factory_id:string ->
  linked_service_name:string ->
  name:string ->
  schema_column:
    azurerm_data_factory_dataset_azure_blob__schema_column list ->
  string ->
  unit
