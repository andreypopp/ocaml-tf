(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_acmpca_certificate_authority_certificate

val aws_acmpca_certificate_authority_certificate :
  ?certificate_chain:string prop ->
  ?id:string prop ->
  certificate:string prop ->
  certificate_authority_arn:string prop ->
  unit ->
  aws_acmpca_certificate_authority_certificate

val yojson_of_aws_acmpca_certificate_authority_certificate :
  aws_acmpca_certificate_authority_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate : string prop;
  certificate_authority_arn : string prop;
  certificate_chain : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_chain:string prop ->
  ?id:string prop ->
  certificate:string prop ->
  certificate_authority_arn:string prop ->
  string ->
  t

val make :
  ?certificate_chain:string prop ->
  ?id:string prop ->
  certificate:string prop ->
  certificate_authority_arn:string prop ->
  string ->
  t Tf_core.resource
