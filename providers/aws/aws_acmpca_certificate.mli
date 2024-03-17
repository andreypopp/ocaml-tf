(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_acmpca_certificate__validity
type aws_acmpca_certificate

type t = private {
  api_passthrough : string prop;
  arn : string prop;
  certificate : string prop;
  certificate_authority_arn : string prop;
  certificate_chain : string prop;
  certificate_signing_request : string prop;
  id : string prop;
  signing_algorithm : string prop;
  template_arn : string prop;
}

val aws_acmpca_certificate :
  ?api_passthrough:string prop ->
  ?id:string prop ->
  ?template_arn:string prop ->
  certificate_authority_arn:string prop ->
  certificate_signing_request:string prop ->
  signing_algorithm:string prop ->
  validity:aws_acmpca_certificate__validity list ->
  string ->
  t
