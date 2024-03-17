(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_acmpca_certificate_authority_certificate

type t = private {
  certificate : string prop;
  certificate_authority_arn : string prop;
  certificate_chain : string prop;
  id : string prop;
}

val aws_acmpca_certificate_authority_certificate :
  ?certificate_chain:string prop ->
  ?id:string prop ->
  certificate:string prop ->
  certificate_authority_arn:string prop ->
  string ->
  t
