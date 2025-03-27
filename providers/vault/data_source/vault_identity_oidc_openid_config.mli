(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_oidc_openid_config

val vault_identity_oidc_openid_config :
  ?id:string prop -> ?namespace:string prop -> name:string prop -> unit -> vault_identity_oidc_openid_config

val yojson_of_vault_identity_oidc_openid_config : vault_identity_oidc_openid_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authorization_endpoint : string prop;
  grant_types_supported : string list prop;
  id : string prop;
  id_token_signing_alg_values_supported : string list prop;
  issuer : string prop;
  jwks_uri : string prop;
  name : string prop;
  namespace : string prop;
  request_uri_parameter_supported : bool prop;
  response_types_supported : string list prop;
  scopes_supported : string list prop;
  subject_types_supported : string list prop;
  token_endpoint : string prop;
  token_endpoint_auth_methods_supported : string list prop;
  userinfo_endpoint : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> ?namespace:string prop -> name:string prop -> string -> t
val make : ?id:string prop -> ?namespace:string prop -> name:string prop -> string -> t Tf_core.resource
