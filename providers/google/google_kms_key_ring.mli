(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_key_ring__timeouts
type google_kms_key_ring

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

val google_kms_key_ring :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_kms_key_ring__timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t
