(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_new_relic_monitor__plan
type azurerm_new_relic_monitor__timeouts
type azurerm_new_relic_monitor__user
type azurerm_new_relic_monitor

val azurerm_new_relic_monitor :
  ?account_creation_source:string ->
  ?ingestion_key:string ->
  ?org_creation_source:string ->
  ?user_id:string ->
  ?timeouts:azurerm_new_relic_monitor__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  plan:azurerm_new_relic_monitor__plan list ->
  user:azurerm_new_relic_monitor__user list ->
  string ->
  unit
