(** The [Workers for Platforms](https://developers.cloudflare.com/cloudflare-for-platforms/workers-for-platforms/) resource allows you
to manage Cloudflare Workers for Platforms namespaces.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_workers_for_platforms_namespace

val cloudflare_workers_for_platforms_namespace :
  account_id:string prop ->
  name:string prop ->
  unit ->
  cloudflare_workers_for_platforms_namespace

val yojson_of_cloudflare_workers_for_platforms_namespace :
  cloudflare_workers_for_platforms_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  name : string prop;
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
