(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_registry_token_password__password1
type azurerm_container_registry_token_password__password2
type azurerm_container_registry_token_password__timeouts
type azurerm_container_registry_token_password

val azurerm_container_registry_token_password :
  ?timeouts:azurerm_container_registry_token_password__timeouts ->
  container_registry_token_id:string ->
  password1:azurerm_container_registry_token_password__password1 list ->
  password2:azurerm_container_registry_token_password__password2 list ->
  string ->
  unit
