(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_list

val cloudflare_list :
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  unit ->
  cloudflare_list

val yojson_of_cloudflare_list : cloudflare_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  numitems : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
