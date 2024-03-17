(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_azure_sql_table__schema_column
type azurerm_data_factory_dataset_azure_sql_table__timeouts
type azurerm_data_factory_dataset_azure_sql_table

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  linked_service_id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  schema : string prop;
  table : string prop;
}

val azurerm_data_factory_dataset_azure_sql_table :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?schema:string prop ->
  ?table:string prop ->
  ?timeouts:azurerm_data_factory_dataset_azure_sql_table__timeouts ->
  data_factory_id:string prop ->
  linked_service_id:string prop ->
  name:string prop ->
  schema_column:
    azurerm_data_factory_dataset_azure_sql_table__schema_column list ->
  string ->
  t
