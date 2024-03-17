(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_domain_identity_verification__timeouts
type aws_ses_domain_identity_verification

type t = private {
  arn : string prop;
  domain : string prop;
  id : string prop;
}

val aws_ses_domain_identity_verification :
  ?id:string prop ->
  ?timeouts:aws_ses_domain_identity_verification__timeouts ->
  domain:string prop ->
  string ->
  t
