(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_kusto__timeouts
type azurerm_data_factory_linked_service_kusto

val azurerm_data_factory_linked_service_kusto :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?service_principal_id:string ->
  ?service_principal_key:string ->
  ?tenant:string ->
  ?use_managed_identity:bool ->
  ?timeouts:azurerm_data_factory_linked_service_kusto__timeouts ->
  data_factory_id:string ->
  kusto_database_name:string ->
  kusto_endpoint:string ->
  name:string ->
  string ->
  unit
