(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_email_routing_address

type t = private {
  account_id : string prop;
  created : string prop;
  email : string prop;
  id : string prop;
  modified : string prop;
  tag : string prop;
  verified : string prop;
}

val cloudflare_email_routing_address :
  account_id:string prop -> email:string prop -> string -> t
