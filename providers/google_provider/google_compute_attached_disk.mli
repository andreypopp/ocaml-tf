(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_attached_disk__timeouts
type google_compute_attached_disk

val google_compute_attached_disk :
  ?device_name:string prop ->
  ?id:string prop ->
  ?mode:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:google_compute_attached_disk__timeouts ->
  disk:string prop ->
  instance:string prop ->
  string ->
  unit
