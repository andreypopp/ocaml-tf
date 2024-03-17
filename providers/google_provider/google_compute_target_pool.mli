(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_target_pool__timeouts
type google_compute_target_pool

val google_compute_target_pool :
  ?backup_pool:string ->
  ?description:string ->
  ?failover_ratio:float ->
  ?health_checks:string list ->
  ?session_affinity:string ->
  ?timeouts:google_compute_target_pool__timeouts ->
  name:string ->
  string ->
  unit
