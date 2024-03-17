(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_registry_webhook__timeouts
type azurerm_container_registry_webhook

val azurerm_container_registry_webhook :
  ?custom_headers:(string * string) list ->
  ?id:string ->
  ?scope:string ->
  ?status:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_container_registry_webhook__timeouts ->
  actions:string list ->
  location:string ->
  name:string ->
  registry_name:string ->
  resource_group_name:string ->
  service_uri:string ->
  string ->
  unit
