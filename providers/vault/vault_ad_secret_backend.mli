(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ad_secret_backend

val vault_ad_secret_backend :
  ?anonymous_group_search:bool prop ->
  ?backend:string prop ->
  ?case_sensitive_names:bool prop ->
  ?certificate:string prop ->
  ?client_tls_cert:string prop ->
  ?client_tls_key:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?deny_null_bind:bool prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?discoverdn:bool prop ->
  ?groupattr:string prop ->
  ?groupdn:string prop ->
  ?groupfilter:string prop ->
  ?id:string prop ->
  ?insecure_tls:bool prop ->
  ?last_rotation_tolerance:float prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?password_policy:string prop ->
  ?request_timeout:float prop ->
  ?starttls:bool prop ->
  ?tls_max_version:string prop ->
  ?tls_min_version:string prop ->
  ?ttl:float prop ->
  ?upndomain:string prop ->
  ?url:string prop ->
  ?use_pre111_group_cn_behavior:bool prop ->
  ?use_token_groups:bool prop ->
  ?userattr:string prop ->
  ?userdn:string prop ->
  binddn:string prop ->
  bindpass:string prop ->
  unit ->
  vault_ad_secret_backend

val yojson_of_vault_ad_secret_backend : vault_ad_secret_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  anonymous_group_search : bool prop;
  backend : string prop;
  binddn : string prop;
  bindpass : string prop;
  case_sensitive_names : bool prop;
  certificate : string prop;
  client_tls_cert : string prop;
  client_tls_key : string prop;
  default_lease_ttl_seconds : float prop;
  deny_null_bind : bool prop;
  description : string prop;
  disable_remount : bool prop;
  discoverdn : bool prop;
  groupattr : string prop;
  groupdn : string prop;
  groupfilter : string prop;
  id : string prop;
  insecure_tls : bool prop;
  last_rotation_tolerance : float prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  max_ttl : float prop;
  namespace : string prop;
  password_policy : string prop;
  request_timeout : float prop;
  starttls : bool prop;
  tls_max_version : string prop;
  tls_min_version : string prop;
  ttl : float prop;
  upndomain : string prop;
  url : string prop;
  use_pre111_group_cn_behavior : bool prop;
  use_token_groups : bool prop;
  userattr : string prop;
  userdn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?anonymous_group_search:bool prop ->
  ?backend:string prop ->
  ?case_sensitive_names:bool prop ->
  ?certificate:string prop ->
  ?client_tls_cert:string prop ->
  ?client_tls_key:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?deny_null_bind:bool prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?discoverdn:bool prop ->
  ?groupattr:string prop ->
  ?groupdn:string prop ->
  ?groupfilter:string prop ->
  ?id:string prop ->
  ?insecure_tls:bool prop ->
  ?last_rotation_tolerance:float prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?password_policy:string prop ->
  ?request_timeout:float prop ->
  ?starttls:bool prop ->
  ?tls_max_version:string prop ->
  ?tls_min_version:string prop ->
  ?ttl:float prop ->
  ?upndomain:string prop ->
  ?url:string prop ->
  ?use_pre111_group_cn_behavior:bool prop ->
  ?use_token_groups:bool prop ->
  ?userattr:string prop ->
  ?userdn:string prop ->
  binddn:string prop ->
  bindpass:string prop ->
  string ->
  t

val make :
  ?anonymous_group_search:bool prop ->
  ?backend:string prop ->
  ?case_sensitive_names:bool prop ->
  ?certificate:string prop ->
  ?client_tls_cert:string prop ->
  ?client_tls_key:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?deny_null_bind:bool prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?discoverdn:bool prop ->
  ?groupattr:string prop ->
  ?groupdn:string prop ->
  ?groupfilter:string prop ->
  ?id:string prop ->
  ?insecure_tls:bool prop ->
  ?last_rotation_tolerance:float prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?password_policy:string prop ->
  ?request_timeout:float prop ->
  ?starttls:bool prop ->
  ?tls_max_version:string prop ->
  ?tls_min_version:string prop ->
  ?ttl:float prop ->
  ?upndomain:string prop ->
  ?url:string prop ->
  ?use_pre111_group_cn_behavior:bool prop ->
  ?use_token_groups:bool prop ->
  ?userattr:string prop ->
  ?userdn:string prop ->
  binddn:string prop ->
  bindpass:string prop ->
  string ->
  t Tf_core.resource
