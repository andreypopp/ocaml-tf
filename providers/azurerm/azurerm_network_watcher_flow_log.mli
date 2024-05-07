(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type retention_policy

val retention_policy :
  days:float prop -> enabled:bool prop -> unit -> retention_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type traffic_analytics

val traffic_analytics :
  ?interval_in_minutes:float prop ->
  enabled:bool prop ->
  workspace_id:string prop ->
  workspace_region:string prop ->
  workspace_resource_id:string prop ->
  unit ->
  traffic_analytics

type azurerm_network_watcher_flow_log

val azurerm_network_watcher_flow_log :
  ?id:string prop ->
  ?location:string prop ->
  ?tags:(string * string prop) list ->
  ?version:float prop ->
  ?timeouts:timeouts ->
  ?traffic_analytics:traffic_analytics list ->
  enabled:bool prop ->
  name:string prop ->
  network_security_group_id:string prop ->
  network_watcher_name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  retention_policy:retention_policy list ->
  unit ->
  azurerm_network_watcher_flow_log

val yojson_of_azurerm_network_watcher_flow_log :
  azurerm_network_watcher_flow_log -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  network_security_group_id : string prop;
  network_watcher_name : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?tags:(string * string prop) list ->
  ?version:float prop ->
  ?timeouts:timeouts ->
  ?traffic_analytics:traffic_analytics list ->
  enabled:bool prop ->
  name:string prop ->
  network_security_group_id:string prop ->
  network_watcher_name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  retention_policy:retention_policy list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?tags:(string * string prop) list ->
  ?version:float prop ->
  ?timeouts:timeouts ->
  ?traffic_analytics:traffic_analytics list ->
  enabled:bool prop ->
  name:string prop ->
  network_security_group_id:string prop ->
  network_watcher_name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  retention_policy:retention_policy list ->
  string ->
  t Tf_core.resource
