(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_bucket_resource_access

type t = private {
  bucket_name : string prop;
  id : string prop;
  resource_name : string prop;
}

val aws_lightsail_bucket_resource_access :
  ?id:string prop ->
  bucket_name:string prop ->
  resource_name:string prop ->
  string ->
  t
