(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_target_pool

val google_compute_target_pool :
  ?backup_pool:string prop ->
  ?description:string prop ->
  ?failover_ratio:float prop ->
  ?health_checks:string prop list ->
  ?id:string prop ->
  ?instances:string prop list ->
  ?project:string prop ->
  ?region:string prop ->
  ?session_affinity:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_compute_target_pool

val yojson_of_google_compute_target_pool :
  google_compute_target_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  backup_pool : string prop;
  description : string prop;
  failover_ratio : float prop;
  health_checks : string list prop;
  id : string prop;
  instances : string list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  session_affinity : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backup_pool:string prop ->
  ?description:string prop ->
  ?failover_ratio:float prop ->
  ?health_checks:string prop list ->
  ?id:string prop ->
  ?instances:string prop list ->
  ?project:string prop ->
  ?region:string prop ->
  ?session_affinity:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t
