(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_disk_resource_policy_attachment__timeouts
type google_compute_region_disk_resource_policy_attachment

val google_compute_region_disk_resource_policy_attachment :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:
    google_compute_region_disk_resource_policy_attachment__timeouts ->
  disk:string prop ->
  name:string prop ->
  string ->
  unit
