(** Provides a Cloudflare Zone resource. Zone is the basic resource for
working with Cloudflare and is roughly equivalent to a domain name
that the user purchases.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_zone

val cloudflare_zone :
  ?id:string prop ->
  ?jump_start:bool prop ->
  ?paused:bool prop ->
  ?plan:string prop ->
  ?type_:string prop ->
  account_id:string prop ->
  zone:string prop ->
  unit ->
  cloudflare_zone

val yojson_of_cloudflare_zone : cloudflare_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  jump_start : bool prop;
  meta : (string * bool) list prop;
  name_servers : string list prop;
  paused : bool prop;
  plan : string prop;
  status : string prop;
  type_ : string prop;
  vanity_name_servers : string list prop;
  verification_key : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?jump_start:bool prop ->
  ?paused:bool prop ->
  ?plan:string prop ->
  ?type_:string prop ->
  account_id:string prop ->
  zone:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?jump_start:bool prop ->
  ?paused:bool prop ->
  ?plan:string prop ->
  ?type_:string prop ->
  account_id:string prop ->
  zone:string prop ->
  string ->
  t Tf_core.resource
