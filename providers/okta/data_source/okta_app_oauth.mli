(** Get a OIDC application from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_app_oauth

val okta_app_oauth :
  ?active_only:bool prop ->
  ?id:string prop ->
  ?label:string prop ->
  ?label_prefix:string prop ->
  ?skip_groups:bool prop ->
  ?skip_users:bool prop ->
  unit ->
  okta_app_oauth

val yojson_of_okta_app_oauth : okta_app_oauth -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active_only : bool prop;
  auto_submit_toolbar : bool prop;
  client_id : string prop;
  client_secret : string prop;
  client_uri : string prop;
  grant_types : string list prop;
  hide_ios : bool prop;
  hide_web : bool prop;
  id : string prop;
  label : string prop;
  label_prefix : string prop;
  links : string prop;
  login_mode : string prop;
  login_scopes : string list prop;
  login_uri : string prop;
  logo_uri : string prop;
  name : string prop;
  policy_uri : string prop;
  post_logout_redirect_uris : string list prop;
  redirect_uris : string list prop;
  response_types : string list prop;
  skip_groups : bool prop;
  skip_users : bool prop;
  status : string prop;
  type_ : string prop;
  wildcard_redirect : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?active_only:bool prop ->
  ?id:string prop ->
  ?label:string prop ->
  ?label_prefix:string prop ->
  ?skip_groups:bool prop ->
  ?skip_users:bool prop ->
  string ->
  t

val make :
  ?active_only:bool prop ->
  ?id:string prop ->
  ?label:string prop ->
  ?label_prefix:string prop ->
  ?skip_groups:bool prop ->
  ?skip_users:bool prop ->
  string ->
  t Tf_core.resource
