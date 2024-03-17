(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_disk_iam_binding__condition
type google_compute_region_disk_iam_binding

val google_compute_region_disk_iam_binding :
  ?id:string ->
  ?project:string ->
  ?region:string ->
  members:string list ->
  name:string ->
  role:string ->
  condition:google_compute_region_disk_iam_binding__condition list ->
  string ->
  unit
