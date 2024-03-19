(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_account_member

val cloudflare_account_member :
  ?id:string prop ->
  ?status:string prop ->
  account_id:string prop ->
  email_address:string prop ->
  role_ids:string prop list ->
  unit ->
  cloudflare_account_member

val yojson_of_cloudflare_account_member :
  cloudflare_account_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  email_address : string prop;
  id : string prop;
  role_ids : string list prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?status:string prop ->
  account_id:string prop ->
  email_address:string prop ->
  role_ids:string prop list ->
  string ->
  t
