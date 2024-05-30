(** Verifies the email sender. The resource won't be created if the email sender could not be verified. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_email_sender_verification

val okta_email_sender_verification :
  ?id:string prop ->
  sender_id:string prop ->
  unit ->
  okta_email_sender_verification

val yojson_of_okta_email_sender_verification :
  okta_email_sender_verification -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  sender_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  sender_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  sender_id:string prop ->
  string ->
  t Tf_core.resource
