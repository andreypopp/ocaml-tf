(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_new_relic_monitor__plan
type azurerm_new_relic_monitor__timeouts
type azurerm_new_relic_monitor__user
type azurerm_new_relic_monitor

type t = private {
  account_creation_source : string prop;
  account_id : string prop;
  id : string prop;
  ingestion_key : string prop;
  location : string prop;
  name : string prop;
  org_creation_source : string prop;
  organization_id : string prop;
  resource_group_name : string prop;
  user_id : string prop;
}

val azurerm_new_relic_monitor :
  ?account_creation_source:string prop ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?ingestion_key:string prop ->
  ?org_creation_source:string prop ->
  ?organization_id:string prop ->
  ?user_id:string prop ->
  ?timeouts:azurerm_new_relic_monitor__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  plan:azurerm_new_relic_monitor__plan list ->
  user:azurerm_new_relic_monitor__user list ->
  string ->
  t
