(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cognitive_deployment__model
type azurerm_cognitive_deployment__scale
type azurerm_cognitive_deployment__timeouts
type azurerm_cognitive_deployment

val azurerm_cognitive_deployment :
  ?id:string prop ->
  ?rai_policy_name:string prop ->
  ?version_upgrade_option:string prop ->
  ?timeouts:azurerm_cognitive_deployment__timeouts ->
  cognitive_account_id:string prop ->
  name:string prop ->
  model:azurerm_cognitive_deployment__model list ->
  scale:azurerm_cognitive_deployment__scale list ->
  string ->
  unit
