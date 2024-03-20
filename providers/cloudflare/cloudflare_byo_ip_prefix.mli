(** Provides the ability to manage Bring-Your-Own-IP prefixes (BYOIP)
which are used with or without Magic Transit.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_byo_ip_prefix

val cloudflare_byo_ip_prefix :
  ?advertisement:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  prefix_id:string prop ->
  unit ->
  cloudflare_byo_ip_prefix

val yojson_of_cloudflare_byo_ip_prefix :
  cloudflare_byo_ip_prefix -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  advertisement : string prop;
  description : string prop;
  id : string prop;
  prefix_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?advertisement:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  prefix_id:string prop ->
  string ->
  t

val make :
  ?advertisement:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  prefix_id:string prop ->
  string ->
  t Tf_core.resource
