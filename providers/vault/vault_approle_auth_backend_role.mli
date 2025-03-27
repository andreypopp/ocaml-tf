(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_approle_auth_backend_role

val vault_approle_auth_backend_role :
  ?backend:string prop ->
  ?bind_secret_id:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?role_id:string prop ->
  ?secret_id_bound_cidrs:string prop list ->
  ?secret_id_num_uses:float prop ->
  ?secret_id_ttl:float prop ->
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
  vault_approle_auth_backend_role

val yojson_of_vault_approle_auth_backend_role : vault_approle_auth_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  bind_secret_id : bool prop;
  id : string prop;
  namespace : string prop;
  role_id : string prop;
  role_name : string prop;
  secret_id_bound_cidrs : string list prop;
  secret_id_num_uses : float prop;
  secret_id_ttl : float prop;
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
  ?backend:string prop ->
  ?bind_secret_id:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?role_id:string prop ->
  ?secret_id_bound_cidrs:string prop list ->
  ?secret_id_num_uses:float prop ->
  ?secret_id_ttl:float prop ->
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
  ?backend:string prop ->
  ?bind_secret_id:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?role_id:string prop ->
  ?secret_id_bound_cidrs:string prop list ->
  ?secret_id_num_uses:float prop ->
  ?secret_id_ttl:float prop ->
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
