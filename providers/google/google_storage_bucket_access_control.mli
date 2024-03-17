(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_bucket_access_control__timeouts
type google_storage_bucket_access_control

type t = private {
  bucket : string prop;
  domain : string prop;
  email : string prop;
  entity : string prop;
  id : string prop;
  role : string prop;
}

val google_storage_bucket_access_control :
  ?id:string prop ->
  ?role:string prop ->
  ?timeouts:google_storage_bucket_access_control__timeouts ->
  bucket:string prop ->
  entity:string prop ->
  string ->
  t
