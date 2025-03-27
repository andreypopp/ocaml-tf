(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ldap_secret_backend

val vault_ldap_secret_backend :
  ?allowed_managed_keys:string prop list ->
  ?allowed_response_headers:string prop list ->
  ?audit_non_hmac_request_keys:string prop list ->
  ?audit_non_hmac_response_keys:string prop list ->
  ?certificate:string prop ->
  ?client_tls_cert:string prop ->
  ?client_tls_key:string prop ->
  ?connection_timeout:float prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?delegated_auth_accessors:string prop list ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?external_entropy_access:bool prop ->
  ?id:string prop ->
  ?identity_token_key:string prop ->
  ?insecure_tls:bool prop ->
  ?listing_visibility:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?passthrough_request_headers:string prop list ->
  ?password_policy:string prop ->
  ?path:string prop ->
  ?plugin_version:string prop ->
  ?request_timeout:float prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?schema:string prop ->
  ?seal_wrap:bool prop ->
  ?skip_static_role_import_rotation:bool prop ->
  ?starttls:bool prop ->
  ?upndomain:string prop ->
  ?url:string prop ->
  ?userattr:string prop ->
  ?userdn:string prop ->
  binddn:string prop ->
  bindpass:string prop ->
  unit ->
  vault_ldap_secret_backend

val yojson_of_vault_ldap_secret_backend : vault_ldap_secret_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  allowed_managed_keys : string list prop;
  allowed_response_headers : string list prop;
  audit_non_hmac_request_keys : string list prop;
  audit_non_hmac_response_keys : string list prop;
  binddn : string prop;
  bindpass : string prop;
  certificate : string prop;
  client_tls_cert : string prop;
  client_tls_key : string prop;
  connection_timeout : float prop;
  default_lease_ttl_seconds : float prop;
  delegated_auth_accessors : string list prop;
  description : string prop;
  disable_automated_rotation : bool prop;
  disable_remount : bool prop;
  external_entropy_access : bool prop;
  id : string prop;
  identity_token_key : string prop;
  insecure_tls : bool prop;
  listing_visibility : string prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  options : string Tf_core.assoc prop;
  passthrough_request_headers : string list prop;
  password_policy : string prop;
  path : string prop;
  plugin_version : string prop;
  request_timeout : float prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  schema : string prop;
  seal_wrap : bool prop;
  skip_static_role_import_rotation : bool prop;
  starttls : bool prop;
  upndomain : string prop;
  url : string prop;
  userattr : string prop;
  userdn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_managed_keys:string prop list ->
  ?allowed_response_headers:string prop list ->
  ?audit_non_hmac_request_keys:string prop list ->
  ?audit_non_hmac_response_keys:string prop list ->
  ?certificate:string prop ->
  ?client_tls_cert:string prop ->
  ?client_tls_key:string prop ->
  ?connection_timeout:float prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?delegated_auth_accessors:string prop list ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?external_entropy_access:bool prop ->
  ?id:string prop ->
  ?identity_token_key:string prop ->
  ?insecure_tls:bool prop ->
  ?listing_visibility:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?passthrough_request_headers:string prop list ->
  ?password_policy:string prop ->
  ?path:string prop ->
  ?plugin_version:string prop ->
  ?request_timeout:float prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?schema:string prop ->
  ?seal_wrap:bool prop ->
  ?skip_static_role_import_rotation:bool prop ->
  ?starttls:bool prop ->
  ?upndomain:string prop ->
  ?url:string prop ->
  ?userattr:string prop ->
  ?userdn:string prop ->
  binddn:string prop ->
  bindpass:string prop ->
  string ->
  t

val make :
  ?allowed_managed_keys:string prop list ->
  ?allowed_response_headers:string prop list ->
  ?audit_non_hmac_request_keys:string prop list ->
  ?audit_non_hmac_response_keys:string prop list ->
  ?certificate:string prop ->
  ?client_tls_cert:string prop ->
  ?client_tls_key:string prop ->
  ?connection_timeout:float prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?delegated_auth_accessors:string prop list ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?external_entropy_access:bool prop ->
  ?id:string prop ->
  ?identity_token_key:string prop ->
  ?insecure_tls:bool prop ->
  ?listing_visibility:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?passthrough_request_headers:string prop list ->
  ?password_policy:string prop ->
  ?path:string prop ->
  ?plugin_version:string prop ->
  ?request_timeout:float prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?schema:string prop ->
  ?seal_wrap:bool prop ->
  ?skip_static_role_import_rotation:bool prop ->
  ?starttls:bool prop ->
  ?upndomain:string prop ->
  ?url:string prop ->
  ?userattr:string prop ->
  ?userdn:string prop ->
  binddn:string prop ->
  bindpass:string prop ->
  string ->
  t Tf_core.resource
