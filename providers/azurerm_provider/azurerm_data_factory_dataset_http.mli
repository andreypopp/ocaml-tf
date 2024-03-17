(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_http__schema_column
type azurerm_data_factory_dataset_http__timeouts
type azurerm_data_factory_dataset_http

val azurerm_data_factory_dataset_http :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?folder:string ->
  ?id:string ->
  ?parameters:(string * string) list ->
  ?relative_url:string ->
  ?request_body:string ->
  ?request_method:string ->
  ?timeouts:azurerm_data_factory_dataset_http__timeouts ->
  data_factory_id:string ->
  linked_service_name:string ->
  name:string ->
  schema_column:azurerm_data_factory_dataset_http__schema_column list ->
  string ->
  unit
