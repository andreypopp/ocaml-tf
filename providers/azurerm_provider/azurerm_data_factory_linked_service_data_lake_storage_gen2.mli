(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_data_lake_storage_gen2__timeouts

type azurerm_data_factory_linked_service_data_lake_storage_gen2

val azurerm_data_factory_linked_service_data_lake_storage_gen2 :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?id:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?service_principal_id:string ->
  ?service_principal_key:string ->
  ?storage_account_key:string ->
  ?tenant:string ->
  ?use_managed_identity:bool ->
  ?timeouts:
    azurerm_data_factory_linked_service_data_lake_storage_gen2__timeouts ->
  data_factory_id:string ->
  name:string ->
  url:string ->
  string ->
  unit
