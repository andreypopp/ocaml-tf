(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_postgresql__timeouts
type azurerm_data_factory_linked_service_postgresql

val azurerm_data_factory_linked_service_postgresql :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?timeouts:azurerm_data_factory_linked_service_postgresql__timeouts ->
  connection_string:string ->
  data_factory_id:string ->
  name:string ->
  string ->
  unit
