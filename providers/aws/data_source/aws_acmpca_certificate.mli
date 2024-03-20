(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_acmpca_certificate

val aws_acmpca_certificate :
  ?id:string prop ->
  arn:string prop ->
  certificate_authority_arn:string prop ->
  unit ->
  aws_acmpca_certificate

val yojson_of_aws_acmpca_certificate : aws_acmpca_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  certificate : string prop;
  certificate_authority_arn : string prop;
  certificate_chain : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  arn:string prop ->
  certificate_authority_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  arn:string prop ->
  certificate_authority_arn:string prop ->
  string ->
  t Tf_core.resource
