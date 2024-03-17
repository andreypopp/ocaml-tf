(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_azure_sql_table__schema_column
type azurerm_data_factory_dataset_azure_sql_table__timeouts
type azurerm_data_factory_dataset_azure_sql_table

val azurerm_data_factory_dataset_azure_sql_table :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?folder:string ->
  ?parameters:(string * string) list ->
  ?schema:string ->
  ?table:string ->
  ?timeouts:azurerm_data_factory_dataset_azure_sql_table__timeouts ->
  data_factory_id:string ->
  linked_service_id:string ->
  name:string ->
  schema_column:
    azurerm_data_factory_dataset_azure_sql_table__schema_column list ->
  string ->
  unit
