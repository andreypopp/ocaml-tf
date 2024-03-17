(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_worker_secret

type t = private {
  account_id : string prop;
  id : string prop;
  name : string prop;
  script_name : string prop;
  secret_text : string prop;
}

val cloudflare_worker_secret :
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  script_name:string prop ->
  secret_text:string prop ->
  string ->
  t
