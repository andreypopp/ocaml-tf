(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_cosmosdb__timeouts
type azurerm_data_factory_linked_service_cosmosdb

val azurerm_data_factory_linked_service_cosmosdb :
  ?account_endpoint:string ->
  ?account_key:string ->
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?connection_string:string ->
  ?database:string ->
  ?description:string ->
  ?id:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?timeouts:azurerm_data_factory_linked_service_cosmosdb__timeouts ->
  data_factory_id:string ->
  name:string ->
  string ->
  unit
