(** Manages API scopes for OAuth applications. 
This resource allows you to grant or revoke API scopes for OAuth2 applications within your organization.
Note: you have to create an application before using this resource. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_app_oauth_api_scope

val okta_app_oauth_api_scope :
  ?id:string prop ->
  app_id:string prop ->
  issuer:string prop ->
  scopes:string prop list ->
  unit ->
  okta_app_oauth_api_scope

val yojson_of_okta_app_oauth_api_scope :
  okta_app_oauth_api_scope -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  issuer : string prop;
  scopes : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  app_id:string prop ->
  issuer:string prop ->
  scopes:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  app_id:string prop ->
  issuer:string prop ->
  scopes:string prop list ->
  string ->
  t Tf_core.resource
