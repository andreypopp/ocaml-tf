(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_key_vault__timeouts
type azurerm_data_factory_linked_service_key_vault

val azurerm_data_factory_linked_service_key_vault :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:azurerm_data_factory_linked_service_key_vault__timeouts ->
  data_factory_id:string prop ->
  key_vault_id:string prop ->
  name:string prop ->
  string ->
  unit
