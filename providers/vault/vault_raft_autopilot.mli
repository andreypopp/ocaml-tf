(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_raft_autopilot

val vault_raft_autopilot :
  ?cleanup_dead_servers:bool prop ->
  ?dead_server_last_contact_threshold:string prop ->
  ?disable_upgrade_migration:bool prop ->
  ?id:string prop ->
  ?last_contact_threshold:string prop ->
  ?max_trailing_logs:float prop ->
  ?min_quorum:float prop ->
  ?namespace:string prop ->
  ?server_stabilization_time:string prop ->
  unit ->
  vault_raft_autopilot

val yojson_of_vault_raft_autopilot : vault_raft_autopilot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cleanup_dead_servers : bool prop;
  dead_server_last_contact_threshold : string prop;
  disable_upgrade_migration : bool prop;
  id : string prop;
  last_contact_threshold : string prop;
  max_trailing_logs : float prop;
  min_quorum : float prop;
  namespace : string prop;
  server_stabilization_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cleanup_dead_servers:bool prop ->
  ?dead_server_last_contact_threshold:string prop ->
  ?disable_upgrade_migration:bool prop ->
  ?id:string prop ->
  ?last_contact_threshold:string prop ->
  ?max_trailing_logs:float prop ->
  ?min_quorum:float prop ->
  ?namespace:string prop ->
  ?server_stabilization_time:string prop ->
  string ->
  t

val make :
  ?cleanup_dead_servers:bool prop ->
  ?dead_server_last_contact_threshold:string prop ->
  ?disable_upgrade_migration:bool prop ->
  ?id:string prop ->
  ?last_contact_threshold:string prop ->
  ?max_trailing_logs:float prop ->
  ?min_quorum:float prop ->
  ?namespace:string prop ->
  ?server_stabilization_time:string prop ->
  string ->
  t Tf_core.resource
