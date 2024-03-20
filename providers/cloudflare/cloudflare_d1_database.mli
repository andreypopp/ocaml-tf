(** The [D1 Database](https://developers.cloudflare.com/d1/) resource allows you to manage Cloudflare D1 databases.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_d1_database

val cloudflare_d1_database :
  account_id:string prop ->
  name:string prop ->
  unit ->
  cloudflare_d1_database

val yojson_of_cloudflare_d1_database : cloudflare_d1_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  name : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  account_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
