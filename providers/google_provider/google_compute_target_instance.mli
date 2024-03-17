(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_target_instance__timeouts
type google_compute_target_instance

val google_compute_target_instance :
  ?description:string ->
  ?nat_policy:string ->
  ?timeouts:google_compute_target_instance__timeouts ->
  instance:string ->
  name:string ->
  string ->
  unit
