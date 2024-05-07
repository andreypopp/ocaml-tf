(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_log_analytics_workspace

val azurerm_log_analytics_workspace :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_log_analytics_workspace

val yojson_of_azurerm_log_analytics_workspace :
  azurerm_log_analytics_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  daily_quota_gb : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  primary_shared_key : string prop;
  resource_group_name : string prop;
  retention_in_days : float prop;
  secondary_shared_key : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
