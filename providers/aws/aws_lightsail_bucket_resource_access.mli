(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lightsail_bucket_resource_access

val aws_lightsail_bucket_resource_access :
  ?id:string prop ->
  bucket_name:string prop ->
  resource_name:string prop ->
  unit ->
  aws_lightsail_bucket_resource_access

val yojson_of_aws_lightsail_bucket_resource_access :
  aws_lightsail_bucket_resource_access -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket_name : string prop;
  id : string prop;
  resource_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  bucket_name:string prop ->
  resource_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  bucket_name:string prop ->
  resource_name:string prop ->
  string ->
  t Tf_core.resource
