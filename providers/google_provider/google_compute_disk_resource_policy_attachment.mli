(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_disk_resource_policy_attachment__timeouts
type google_compute_disk_resource_policy_attachment

type t = private {
  disk : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  zone : string prop;
}

val google_compute_disk_resource_policy_attachment :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:google_compute_disk_resource_policy_attachment__timeouts ->
  disk:string prop ->
  name:string prop ->
  string ->
  t
