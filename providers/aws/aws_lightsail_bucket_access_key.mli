(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lightsail_bucket_access_key

val aws_lightsail_bucket_access_key :
  ?id:string prop ->
  bucket_name:string prop ->
  unit ->
  aws_lightsail_bucket_access_key

val yojson_of_aws_lightsail_bucket_access_key :
  aws_lightsail_bucket_access_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_key_id : string prop;
  bucket_name : string prop;
  created_at : string prop;
  id : string prop;
  secret_access_key : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  bucket_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  bucket_name:string prop ->
  string ->
  t Tf_core.resource
