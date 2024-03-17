(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cognitive_deployment__model
type azurerm_cognitive_deployment__scale
type azurerm_cognitive_deployment__timeouts
type azurerm_cognitive_deployment

val azurerm_cognitive_deployment :
  ?id:string ->
  ?rai_policy_name:string ->
  ?version_upgrade_option:string ->
  ?timeouts:azurerm_cognitive_deployment__timeouts ->
  cognitive_account_id:string ->
  name:string ->
  model:azurerm_cognitive_deployment__model list ->
  scale:azurerm_cognitive_deployment__scale list ->
  string ->
  unit
