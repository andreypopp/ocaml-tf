(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_cosmosdb_sqlapi__schema_column
type azurerm_data_factory_dataset_cosmosdb_sqlapi__timeouts
type azurerm_data_factory_dataset_cosmosdb_sqlapi

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  collection_name : string prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
}

val azurerm_data_factory_dataset_cosmosdb_sqlapi :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?collection_name:string prop ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:azurerm_data_factory_dataset_cosmosdb_sqlapi__timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  schema_column:
    azurerm_data_factory_dataset_cosmosdb_sqlapi__schema_column list ->
  string ->
  t
