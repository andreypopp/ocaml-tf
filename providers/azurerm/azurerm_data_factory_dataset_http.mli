(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_http__schema_column
type azurerm_data_factory_dataset_http__timeouts
type azurerm_data_factory_dataset_http

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  relative_url : string prop;
  request_body : string prop;
  request_method : string prop;
}

val azurerm_data_factory_dataset_http :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?relative_url:string prop ->
  ?request_body:string prop ->
  ?request_method:string prop ->
  ?timeouts:azurerm_data_factory_dataset_http__timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  schema_column:azurerm_data_factory_dataset_http__schema_column list ->
  string ->
  t
