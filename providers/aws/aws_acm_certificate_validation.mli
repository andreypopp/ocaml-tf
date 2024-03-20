(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_acm_certificate_validation

val aws_acm_certificate_validation :
  ?id:string prop ->
  ?validation_record_fqdns:string prop list ->
  ?timeouts:timeouts ->
  certificate_arn:string prop ->
  unit ->
  aws_acm_certificate_validation

val yojson_of_aws_acm_certificate_validation :
  aws_acm_certificate_validation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate_arn : string prop;
  id : string prop;
  validation_record_fqdns : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?validation_record_fqdns:string prop list ->
  ?timeouts:timeouts ->
  certificate_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?validation_record_fqdns:string prop list ->
  ?timeouts:timeouts ->
  certificate_arn:string prop ->
  string ->
  t Tf_core.resource
