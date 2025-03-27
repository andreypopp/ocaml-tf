(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_mount

val vault_mount :
  ?allowed_managed_keys:string prop list ->
  ?allowed_response_headers:string prop list ->
  ?audit_non_hmac_request_keys:string prop list ->
  ?audit_non_hmac_response_keys:string prop list ->
  ?default_lease_ttl_seconds:float prop ->
  ?delegated_auth_accessors:string prop list ->
  ?description:string prop ->
  ?external_entropy_access:bool prop ->
  ?id:string prop ->
  ?identity_token_key:string prop ->
  ?listing_visibility:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?passthrough_request_headers:string prop list ->
  ?plugin_version:string prop ->
  ?seal_wrap:bool prop ->
  path:string prop ->
  type_:string prop ->
  unit ->
  vault_mount

val yojson_of_vault_mount : vault_mount -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  allowed_managed_keys : string list prop;
  allowed_response_headers : string list prop;
  audit_non_hmac_request_keys : string list prop;
  audit_non_hmac_response_keys : string list prop;
  default_lease_ttl_seconds : float prop;
  delegated_auth_accessors : string list prop;
  description : string prop;
  external_entropy_access : bool prop;
  id : string prop;
  identity_token_key : string prop;
  listing_visibility : string prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  options : string Tf_core.assoc prop;
  passthrough_request_headers : string list prop;
  path : string prop;
  plugin_version : string prop;
  seal_wrap : bool prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_managed_keys:string prop list ->
  ?allowed_response_headers:string prop list ->
  ?audit_non_hmac_request_keys:string prop list ->
  ?audit_non_hmac_response_keys:string prop list ->
  ?default_lease_ttl_seconds:float prop ->
  ?delegated_auth_accessors:string prop list ->
  ?description:string prop ->
  ?external_entropy_access:bool prop ->
  ?id:string prop ->
  ?identity_token_key:string prop ->
  ?listing_visibility:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?passthrough_request_headers:string prop list ->
  ?plugin_version:string prop ->
  ?seal_wrap:bool prop ->
  path:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?allowed_managed_keys:string prop list ->
  ?allowed_response_headers:string prop list ->
  ?audit_non_hmac_request_keys:string prop list ->
  ?audit_non_hmac_response_keys:string prop list ->
  ?default_lease_ttl_seconds:float prop ->
  ?delegated_auth_accessors:string prop list ->
  ?description:string prop ->
  ?external_entropy_access:bool prop ->
  ?id:string prop ->
  ?identity_token_key:string prop ->
  ?listing_visibility:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?passthrough_request_headers:string prop list ->
  ?plugin_version:string prop ->
  ?seal_wrap:bool prop ->
  path:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
