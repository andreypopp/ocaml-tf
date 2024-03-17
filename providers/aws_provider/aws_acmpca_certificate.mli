(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_acmpca_certificate__validity
type aws_acmpca_certificate

val aws_acmpca_certificate :
  ?api_passthrough:string ->
  ?template_arn:string ->
  certificate_authority_arn:string ->
  certificate_signing_request:string ->
  signing_algorithm:string ->
  validity:aws_acmpca_certificate__validity list ->
  string ->
  unit
