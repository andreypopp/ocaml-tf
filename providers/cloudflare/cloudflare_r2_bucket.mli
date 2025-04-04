(** The [R2 Bucket](https://developers.cloudflare.com/r2/) resource allows you to manage Cloudflare R2 buckets.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_r2_bucket

val cloudflare_r2_bucket :
  ?location:string prop ->
  account_id:string prop ->
  name:string prop ->
  unit ->
  cloudflare_r2_bucket

val yojson_of_cloudflare_r2_bucket : cloudflare_r2_bucket -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?location:string prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?location:string prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
