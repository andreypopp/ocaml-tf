(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_user_external_identity

val github_user_external_identity :
  ?id:string prop ->
  username:string prop ->
  unit ->
  github_user_external_identity

val yojson_of_github_user_external_identity :
  github_user_external_identity -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  login : string prop;
  saml_identity : (string * string) list prop;
  scim_identity : (string * string) list prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
