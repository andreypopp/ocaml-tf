(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_blueprint_assignment__identity
type azurerm_blueprint_assignment__timeouts
type azurerm_blueprint_assignment

val azurerm_blueprint_assignment :
  ?lock_exclude_actions:string list ->
  ?lock_exclude_principals:string list ->
  ?lock_mode:string ->
  ?parameter_values:string ->
  ?resource_groups:string ->
  ?timeouts:azurerm_blueprint_assignment__timeouts ->
  location:string ->
  name:string ->
  target_subscription_id:string ->
  version_id:string ->
  identity:azurerm_blueprint_assignment__identity list ->
  string ->
  unit
