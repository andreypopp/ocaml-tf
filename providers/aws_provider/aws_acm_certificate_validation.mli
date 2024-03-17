(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_acm_certificate_validation__timeouts
type aws_acm_certificate_validation

val aws_acm_certificate_validation :
  ?id:string prop ->
  ?validation_record_fqdns:string prop list ->
  ?timeouts:aws_acm_certificate_validation__timeouts ->
  certificate_arn:string prop ->
  string ->
  unit
