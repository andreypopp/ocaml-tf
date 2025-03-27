(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_jwt_auth_backend_role

val vault_jwt_auth_backend_role :
  ?allowed_redirect_uris:string prop list ->
  ?backend:string prop ->
  ?bound_audiences:string prop list ->
  ?bound_claims:string prop Tf_core.assoc ->
  ?bound_claims_type:string prop ->
  ?bound_subject:string prop ->
  ?claim_mappings:string prop Tf_core.assoc ->
  ?clock_skew_leeway:float prop ->
  ?disable_bound_claims_parsing:bool prop ->
  ?expiration_leeway:float prop ->
  ?groups_claim:string prop ->
  ?id:string prop ->
  ?max_age:float prop ->
  ?namespace:string prop ->
  ?not_before_leeway:float prop ->
  ?oidc_scopes:string prop list ->
  ?role_type:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  ?user_claim_json_pointer:bool prop ->
  ?verbose_oidc_logging:bool prop ->
  role_name:string prop ->
  user_claim:string prop ->
  unit ->
  vault_jwt_auth_backend_role

val yojson_of_vault_jwt_auth_backend_role : vault_jwt_auth_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_redirect_uris : string list prop;
  backend : string prop;
  bound_audiences : string list prop;
  bound_claims : string Tf_core.assoc prop;
  bound_claims_type : string prop;
  bound_subject : string prop;
  claim_mappings : string Tf_core.assoc prop;
  clock_skew_leeway : float prop;
  disable_bound_claims_parsing : bool prop;
  expiration_leeway : float prop;
  groups_claim : string prop;
  id : string prop;
  max_age : float prop;
  namespace : string prop;
  not_before_leeway : float prop;
  oidc_scopes : string list prop;
  role_name : string prop;
  role_type : string prop;
  token_bound_cidrs : string list prop;
  token_explicit_max_ttl : float prop;
  token_max_ttl : float prop;
  token_no_default_policy : bool prop;
  token_num_uses : float prop;
  token_period : float prop;
  token_policies : string list prop;
  token_ttl : float prop;
  token_type : string prop;
  user_claim : string prop;
  user_claim_json_pointer : bool prop;
  verbose_oidc_logging : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_redirect_uris:string prop list ->
  ?backend:string prop ->
  ?bound_audiences:string prop list ->
  ?bound_claims:string prop Tf_core.assoc ->
  ?bound_claims_type:string prop ->
  ?bound_subject:string prop ->
  ?claim_mappings:string prop Tf_core.assoc ->
  ?clock_skew_leeway:float prop ->
  ?disable_bound_claims_parsing:bool prop ->
  ?expiration_leeway:float prop ->
  ?groups_claim:string prop ->
  ?id:string prop ->
  ?max_age:float prop ->
  ?namespace:string prop ->
  ?not_before_leeway:float prop ->
  ?oidc_scopes:string prop list ->
  ?role_type:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  ?user_claim_json_pointer:bool prop ->
  ?verbose_oidc_logging:bool prop ->
  role_name:string prop ->
  user_claim:string prop ->
  string ->
  t

val make :
  ?allowed_redirect_uris:string prop list ->
  ?backend:string prop ->
  ?bound_audiences:string prop list ->
  ?bound_claims:string prop Tf_core.assoc ->
  ?bound_claims_type:string prop ->
  ?bound_subject:string prop ->
  ?claim_mappings:string prop Tf_core.assoc ->
  ?clock_skew_leeway:float prop ->
  ?disable_bound_claims_parsing:bool prop ->
  ?expiration_leeway:float prop ->
  ?groups_claim:string prop ->
  ?id:string prop ->
  ?max_age:float prop ->
  ?namespace:string prop ->
  ?not_before_leeway:float prop ->
  ?oidc_scopes:string prop list ->
  ?role_type:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  ?user_claim_json_pointer:bool prop ->
  ?verbose_oidc_logging:bool prop ->
  role_name:string prop ->
  user_claim:string prop ->
  string ->
  t Tf_core.resource
