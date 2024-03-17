(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_target_pool__timeouts
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
  ?timeouts:google_compute_target_pool__timeouts ->
  name:string prop ->
  string ->
  unit
