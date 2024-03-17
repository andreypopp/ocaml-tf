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
  ?enabled:bool prop ->
  ?id:string prop ->
  ?key_storage_security_standard:string prop ->
  ?permanent_deletion_time_in_days:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?usage_mode:string prop ->
  ?timeouts:aws_acmpca_certificate_authority__timeouts ->
  certificate_authority_configuration:
    aws_acmpca_certificate_authority__certificate_authority_configuration
    list ->
  revocation_configuration:
    aws_acmpca_certificate_authority__revocation_configuration list ->
  string ->
  unit
