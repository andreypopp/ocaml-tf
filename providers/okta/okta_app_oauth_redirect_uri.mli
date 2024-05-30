(** This resource allows you to manage redirection URI for use in redirect-based flows. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_app_oauth_redirect_uri

val okta_app_oauth_redirect_uri :
  ?id:string prop ->
  app_id:string prop ->
  uri:string prop ->
  unit ->
  okta_app_oauth_redirect_uri

val yojson_of_okta_app_oauth_redirect_uri :
  okta_app_oauth_redirect_uri -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  app_id:string prop ->
  uri:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  app_id:string prop ->
  uri:string prop ->
  string ->
  t Tf_core.resource
