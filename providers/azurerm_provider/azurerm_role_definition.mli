(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_role_definition__permissions
type azurerm_role_definition__timeouts
type azurerm_role_definition

val azurerm_role_definition :
  ?assignable_scopes:string list ->
  ?description:string ->
  ?id:string ->
  ?role_definition_id:string ->
  ?timeouts:azurerm_role_definition__timeouts ->
  name:string ->
  scope:string ->
  permissions:azurerm_role_definition__permissions list ->
  string ->
  unit
