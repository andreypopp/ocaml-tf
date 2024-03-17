(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_cosmosdb__timeouts
type azurerm_data_factory_linked_service_cosmosdb

val azurerm_data_factory_linked_service_cosmosdb :
  ?account_endpoint:string prop ->
  ?account_key:string prop ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?database:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:azurerm_data_factory_linked_service_cosmosdb__timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  unit
