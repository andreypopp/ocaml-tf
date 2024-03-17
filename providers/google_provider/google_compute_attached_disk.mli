(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_attached_disk__timeouts
type google_compute_attached_disk

val google_compute_attached_disk :
  ?device_name:string ->
  ?id:string ->
  ?mode:string ->
  ?project:string ->
  ?zone:string ->
  ?timeouts:google_compute_attached_disk__timeouts ->
  disk:string ->
  instance:string ->
  string ->
  unit
