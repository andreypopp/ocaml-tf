(** Provides a Cloudflare Worker secret resource. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_worker_secret

val cloudflare_worker_secret :
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  script_name:string prop ->
  secret_text:string prop ->
  unit ->
  cloudflare_worker_secret

val yojson_of_cloudflare_worker_secret :
  cloudflare_worker_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  name : string prop;
  script_name : string prop;
  secret_text : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  script_name:string prop ->
  secret_text:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  script_name:string prop ->
  secret_text:string prop ->
  string ->
  t Tf_core.resource
