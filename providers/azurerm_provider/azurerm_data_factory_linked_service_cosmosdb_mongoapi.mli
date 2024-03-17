(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_cosmosdb_mongoapi__timeouts
type azurerm_data_factory_linked_service_cosmosdb_mongoapi

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  connection_string : string prop;
  data_factory_id : string prop;
  database : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  server_version_is_32_or_higher : bool prop;
}

val azurerm_data_factory_linked_service_cosmosdb_mongoapi :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?database:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?server_version_is_32_or_higher:bool prop ->
  ?timeouts:
    azurerm_data_factory_linked_service_cosmosdb_mongoapi__timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t
