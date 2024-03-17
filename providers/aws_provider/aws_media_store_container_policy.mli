(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_media_store_container_policy

type t = private {
  container_name : string prop;
  id : string prop;
  policy : string prop;
}

val aws_media_store_container_policy :
  ?id:string prop ->
  container_name:string prop ->
  policy:string prop ->
  string ->
  t
