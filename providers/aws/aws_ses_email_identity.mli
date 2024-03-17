(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_email_identity

type t = private {
  arn : string prop;
  email : string prop;
  id : string prop;
}

val aws_ses_email_identity :
  ?id:string prop -> email:string prop -> string -> t
