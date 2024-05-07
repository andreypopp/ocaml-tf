(** Provides the ability to manage Cloudflare Workers KV Namespace features. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_workers_kv_namespace

val cloudflare_workers_kv_namespace :
  ?id:string prop ->
  account_id:string prop ->
  title:string prop ->
  unit ->
  cloudflare_workers_kv_namespace

val yojson_of_cloudflare_workers_kv_namespace :
  cloudflare_workers_kv_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  title : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  title:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  title:string prop ->
  string ->
  t Tf_core.resource
