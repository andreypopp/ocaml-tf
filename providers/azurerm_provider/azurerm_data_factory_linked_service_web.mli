(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_web__timeouts
type azurerm_data_factory_linked_service_web

val azurerm_data_factory_linked_service_web :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?id:string ->
  ?integration_runtime_name:string ->
  ?parameters:(string * string) list ->
  ?password:string ->
  ?username:string ->
  ?timeouts:azurerm_data_factory_linked_service_web__timeouts ->
  authentication_type:string ->
  data_factory_id:string ->
  name:string ->
  url:string ->
  string ->
  unit
