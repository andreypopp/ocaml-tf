(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_azure_auth_backend_role

val vault_azure_auth_backend_role :
  ?backend:string prop ->
  ?bound_group_ids:string prop list ->
  ?bound_locations:string prop list ->
  ?bound_resource_groups:string prop list ->
  ?bound_scale_sets:string prop list ->
  ?bound_service_principal_ids:string prop list ->
  ?bound_subscription_ids:string prop list ->
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
  role:string prop ->
  unit ->
  vault_azure_auth_backend_role

val yojson_of_vault_azure_auth_backend_role : vault_azure_auth_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  bound_group_ids : string list prop;
  bound_locations : string list prop;
  bound_resource_groups : string list prop;
  bound_scale_sets : string list prop;
  bound_service_principal_ids : string list prop;
  bound_subscription_ids : string list prop;
  id : string prop;
  namespace : string prop;
  role : string prop;
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
  ?bound_group_ids:string prop list ->
  ?bound_locations:string prop list ->
  ?bound_resource_groups:string prop list ->
  ?bound_scale_sets:string prop list ->
  ?bound_service_principal_ids:string prop list ->
  ?bound_subscription_ids:string prop list ->
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
  role:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?bound_group_ids:string prop list ->
  ?bound_locations:string prop list ->
  ?bound_resource_groups:string prop list ->
  ?bound_scale_sets:string prop list ->
  ?bound_service_principal_ids:string prop list ->
  ?bound_subscription_ids:string prop list ->
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
  role:string prop ->
  string ->
  t Tf_core.resource
