(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_odata__basic_authentication
type azurerm_data_factory_linked_service_odata__timeouts
type azurerm_data_factory_linked_service_odata

val azurerm_data_factory_linked_service_odata :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?id:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?timeouts:azurerm_data_factory_linked_service_odata__timeouts ->
  data_factory_id:string ->
  name:string ->
  url:string ->
  basic_authentication:
    azurerm_data_factory_linked_service_odata__basic_authentication
    list ->
  string ->
  unit
