(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_account

type t = private {
  enforce_twofactor : bool prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

val cloudflare_account :
  ?enforce_twofactor:bool prop ->
  ?id:string prop ->
  ?type_:string prop ->
  name:string prop ->
  string ->
  t
