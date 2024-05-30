(** Get a sign-on policy for the application. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_app_signon_policy

val okta_app_signon_policy :
  ?id:string prop ->
  app_id:string prop ->
  unit ->
  okta_app_signon_policy

val yojson_of_okta_app_signon_policy : okta_app_signon_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  app_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  app_id:string prop ->
  string ->
  t Tf_core.resource
