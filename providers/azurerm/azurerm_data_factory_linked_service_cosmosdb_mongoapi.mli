(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_linked_service_cosmosdb_mongoapi

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
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_linked_service_cosmosdb_mongoapi

val yojson_of_azurerm_data_factory_linked_service_cosmosdb_mongoapi :
  azurerm_data_factory_linked_service_cosmosdb_mongoapi -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?database:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?server_version_is_32_or_higher:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?database:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?server_version_is_32_or_higher:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
