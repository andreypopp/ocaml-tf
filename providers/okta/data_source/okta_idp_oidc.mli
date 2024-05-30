(** Get a OIDC IdP from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_idp_oidc

val okta_idp_oidc :
  ?id:string prop -> ?name:string prop -> unit -> okta_idp_oidc

val yojson_of_okta_idp_oidc : okta_idp_oidc -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authorization_binding : string prop;
  authorization_url : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  issuer_mode : string prop;
  issuer_url : string prop;
  jwks_binding : string prop;
  jwks_url : string prop;
  max_clock_skew : float prop;
  name : string prop;
  protocol_type : string prop;
  scopes : string list prop;
  token_binding : string prop;
  token_url : string prop;
  type_ : string prop;
  user_info_binding : string prop;
  user_info_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
