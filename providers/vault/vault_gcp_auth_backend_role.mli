(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_gcp_auth_backend_role

val vault_gcp_auth_backend_role :
  ?add_group_aliases:bool prop ->
  ?allow_gce_inference:bool prop ->
  ?backend:string prop ->
  ?bound_instance_groups:string prop list ->
  ?bound_labels:string prop list ->
  ?bound_projects:string prop list ->
  ?bound_regions:string prop list ->
  ?bound_service_accounts:string prop list ->
  ?bound_zones:string prop list ->
  ?id:string prop ->
  ?max_jwt_exp:string prop ->
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
  type_:string prop ->
  unit ->
  vault_gcp_auth_backend_role

val yojson_of_vault_gcp_auth_backend_role : vault_gcp_auth_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  add_group_aliases : bool prop;
  allow_gce_inference : bool prop;
  backend : string prop;
  bound_instance_groups : string list prop;
  bound_labels : string list prop;
  bound_projects : string list prop;
  bound_regions : string list prop;
  bound_service_accounts : string list prop;
  bound_zones : string list prop;
  id : string prop;
  max_jwt_exp : string prop;
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
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?add_group_aliases:bool prop ->
  ?allow_gce_inference:bool prop ->
  ?backend:string prop ->
  ?bound_instance_groups:string prop list ->
  ?bound_labels:string prop list ->
  ?bound_projects:string prop list ->
  ?bound_regions:string prop list ->
  ?bound_service_accounts:string prop list ->
  ?bound_zones:string prop list ->
  ?id:string prop ->
  ?max_jwt_exp:string prop ->
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
  type_:string prop ->
  string ->
  t

val make :
  ?add_group_aliases:bool prop ->
  ?allow_gce_inference:bool prop ->
  ?backend:string prop ->
  ?bound_instance_groups:string prop list ->
  ?bound_labels:string prop list ->
  ?bound_projects:string prop list ->
  ?bound_regions:string prop list ->
  ?bound_service_accounts:string prop list ->
  ?bound_zones:string prop list ->
  ?id:string prop ->
  ?max_jwt_exp:string prop ->
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
  type_:string prop ->
  string ->
  t Tf_core.resource
