(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_configuration_key__timeouts
type azurerm_app_configuration_key

val azurerm_app_configuration_key :
  ?content_type:string ->
  ?etag:string ->
  ?id:string ->
  ?label:string ->
  ?locked:bool ->
  ?tags:(string * string) list ->
  ?type_:string ->
  ?value:string ->
  ?vault_key_reference:string ->
  ?timeouts:azurerm_app_configuration_key__timeouts ->
  configuration_store_id:string ->
  key:string ->
  string ->
  unit
