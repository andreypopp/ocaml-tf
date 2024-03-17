(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_pages_domain

type t = private {
  account_id : string prop;
  domain : string prop;
  id : string prop;
  project_name : string prop;
  status : string prop;
}

val cloudflare_pages_domain :
  ?id:string prop ->
  account_id:string prop ->
  domain:string prop ->
  project_name:string prop ->
  string ->
  t
