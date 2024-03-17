(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_odbc__basic_authentication
type azurerm_data_factory_linked_service_odbc__timeouts
type azurerm_data_factory_linked_service_odbc

val azurerm_data_factory_linked_service_odbc :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?id:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?timeouts:azurerm_data_factory_linked_service_odbc__timeouts ->
  connection_string:string ->
  data_factory_id:string ->
  name:string ->
  basic_authentication:
    azurerm_data_factory_linked_service_odbc__basic_authentication
    list ->
  string ->
  unit
