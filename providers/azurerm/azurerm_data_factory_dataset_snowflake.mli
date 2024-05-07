(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type schema_column

val schema_column :
  ?precision:float prop ->
  ?scale:float prop ->
  ?type_:string prop ->
  name:string prop ->
  unit ->
  schema_column

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_dataset_snowflake

val azurerm_data_factory_dataset_snowflake :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?schema_name:string prop ->
  ?table_name:string prop ->
  ?schema_column:schema_column list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_dataset_snowflake

val yojson_of_azurerm_data_factory_dataset_snowflake :
  azurerm_data_factory_dataset_snowflake -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  schema_name : string prop;
  table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?schema_name:string prop ->
  ?table_name:string prop ->
  ?schema_column:schema_column list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?schema_name:string prop ->
  ?table_name:string prop ->
  ?schema_column:schema_column list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
