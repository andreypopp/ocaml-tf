(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_connection__timeouts
type azurerm_bot_connection

val azurerm_bot_connection :
  ?parameters:(string * string) list ->
  ?scopes:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_bot_connection__timeouts ->
  bot_name:string ->
  client_id:string ->
  client_secret:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  service_provider_name:string ->
  string ->
  unit
