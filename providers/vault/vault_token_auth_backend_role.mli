(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_token_auth_backend_role

val vault_token_auth_backend_role :
  ?allowed_entity_aliases:string prop list ->
  ?allowed_policies:string prop list ->
  ?allowed_policies_glob:string prop list ->
  ?disallowed_policies:string prop list ->
  ?disallowed_policies_glob:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?orphan:bool prop ->
  ?path_suffix:string prop ->
  ?renewable:bool prop ->
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
  vault_token_auth_backend_role

val yojson_of_vault_token_auth_backend_role : vault_token_auth_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_entity_aliases : string list prop;
  allowed_policies : string list prop;
  allowed_policies_glob : string list prop;
  disallowed_policies : string list prop;
  disallowed_policies_glob : string list prop;
  id : string prop;
  namespace : string prop;
  orphan : bool prop;
  path_suffix : string prop;
  renewable : bool prop;
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
  ?allowed_entity_aliases:string prop list ->
  ?allowed_policies:string prop list ->
  ?allowed_policies_glob:string prop list ->
  ?disallowed_policies:string prop list ->
  ?disallowed_policies_glob:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?orphan:bool prop ->
  ?path_suffix:string prop ->
  ?renewable:bool prop ->
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
  ?allowed_entity_aliases:string prop list ->
  ?allowed_policies:string prop list ->
  ?allowed_policies_glob:string prop list ->
  ?disallowed_policies:string prop list ->
  ?disallowed_policies_glob:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?orphan:bool prop ->
  ?path_suffix:string prop ->
  ?renewable:bool prop ->
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
