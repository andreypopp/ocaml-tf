(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_raft_autopilot_state

val vault_raft_autopilot_state : ?id:string prop -> ?namespace:string prop -> unit -> vault_raft_autopilot_state
val yojson_of_vault_raft_autopilot_state : vault_raft_autopilot_state -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  failure_tolerance : float prop;
  healthy : bool prop;
  id : string prop;
  leader : string prop;
  namespace : string prop;
  optimistic_failure_tolerance : float prop;
  redundancy_zones : string Tf_core.assoc prop;
  redundancy_zones_json : string prop;
  servers : string Tf_core.assoc prop;
  servers_json : string prop;
  upgrade_info : string Tf_core.assoc prop;
  upgrade_info_json : string prop;
  voters : string list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> ?namespace:string prop -> string -> t
val make : ?id:string prop -> ?namespace:string prop -> string -> t Tf_core.resource
