(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_snowflake__schema_column
type azurerm_data_factory_dataset_snowflake__timeouts
type azurerm_data_factory_dataset_snowflake

val azurerm_data_factory_dataset_snowflake :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?folder:string ->
  ?parameters:(string * string) list ->
  ?schema_name:string ->
  ?table_name:string ->
  ?timeouts:azurerm_data_factory_dataset_snowflake__timeouts ->
  data_factory_id:string ->
  linked_service_name:string ->
  name:string ->
  schema_column:
    azurerm_data_factory_dataset_snowflake__schema_column list ->
  string ->
  unit
