(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type oidc__client_secret__value

val oidc__client_secret__value :
  plain_text:string prop -> unit -> oidc__client_secret__value

type oidc__client_secret

val oidc__client_secret :
  ?value:oidc__client_secret__value list ->
  unit ->
  oidc__client_secret

type oidc__web_sso_config

val oidc__web_sso_config :
  ?additional_scopes:string prop list ->
  assertion_claims_behavior:string prop ->
  response_type:string prop ->
  unit ->
  oidc__web_sso_config

type oidc

val oidc :
  ?jwks_json:string prop ->
  ?client_secret:oidc__client_secret list ->
  ?web_sso_config:oidc__web_sso_config list ->
  client_id:string prop ->
  issuer_uri:string prop ->
  unit ->
  oidc

type saml

val saml : idp_metadata_xml:string prop -> unit -> saml

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_iam_workforce_pool_provider

val google_iam_workforce_pool_provider :
  ?attribute_condition:string prop ->
  ?attribute_mapping:(string * string prop) list ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?oidc:oidc list ->
  ?saml:saml list ->
  ?timeouts:timeouts ->
  location:string prop ->
  provider_id:string prop ->
  workforce_pool_id:string prop ->
  unit ->
  google_iam_workforce_pool_provider

val yojson_of_google_iam_workforce_pool_provider :
  google_iam_workforce_pool_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  attribute_condition : string prop;
  attribute_mapping : (string * string) list prop;
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  provider_id : string prop;
  state : string prop;
  workforce_pool_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?attribute_condition:string prop ->
  ?attribute_mapping:(string * string prop) list ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?oidc:oidc list ->
  ?saml:saml list ->
  ?timeouts:timeouts ->
  location:string prop ->
  provider_id:string prop ->
  workforce_pool_id:string prop ->
  string ->
  t

val make :
  ?attribute_condition:string prop ->
  ?attribute_mapping:(string * string prop) list ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?oidc:oidc list ->
  ?saml:saml list ->
  ?timeouts:timeouts ->
  location:string prop ->
  provider_id:string prop ->
  workforce_pool_id:string prop ->
  string ->
  t Tf_core.resource
