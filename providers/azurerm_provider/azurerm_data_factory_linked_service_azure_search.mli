(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_search__timeouts
type azurerm_data_factory_linked_service_azure_search

val azurerm_data_factory_linked_service_azure_search :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?id:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?timeouts:
    azurerm_data_factory_linked_service_azure_search__timeouts ->
  data_factory_id:string ->
  name:string ->
  search_service_key:string ->
  url:string ->
  string ->
  unit
