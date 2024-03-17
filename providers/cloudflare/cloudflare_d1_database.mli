(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_d1_database

type t = private {
  account_id : string prop;
  id : string prop;
  name : string prop;
  version : string prop;
}

val cloudflare_d1_database :
  account_id:string prop -> name:string prop -> string -> t
