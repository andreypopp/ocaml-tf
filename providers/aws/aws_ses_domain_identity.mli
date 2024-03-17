(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_domain_identity

type t = private {
  arn : string prop;
  domain : string prop;
  id : string prop;
  verification_token : string prop;
}

val aws_ses_domain_identity :
  ?id:string prop -> domain:string prop -> string -> t
