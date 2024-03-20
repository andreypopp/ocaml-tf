(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type plan

val plan :
  ?billing_cycle:string prop ->
  ?plan_id:string prop ->
  ?usage_type:string prop ->
  effective_date:string prop ->
  unit ->
  plan

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type user

val user :
  email:string prop ->
  first_name:string prop ->
  last_name:string prop ->
  phone_number:string prop ->
  unit ->
  user

type azurerm_new_relic_monitor

val azurerm_new_relic_monitor :
  ?account_creation_source:string prop ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?ingestion_key:string prop ->
  ?org_creation_source:string prop ->
  ?organization_id:string prop ->
  ?user_id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  plan:plan list ->
  user:user list ->
  unit ->
  azurerm_new_relic_monitor

val yojson_of_azurerm_new_relic_monitor :
  azurerm_new_relic_monitor -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?account_creation_source:string prop ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?ingestion_key:string prop ->
  ?org_creation_source:string prop ->
  ?organization_id:string prop ->
  ?user_id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  plan:plan list ->
  user:user list ->
  string ->
  t

val make :
  ?account_creation_source:string prop ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?ingestion_key:string prop ->
  ?org_creation_source:string prop ->
  ?organization_id:string prop ->
  ?user_id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  plan:plan list ->
  user:user list ->
  string ->
  t Tf_core.resource
