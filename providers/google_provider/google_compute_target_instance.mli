(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_target_instance__timeouts
type google_compute_target_instance

val google_compute_target_instance :
  ?description:string prop ->
  ?id:string prop ->
  ?nat_policy:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:google_compute_target_instance__timeouts ->
  instance:string prop ->
  name:string prop ->
  string ->
  unit
