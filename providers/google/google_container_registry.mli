(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_registry

type t = private {
  bucket_self_link : string prop;
  id : string prop;
  location : string prop;
  project : string prop;
}

val google_container_registry :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  string ->
  t
