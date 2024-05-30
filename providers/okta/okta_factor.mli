(** Allows you to manage the activation of Okta MFA methods. This resource allows you to manage Okta MFA methods. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_factor

val okta_factor :
  ?active:bool prop ->
  ?id:string prop ->
  provider_id:string prop ->
  unit ->
  okta_factor

val yojson_of_okta_factor : okta_factor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active : bool prop;
  id : string prop;
  provider_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?active:bool prop ->
  ?id:string prop ->
  provider_id:string prop ->
  string ->
  t

val make :
  ?active:bool prop ->
  ?id:string prop ->
  provider_id:string prop ->
  string ->
  t Tf_core.resource
