(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_gcp_auth_backend_role

val vault_gcp_auth_backend_role :
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
  vault_gcp_auth_backend_role

val yojson_of_vault_gcp_auth_backend_role : vault_gcp_auth_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  bound_instance_groups : string list prop;
  bound_labels : string list prop;
  bound_projects : string list prop;
  bound_regions : string list prop;
  bound_service_accounts : string list prop;
  bound_zones : string list prop;
  id : string prop;
  namespace : string prop;
  role_id : string prop;
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
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
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
