(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_custom_service__integration_runtime
type azurerm_data_factory_linked_custom_service__timeouts
type azurerm_data_factory_linked_custom_service

val azurerm_data_factory_linked_custom_service :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?parameters:(string * string) list ->
  ?timeouts:azurerm_data_factory_linked_custom_service__timeouts ->
  data_factory_id:string ->
  name:string ->
  type_:string ->
  type_properties_json:string ->
  integration_runtime:
    azurerm_data_factory_linked_custom_service__integration_runtime
    list ->
  string ->
  unit
