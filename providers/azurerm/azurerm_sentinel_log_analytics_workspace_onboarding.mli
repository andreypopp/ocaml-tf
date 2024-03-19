(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_log_analytics_workspace_onboarding

val azurerm_sentinel_log_analytics_workspace_onboarding :
  ?customer_managed_key_enabled:bool prop ->
  ?id:string prop ->
  ?resource_group_name:string prop ->
  ?workspace_id:string prop ->
  ?workspace_name:string prop ->
  ?timeouts:timeouts ->
  unit ->
  azurerm_sentinel_log_analytics_workspace_onboarding

val yojson_of_azurerm_sentinel_log_analytics_workspace_onboarding :
  azurerm_sentinel_log_analytics_workspace_onboarding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  customer_managed_key_enabled : bool prop;
  id : string prop;
  resource_group_name : string prop;
  workspace_id : string prop;
  workspace_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?customer_managed_key_enabled:bool prop ->
  ?id:string prop ->
  ?resource_group_name:string prop ->
  ?workspace_id:string prop ->
  ?workspace_name:string prop ->
  ?timeouts:timeouts ->
  string ->
  t
