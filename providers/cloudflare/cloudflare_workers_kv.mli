(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_workers_kv

val cloudflare_workers_kv :
  ?id:string prop ->
  account_id:string prop ->
  key:string prop ->
  namespace_id:string prop ->
  value:string prop ->
  unit ->
  cloudflare_workers_kv

val yojson_of_cloudflare_workers_kv : cloudflare_workers_kv -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  key : string prop;
  namespace_id : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  key:string prop ->
  namespace_id:string prop ->
  value:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  key:string prop ->
  namespace_id:string prop ->
  value:string prop ->
  string ->
  t Tf_core.resource
