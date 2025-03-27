(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_kubernetes_auth_backend_role

val vault_kubernetes_auth_backend_role :
  ?audience:string prop ->
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  role_name:string prop ->
  unit ->
  vault_kubernetes_auth_backend_role

val yojson_of_vault_kubernetes_auth_backend_role : vault_kubernetes_auth_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias_name_source : string prop;
  audience : string prop;
  backend : string prop;
  bound_service_account_names : string list prop;
  bound_service_account_namespaces : string list prop;
  id : string prop;
  namespace : string prop;
  role_name : string prop;
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
  ?audience:string prop ->
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  role_name:string prop ->
  string ->
  t

val make :
  ?audience:string prop ->
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  role_name:string prop ->
  string ->
  t Tf_core.resource
