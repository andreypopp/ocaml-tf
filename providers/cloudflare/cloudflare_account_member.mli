(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_account_member

type t = private {
  account_id : string prop;
  email_address : string prop;
  id : string prop;
  role_ids : string list prop;
  status : string prop;
}

val cloudflare_account_member :
  ?id:string prop ->
  ?status:string prop ->
  account_id:string prop ->
  email_address:string prop ->
  role_ids:string prop list ->
  string ->
  t
