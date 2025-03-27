(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ldap_auth_backend

val vault_ldap_auth_backend :
  ?binddn:string prop ->
  ?bindpass:string prop ->
  ?case_sensitive_names:bool prop ->
  ?certificate:string prop ->
  ?client_tls_cert:string prop ->
  ?client_tls_key:string prop ->
  ?connection_timeout:float prop ->
  ?deny_null_bind:bool prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?discoverdn:bool prop ->
  ?groupattr:string prop ->
  ?groupdn:string prop ->
  ?groupfilter:string prop ->
  ?id:string prop ->
  ?insecure_tls:bool prop ->
  ?local:bool prop ->
  ?max_page_size:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?starttls:bool prop ->
  ?tls_max_version:string prop ->
  ?tls_min_version:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  ?upndomain:string prop ->
  ?use_token_groups:bool prop ->
  ?userattr:string prop ->
  ?userdn:string prop ->
  ?userfilter:string prop ->
  ?username_as_alias:bool prop ->
  url:string prop ->
  unit ->
  vault_ldap_auth_backend

val yojson_of_vault_ldap_auth_backend : vault_ldap_auth_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  binddn : string prop;
  bindpass : string prop;
  case_sensitive_names : bool prop;
  certificate : string prop;
  client_tls_cert : string prop;
  client_tls_key : string prop;
  connection_timeout : float prop;
  deny_null_bind : bool prop;
  description : string prop;
  disable_automated_rotation : bool prop;
  disable_remount : bool prop;
  discoverdn : bool prop;
  groupattr : string prop;
  groupdn : string prop;
  groupfilter : string prop;
  id : string prop;
  insecure_tls : bool prop;
  local : bool prop;
  max_page_size : float prop;
  namespace : string prop;
  path : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  starttls : bool prop;
  tls_max_version : string prop;
  tls_min_version : string prop;
  token_bound_cidrs : string list prop;
  token_explicit_max_ttl : float prop;
  token_max_ttl : float prop;
  token_no_default_policy : bool prop;
  token_num_uses : float prop;
  token_period : float prop;
  token_policies : string list prop;
  token_ttl : float prop;
  token_type : string prop;
  upndomain : string prop;
  url : string prop;
  use_token_groups : bool prop;
  userattr : string prop;
  userdn : string prop;
  userfilter : string prop;
  username_as_alias : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?binddn:string prop ->
  ?bindpass:string prop ->
  ?case_sensitive_names:bool prop ->
  ?certificate:string prop ->
  ?client_tls_cert:string prop ->
  ?client_tls_key:string prop ->
  ?connection_timeout:float prop ->
  ?deny_null_bind:bool prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?discoverdn:bool prop ->
  ?groupattr:string prop ->
  ?groupdn:string prop ->
  ?groupfilter:string prop ->
  ?id:string prop ->
  ?insecure_tls:bool prop ->
  ?local:bool prop ->
  ?max_page_size:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?starttls:bool prop ->
  ?tls_max_version:string prop ->
  ?tls_min_version:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  ?upndomain:string prop ->
  ?use_token_groups:bool prop ->
  ?userattr:string prop ->
  ?userdn:string prop ->
  ?userfilter:string prop ->
  ?username_as_alias:bool prop ->
  url:string prop ->
  string ->
  t

val make :
  ?binddn:string prop ->
  ?bindpass:string prop ->
  ?case_sensitive_names:bool prop ->
  ?certificate:string prop ->
  ?client_tls_cert:string prop ->
  ?client_tls_key:string prop ->
  ?connection_timeout:float prop ->
  ?deny_null_bind:bool prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?discoverdn:bool prop ->
  ?groupattr:string prop ->
  ?groupdn:string prop ->
  ?groupfilter:string prop ->
  ?id:string prop ->
  ?insecure_tls:bool prop ->
  ?local:bool prop ->
  ?max_page_size:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?starttls:bool prop ->
  ?tls_max_version:string prop ->
  ?tls_min_version:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  ?upndomain:string prop ->
  ?use_token_groups:bool prop ->
  ?userattr:string prop ->
  ?userdn:string prop ->
  ?userfilter:string prop ->
  ?username_as_alias:bool prop ->
  url:string prop ->
  string ->
  t Tf_core.resource
