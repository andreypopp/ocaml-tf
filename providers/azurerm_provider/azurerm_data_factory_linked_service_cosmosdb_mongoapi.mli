(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_cosmosdb_mongoapi__timeouts
type azurerm_data_factory_linked_service_cosmosdb_mongoapi

val azurerm_data_factory_linked_service_cosmosdb_mongoapi :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?connection_string:string ->
  ?database:string ->
  ?description:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?server_version_is_32_or_higher:bool ->
  ?timeouts:
    azurerm_data_factory_linked_service_cosmosdb_mongoapi__timeouts ->
  data_factory_id:string ->
  name:string ->
  string ->
  unit
