(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type validity

val validity :
  type_:string prop -> value:string prop -> unit -> validity

type aws_acmpca_certificate

val aws_acmpca_certificate :
  ?api_passthrough:string prop ->
  ?id:string prop ->
  ?template_arn:string prop ->
  certificate_authority_arn:string prop ->
  certificate_signing_request:string prop ->
  signing_algorithm:string prop ->
  validity:validity list ->
  unit ->
  aws_acmpca_certificate

val yojson_of_aws_acmpca_certificate : aws_acmpca_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?api_passthrough:string prop ->
  ?id:string prop ->
  ?template_arn:string prop ->
  certificate_authority_arn:string prop ->
  certificate_signing_request:string prop ->
  signing_algorithm:string prop ->
  validity:validity list ->
  string ->
  t

val make :
  ?api_passthrough:string prop ->
  ?id:string prop ->
  ?template_arn:string prop ->
  certificate_authority_arn:string prop ->
  certificate_signing_request:string prop ->
  signing_algorithm:string prop ->
  validity:validity list ->
  string ->
  t Tf_core.resource
