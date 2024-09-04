(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type schema_column

val schema_column :
  ?description:string prop ->
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

type azurerm_data_factory_dataset_cosmosdb_sqlapi

val azurerm_data_factory_dataset_cosmosdb_sqlapi :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?collection_name:string prop ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?schema_column:schema_column list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_dataset_cosmosdb_sqlapi

val yojson_of_azurerm_data_factory_dataset_cosmosdb_sqlapi :
  azurerm_data_factory_dataset_cosmosdb_sqlapi -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  collection_name : string prop;
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
  ?collection_name:string prop ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?schema_column:schema_column list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?collection_name:string prop ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?schema_column:schema_column list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
