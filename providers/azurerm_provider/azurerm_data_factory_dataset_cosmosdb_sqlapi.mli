(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_cosmosdb_sqlapi__schema_column
type azurerm_data_factory_dataset_cosmosdb_sqlapi__timeouts
type azurerm_data_factory_dataset_cosmosdb_sqlapi

val azurerm_data_factory_dataset_cosmosdb_sqlapi :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?collection_name:string ->
  ?description:string ->
  ?folder:string ->
  ?parameters:(string * string) list ->
  ?timeouts:azurerm_data_factory_dataset_cosmosdb_sqlapi__timeouts ->
  data_factory_id:string ->
  linked_service_name:string ->
  name:string ->
  schema_column:
    azurerm_data_factory_dataset_cosmosdb_sqlapi__schema_column list ->
  string ->
  unit
