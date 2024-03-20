(** Use this data source to lookup [Account Roles](https://api.cloudflare.com/#account-roles-properties). *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type roles = {
  description : string prop;  (** description *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type cloudflare_account_roles

val cloudflare_account_roles :
  ?id:string prop ->
  account_id:string prop ->
  unit ->
  cloudflare_account_roles

val yojson_of_cloudflare_account_roles :
  cloudflare_account_roles -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  roles : roles list prop;
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
