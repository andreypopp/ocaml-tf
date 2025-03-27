(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_saml_auth_backend_role

val vault_saml_auth_backend_role :
  ?bound_attributes:string prop Tf_core.assoc ->
  ?bound_attributes_type:string prop ->
  ?bound_subjects:string prop list ->
  ?bound_subjects_type:string prop ->
  ?groups_attribute:string prop ->
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
  name:string prop ->
  path:string prop ->
  unit ->
  vault_saml_auth_backend_role

val yojson_of_vault_saml_auth_backend_role : vault_saml_auth_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bound_attributes : string Tf_core.assoc prop;
  bound_attributes_type : string prop;
  bound_subjects : string list prop;
  bound_subjects_type : string prop;
  groups_attribute : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
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
  ?bound_attributes:string prop Tf_core.assoc ->
  ?bound_attributes_type:string prop ->
  ?bound_subjects:string prop list ->
  ?bound_subjects_type:string prop ->
  ?groups_attribute:string prop ->
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
  name:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?bound_attributes:string prop Tf_core.assoc ->
  ?bound_attributes_type:string prop ->
  ?bound_subjects:string prop list ->
  ?bound_subjects_type:string prop ->
  ?groups_attribute:string prop ->
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
  name:string prop ->
  path:string prop ->
  string ->
  t Tf_core.resource
