(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_target_pool__timeouts
type google_compute_target_pool

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
  ?timeouts:google_compute_target_pool__timeouts ->
  name:string prop ->
  string ->
  t
