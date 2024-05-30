(** Verifies the email domain. The resource won't be created if the email domain could not be verified. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_email_domain_verification

val okta_email_domain_verification :
  ?id:string prop ->
  email_domain_id:string prop ->
  unit ->
  okta_email_domain_verification

val yojson_of_okta_email_domain_verification :
  okta_email_domain_verification -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  email_domain_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  email_domain_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  email_domain_id:string prop ->
  string ->
  t Tf_core.resource
