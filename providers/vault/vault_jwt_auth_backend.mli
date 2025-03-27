(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type tune = {
  allowed_response_headers : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
    (** allowed_response_headers *)
  audit_non_hmac_request_keys : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
    (** audit_non_hmac_request_keys *)
  audit_non_hmac_response_keys : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
    (** audit_non_hmac_response_keys *)
  default_lease_ttl : string prop;  (** default_lease_ttl *)
  listing_visibility : string prop;  (** listing_visibility *)
  max_lease_ttl : string prop;  (** max_lease_ttl *)
  passthrough_request_headers : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
    (** passthrough_request_headers *)
  token_type : string prop;  (** token_type *)
}

type vault_jwt_auth_backend

val vault_jwt_auth_backend :
  ?bound_issuer:string prop ->
  ?default_role:string prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?jwks_ca_pem:string prop ->
  ?jwks_url:string prop ->
  ?jwt_supported_algs:string prop list ->
  ?jwt_validation_pubkeys:string prop list ->
  ?local:bool prop ->
  ?namespace:string prop ->
  ?namespace_in_state:bool prop ->
  ?oidc_client_id:string prop ->
  ?oidc_client_secret:string prop ->
  ?oidc_discovery_ca_pem:string prop ->
  ?oidc_discovery_url:string prop ->
  ?oidc_response_mode:string prop ->
  ?oidc_response_types:string prop list ->
  ?path:string prop ->
  ?provider_config:string prop Tf_core.assoc ->
  ?tune:tune list ->
  ?type_:string prop ->
  unit ->
  vault_jwt_auth_backend

val yojson_of_vault_jwt_auth_backend : vault_jwt_auth_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  bound_issuer : string prop;
  default_role : string prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  jwks_ca_pem : string prop;
  jwks_url : string prop;
  jwt_supported_algs : string list prop;
  jwt_validation_pubkeys : string list prop;
  local : bool prop;
  namespace : string prop;
  namespace_in_state : bool prop;
  oidc_client_id : string prop;
  oidc_client_secret : string prop;
  oidc_discovery_ca_pem : string prop;
  oidc_discovery_url : string prop;
  oidc_response_mode : string prop;
  oidc_response_types : string list prop;
  path : string prop;
  provider_config : string Tf_core.assoc prop;
  tune : tune list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?bound_issuer:string prop ->
  ?default_role:string prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?jwks_ca_pem:string prop ->
  ?jwks_url:string prop ->
  ?jwt_supported_algs:string prop list ->
  ?jwt_validation_pubkeys:string prop list ->
  ?local:bool prop ->
  ?namespace:string prop ->
  ?namespace_in_state:bool prop ->
  ?oidc_client_id:string prop ->
  ?oidc_client_secret:string prop ->
  ?oidc_discovery_ca_pem:string prop ->
  ?oidc_discovery_url:string prop ->
  ?oidc_response_mode:string prop ->
  ?oidc_response_types:string prop list ->
  ?path:string prop ->
  ?provider_config:string prop Tf_core.assoc ->
  ?tune:tune list ->
  ?type_:string prop ->
  string ->
  t

val make :
  ?bound_issuer:string prop ->
  ?default_role:string prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?jwks_ca_pem:string prop ->
  ?jwks_url:string prop ->
  ?jwt_supported_algs:string prop list ->
  ?jwt_validation_pubkeys:string prop list ->
  ?local:bool prop ->
  ?namespace:string prop ->
  ?namespace_in_state:bool prop ->
  ?oidc_client_id:string prop ->
  ?oidc_client_secret:string prop ->
  ?oidc_discovery_ca_pem:string prop ->
  ?oidc_discovery_url:string prop ->
  ?oidc_response_mode:string prop ->
  ?oidc_response_types:string prop list ->
  ?path:string prop ->
  ?provider_config:string prop Tf_core.assoc ->
  ?tune:tune list ->
  ?type_:string prop ->
  string ->
  t Tf_core.resource
