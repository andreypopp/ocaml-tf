(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_kusto__timeouts
type azurerm_data_factory_linked_service_kusto

val azurerm_data_factory_linked_service_kusto :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?service_principal_id:string prop ->
  ?service_principal_key:string prop ->
  ?tenant:string prop ->
  ?use_managed_identity:bool prop ->
  ?timeouts:azurerm_data_factory_linked_service_kusto__timeouts ->
  data_factory_id:string prop ->
  kusto_database_name:string prop ->
  kusto_endpoint:string prop ->
  name:string prop ->
  string ->
  unit
