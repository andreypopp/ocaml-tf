(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration

val configuration :
  target:string prop -> value:string prop -> unit -> configuration

type cloudflare_access_rule

val cloudflare_access_rule :
  ?account_id:string prop ->
  ?id:string prop ->
  ?notes:string prop ->
  ?zone_id:string prop ->
  mode:string prop ->
  configuration:configuration list ->
  unit ->
  cloudflare_access_rule

val yojson_of_cloudflare_access_rule : cloudflare_access_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  mode : string prop;
  notes : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?notes:string prop ->
  ?zone_id:string prop ->
  mode:string prop ->
  configuration:configuration list ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?notes:string prop ->
  ?zone_id:string prop ->
  mode:string prop ->
  configuration:configuration list ->
  string ->
  t Tf_core.resource
