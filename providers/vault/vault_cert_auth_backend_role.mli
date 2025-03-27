(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_cert_auth_backend_role

val vault_cert_auth_backend_role :
  ?allowed_common_names:string prop list ->
  ?allowed_dns_sans:string prop list ->
  ?allowed_email_sans:string prop list ->
  ?allowed_names:string prop list ->
  ?allowed_organizational_units:string prop list ->
  ?allowed_uri_sans:string prop list ->
  ?backend:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?ocsp_ca_certificates:string prop ->
  ?ocsp_enabled:bool prop ->
  ?ocsp_fail_open:bool prop ->
  ?ocsp_query_all_servers:bool prop ->
  ?ocsp_servers_override:string prop list ->
  ?required_extensions:string prop list ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  certificate:string prop ->
  name:string prop ->
  unit ->
  vault_cert_auth_backend_role

val yojson_of_vault_cert_auth_backend_role : vault_cert_auth_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_common_names : string list prop;
  allowed_dns_sans : string list prop;
  allowed_email_sans : string list prop;
  allowed_names : string list prop;
  allowed_organizational_units : string list prop;
  allowed_uri_sans : string list prop;
  backend : string prop;
  certificate : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  ocsp_ca_certificates : string prop;
  ocsp_enabled : bool prop;
  ocsp_fail_open : bool prop;
  ocsp_query_all_servers : bool prop;
  ocsp_servers_override : string list prop;
  required_extensions : string list prop;
  token_bound_cidrs : string list prop;
  token_explicit_max_ttl : float prop;
  token_max_ttl : float prop;
  token_no_default_policy : bool prop;
  token_num_uses : float prop;
  token_period : float prop;
  token_policies : string list prop;
  token_ttl : float prop;
  token_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_common_names:string prop list ->
  ?allowed_dns_sans:string prop list ->
  ?allowed_email_sans:string prop list ->
  ?allowed_names:string prop list ->
  ?allowed_organizational_units:string prop list ->
  ?allowed_uri_sans:string prop list ->
  ?backend:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?ocsp_ca_certificates:string prop ->
  ?ocsp_enabled:bool prop ->
  ?ocsp_fail_open:bool prop ->
  ?ocsp_query_all_servers:bool prop ->
  ?ocsp_servers_override:string prop list ->
  ?required_extensions:string prop list ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  certificate:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?allowed_common_names:string prop list ->
  ?allowed_dns_sans:string prop list ->
  ?allowed_email_sans:string prop list ->
  ?allowed_names:string prop list ->
  ?allowed_organizational_units:string prop list ->
  ?allowed_uri_sans:string prop list ->
  ?backend:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?ocsp_ca_certificates:string prop ->
  ?ocsp_enabled:bool prop ->
  ?ocsp_fail_open:bool prop ->
  ?ocsp_query_all_servers:bool prop ->
  ?ocsp_servers_override:string prop list ->
  ?required_extensions:string prop list ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  certificate:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
