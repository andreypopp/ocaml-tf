(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_mysql__schema_column
type azurerm_data_factory_dataset_mysql__timeouts
type azurerm_data_factory_dataset_mysql

val azurerm_data_factory_dataset_mysql :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?folder:string ->
  ?id:string ->
  ?parameters:(string * string) list ->
  ?table_name:string ->
  ?timeouts:azurerm_data_factory_dataset_mysql__timeouts ->
  data_factory_id:string ->
  linked_service_name:string ->
  name:string ->
  schema_column:
    azurerm_data_factory_dataset_mysql__schema_column list ->
  string ->
  unit
