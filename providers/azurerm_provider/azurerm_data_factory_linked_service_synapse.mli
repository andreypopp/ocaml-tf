(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_synapse__key_vault_password
type azurerm_data_factory_linked_service_synapse__timeouts
type azurerm_data_factory_linked_service_synapse

val azurerm_data_factory_linked_service_synapse :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?timeouts:azurerm_data_factory_linked_service_synapse__timeouts ->
  connection_string:string ->
  data_factory_id:string ->
  name:string ->
  key_vault_password:
    azurerm_data_factory_linked_service_synapse__key_vault_password
    list ->
  string ->
  unit
