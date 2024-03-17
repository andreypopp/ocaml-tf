(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_acmpca_certificate_authority__certificate_authority_configuration__subject

type aws_acmpca_certificate_authority__certificate_authority_configuration

type aws_acmpca_certificate_authority__revocation_configuration__crl_configuration

type aws_acmpca_certificate_authority__revocation_configuration__ocsp_configuration

type aws_acmpca_certificate_authority__revocation_configuration
type aws_acmpca_certificate_authority__timeouts
type aws_acmpca_certificate_authority

val aws_acmpca_certificate_authority :
  ?enabled:bool ->
  ?permanent_deletion_time_in_days:float ->
  ?tags:(string * string) list ->
  ?type_:string ->
  ?timeouts:aws_acmpca_certificate_authority__timeouts ->
  certificate_authority_configuration:
    aws_acmpca_certificate_authority__certificate_authority_configuration
    list ->
  revocation_configuration:
    aws_acmpca_certificate_authority__revocation_configuration list ->
  string ->
  unit
