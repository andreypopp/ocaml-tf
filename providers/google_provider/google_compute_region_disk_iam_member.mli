(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_disk_iam_member__condition
type google_compute_region_disk_iam_member

val google_compute_region_disk_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  member:string prop ->
  name:string prop ->
  role:string prop ->
  condition:google_compute_region_disk_iam_member__condition list ->
  string ->
  unit
