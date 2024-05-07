(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_ses_domain_identity_verification

val aws_ses_domain_identity_verification :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain:string prop ->
  unit ->
  aws_ses_domain_identity_verification

val yojson_of_aws_ses_domain_identity_verification :
  aws_ses_domain_identity_verification -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  domain : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain:string prop ->
  string ->
  t Tf_core.resource
