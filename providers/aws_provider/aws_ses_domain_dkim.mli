(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_domain_dkim

type t = private {
  dkim_tokens : string list prop;
  domain : string prop;
  id : string prop;
}

val aws_ses_domain_dkim :
  ?id:string prop -> domain:string prop -> string -> t
