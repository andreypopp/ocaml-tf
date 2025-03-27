(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_auth_backend_role

val vault_aws_auth_backend_role :
  ?allow_instance_migration:bool prop ->
  ?auth_type:string prop ->
  ?backend:string prop ->
  ?bound_account_ids:string prop list ->
  ?bound_ami_ids:string prop list ->
  ?bound_ec2_instance_ids:string prop list ->
  ?bound_iam_instance_profile_arns:string prop list ->
  ?bound_iam_principal_arns:string prop list ->
  ?bound_iam_role_arns:string prop list ->
  ?bound_regions:string prop list ->
  ?bound_subnet_ids:string prop list ->
  ?bound_vpc_ids:string prop list ->
  ?disallow_reauthentication:bool prop ->
  ?id:string prop ->
  ?inferred_aws_region:string prop ->
  ?inferred_entity_type:string prop ->
  ?namespace:string prop ->
  ?resolve_aws_unique_ids:bool prop ->
  ?role_tag:string prop ->
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
  vault_aws_auth_backend_role

val yojson_of_vault_aws_auth_backend_role : vault_aws_auth_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_instance_migration : bool prop;
  auth_type : string prop;
  backend : string prop;
  bound_account_ids : string list prop;
  bound_ami_ids : string list prop;
  bound_ec2_instance_ids : string list prop;
  bound_iam_instance_profile_arns : string list prop;
  bound_iam_principal_arns : string list prop;
  bound_iam_role_arns : string list prop;
  bound_regions : string list prop;
  bound_subnet_ids : string list prop;
  bound_vpc_ids : string list prop;
  disallow_reauthentication : bool prop;
  id : string prop;
  inferred_aws_region : string prop;
  inferred_entity_type : string prop;
  namespace : string prop;
  resolve_aws_unique_ids : bool prop;
  role : string prop;
  role_id : string prop;
  role_tag : string prop;
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
  ?allow_instance_migration:bool prop ->
  ?auth_type:string prop ->
  ?backend:string prop ->
  ?bound_account_ids:string prop list ->
  ?bound_ami_ids:string prop list ->
  ?bound_ec2_instance_ids:string prop list ->
  ?bound_iam_instance_profile_arns:string prop list ->
  ?bound_iam_principal_arns:string prop list ->
  ?bound_iam_role_arns:string prop list ->
  ?bound_regions:string prop list ->
  ?bound_subnet_ids:string prop list ->
  ?bound_vpc_ids:string prop list ->
  ?disallow_reauthentication:bool prop ->
  ?id:string prop ->
  ?inferred_aws_region:string prop ->
  ?inferred_entity_type:string prop ->
  ?namespace:string prop ->
  ?resolve_aws_unique_ids:bool prop ->
  ?role_tag:string prop ->
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
  ?allow_instance_migration:bool prop ->
  ?auth_type:string prop ->
  ?backend:string prop ->
  ?bound_account_ids:string prop list ->
  ?bound_ami_ids:string prop list ->
  ?bound_ec2_instance_ids:string prop list ->
  ?bound_iam_instance_profile_arns:string prop list ->
  ?bound_iam_principal_arns:string prop list ->
  ?bound_iam_role_arns:string prop list ->
  ?bound_regions:string prop list ->
  ?bound_subnet_ids:string prop list ->
  ?bound_vpc_ids:string prop list ->
  ?disallow_reauthentication:bool prop ->
  ?id:string prop ->
  ?inferred_aws_region:string prop ->
  ?inferred_entity_type:string prop ->
  ?namespace:string prop ->
  ?resolve_aws_unique_ids:bool prop ->
  ?role_tag:string prop ->
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
