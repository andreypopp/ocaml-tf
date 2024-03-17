(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_key_vault__timeouts
type azurerm_data_factory_linked_service_key_vault

val azurerm_data_factory_linked_service_key_vault :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?timeouts:azurerm_data_factory_linked_service_key_vault__timeouts ->
  data_factory_id:string ->
  key_vault_id:string ->
  name:string ->
  string ->
  unit
