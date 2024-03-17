(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_bucket_access_control__timeouts
type google_storage_bucket_access_control

val google_storage_bucket_access_control :
  ?id:string prop ->
  ?role:string prop ->
  ?timeouts:google_storage_bucket_access_control__timeouts ->
  bucket:string prop ->
  entity:string prop ->
  string ->
  unit
