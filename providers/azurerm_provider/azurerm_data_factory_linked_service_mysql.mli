(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_mysql__timeouts
type azurerm_data_factory_linked_service_mysql

val azurerm_data_factory_linked_service_mysql :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?id:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?timeouts:azurerm_data_factory_linked_service_mysql__timeouts ->
  connection_string:string ->
  data_factory_id:string ->
  name:string ->
  string ->
  unit
