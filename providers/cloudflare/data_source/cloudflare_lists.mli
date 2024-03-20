(** Use this data source to lookup [Lists](https://developers.cloudflare.com/api/operations/lists-get-lists). *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type lists = {
  description : string prop;  (** description *)
  id : string prop;  (** id *)
  kind : string prop;  (** kind *)
  name : string prop;  (** name *)
  numitems : float prop;  (** numitems *)
}

type cloudflare_lists

val cloudflare_lists :
  ?id:string prop ->
  account_id:string prop ->
  unit ->
  cloudflare_lists

val yojson_of_cloudflare_lists : cloudflare_lists -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  lists : lists list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  string ->
  t Tf_core.resource
