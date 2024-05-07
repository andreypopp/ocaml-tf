(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_identity_platform_tenant

val google_identity_platform_tenant :
  ?allow_password_signup:bool prop ->
  ?disable_auth:bool prop ->
  ?enable_email_link_signin:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  unit ->
  google_identity_platform_tenant

val yojson_of_google_identity_platform_tenant :
  google_identity_platform_tenant -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_password_signup : bool prop;
  disable_auth : bool prop;
  display_name : string prop;
  enable_email_link_signin : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_password_signup:bool prop ->
  ?disable_auth:bool prop ->
  ?enable_email_link_signin:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t

val make :
  ?allow_password_signup:bool prop ->
  ?disable_auth:bool prop ->
  ?enable_email_link_signin:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t Tf_core.resource
