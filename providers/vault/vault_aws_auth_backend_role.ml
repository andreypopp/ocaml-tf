(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_aws_auth_backend_role = {
  allow_instance_migration : bool prop option; [@option]
  auth_type : string prop option; [@option]
  backend : string prop option; [@option]
  bound_account_ids : string prop list option; [@option]
  bound_ami_ids : string prop list option; [@option]
  bound_ec2_instance_ids : string prop list option; [@option]
  bound_iam_instance_profile_arns : string prop list option; [@option]
  bound_iam_principal_arns : string prop list option; [@option]
  bound_iam_role_arns : string prop list option; [@option]
  bound_regions : string prop list option; [@option]
  bound_subnet_ids : string prop list option; [@option]
  bound_vpc_ids : string prop list option; [@option]
  disallow_reauthentication : bool prop option; [@option]
  id : string prop option; [@option]
  inferred_aws_region : string prop option; [@option]
  inferred_entity_type : string prop option; [@option]
  namespace : string prop option; [@option]
  resolve_aws_unique_ids : bool prop option; [@option]
  role : string prop;
  role_tag : string prop option; [@option]
  token_bound_cidrs : string prop list option; [@option]
  token_explicit_max_ttl : float prop option; [@option]
  token_max_ttl : float prop option; [@option]
  token_no_default_policy : bool prop option; [@option]
  token_num_uses : float prop option; [@option]
  token_period : float prop option; [@option]
  token_policies : string prop list option; [@option]
  token_ttl : float prop option; [@option]
  token_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_aws_auth_backend_role) -> ()

let yojson_of_vault_aws_auth_backend_role =
  (function
   | {
       allow_instance_migration = v_allow_instance_migration;
       auth_type = v_auth_type;
       backend = v_backend;
       bound_account_ids = v_bound_account_ids;
       bound_ami_ids = v_bound_ami_ids;
       bound_ec2_instance_ids = v_bound_ec2_instance_ids;
       bound_iam_instance_profile_arns = v_bound_iam_instance_profile_arns;
       bound_iam_principal_arns = v_bound_iam_principal_arns;
       bound_iam_role_arns = v_bound_iam_role_arns;
       bound_regions = v_bound_regions;
       bound_subnet_ids = v_bound_subnet_ids;
       bound_vpc_ids = v_bound_vpc_ids;
       disallow_reauthentication = v_disallow_reauthentication;
       id = v_id;
       inferred_aws_region = v_inferred_aws_region;
       inferred_entity_type = v_inferred_entity_type;
       namespace = v_namespace;
       resolve_aws_unique_ids = v_resolve_aws_unique_ids;
       role = v_role;
       role_tag = v_role_tag;
       token_bound_cidrs = v_token_bound_cidrs;
       token_explicit_max_ttl = v_token_explicit_max_ttl;
       token_max_ttl = v_token_max_ttl;
       token_no_default_policy = v_token_no_default_policy;
       token_num_uses = v_token_num_uses;
       token_period = v_token_period;
       token_policies = v_token_policies;
       token_ttl = v_token_ttl;
       token_type = v_token_type;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_token_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "token_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_policies with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "token_policies", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_num_uses with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_num_uses", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_no_default_policy with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "token_no_default_policy", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_max_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_explicit_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_explicit_max_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_bound_cidrs with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "token_bound_cidrs", arg in
         bnd :: bnds
     in
     let bnds =
       match v_role_tag with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "role_tag", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
     in
     let bnds =
       match v_resolve_aws_unique_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "resolve_aws_unique_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_inferred_entity_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "inferred_entity_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_inferred_aws_region with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "inferred_aws_region", arg in
         bnd :: bnds
     in
     let bnds =
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disallow_reauthentication with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disallow_reauthentication", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_vpc_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_vpc_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_subnet_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_subnet_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_regions with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_regions", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_iam_role_arns with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_iam_role_arns", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_iam_principal_arns with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_iam_principal_arns", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_iam_instance_profile_arns with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_iam_instance_profile_arns", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_ec2_instance_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_ec2_instance_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_ami_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_ami_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_account_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_account_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_backend with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "backend", arg in
         bnd :: bnds
     in
     let bnds =
       match v_auth_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "auth_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_instance_migration with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_instance_migration", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_aws_auth_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_aws_auth_backend_role

[@@@deriving.end]

let vault_aws_auth_backend_role ?allow_instance_migration ?auth_type ?backend ?bound_account_ids ?bound_ami_ids
  ?bound_ec2_instance_ids ?bound_iam_instance_profile_arns ?bound_iam_principal_arns ?bound_iam_role_arns ?bound_regions
  ?bound_subnet_ids ?bound_vpc_ids ?disallow_reauthentication ?id ?inferred_aws_region ?inferred_entity_type ?namespace
  ?resolve_aws_unique_ids ?role_tag ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy
  ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ~role () =
  ({
     allow_instance_migration;
     auth_type;
     backend;
     bound_account_ids;
     bound_ami_ids;
     bound_ec2_instance_ids;
     bound_iam_instance_profile_arns;
     bound_iam_principal_arns;
     bound_iam_role_arns;
     bound_regions;
     bound_subnet_ids;
     bound_vpc_ids;
     disallow_reauthentication;
     id;
     inferred_aws_region;
     inferred_entity_type;
     namespace;
     resolve_aws_unique_ids;
     role;
     role_tag;
     token_bound_cidrs;
     token_explicit_max_ttl;
     token_max_ttl;
     token_no_default_policy;
     token_num_uses;
     token_period;
     token_policies;
     token_ttl;
     token_type;
   }
    : vault_aws_auth_backend_role)

type t = {
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

let make ?allow_instance_migration ?auth_type ?backend ?bound_account_ids ?bound_ami_ids ?bound_ec2_instance_ids
  ?bound_iam_instance_profile_arns ?bound_iam_principal_arns ?bound_iam_role_arns ?bound_regions ?bound_subnet_ids
  ?bound_vpc_ids ?disallow_reauthentication ?id ?inferred_aws_region ?inferred_entity_type ?namespace
  ?resolve_aws_unique_ids ?role_tag ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy
  ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ~role __id =
  let __type = "vault_aws_auth_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       allow_instance_migration = Prop.computed __type __id "allow_instance_migration";
       auth_type = Prop.computed __type __id "auth_type";
       backend = Prop.computed __type __id "backend";
       bound_account_ids = Prop.computed __type __id "bound_account_ids";
       bound_ami_ids = Prop.computed __type __id "bound_ami_ids";
       bound_ec2_instance_ids = Prop.computed __type __id "bound_ec2_instance_ids";
       bound_iam_instance_profile_arns = Prop.computed __type __id "bound_iam_instance_profile_arns";
       bound_iam_principal_arns = Prop.computed __type __id "bound_iam_principal_arns";
       bound_iam_role_arns = Prop.computed __type __id "bound_iam_role_arns";
       bound_regions = Prop.computed __type __id "bound_regions";
       bound_subnet_ids = Prop.computed __type __id "bound_subnet_ids";
       bound_vpc_ids = Prop.computed __type __id "bound_vpc_ids";
       disallow_reauthentication = Prop.computed __type __id "disallow_reauthentication";
       id = Prop.computed __type __id "id";
       inferred_aws_region = Prop.computed __type __id "inferred_aws_region";
       inferred_entity_type = Prop.computed __type __id "inferred_entity_type";
       namespace = Prop.computed __type __id "namespace";
       resolve_aws_unique_ids = Prop.computed __type __id "resolve_aws_unique_ids";
       role = Prop.computed __type __id "role";
       role_id = Prop.computed __type __id "role_id";
       role_tag = Prop.computed __type __id "role_tag";
       token_bound_cidrs = Prop.computed __type __id "token_bound_cidrs";
       token_explicit_max_ttl = Prop.computed __type __id "token_explicit_max_ttl";
       token_max_ttl = Prop.computed __type __id "token_max_ttl";
       token_no_default_policy = Prop.computed __type __id "token_no_default_policy";
       token_num_uses = Prop.computed __type __id "token_num_uses";
       token_period = Prop.computed __type __id "token_period";
       token_policies = Prop.computed __type __id "token_policies";
       token_ttl = Prop.computed __type __id "token_ttl";
       token_type = Prop.computed __type __id "token_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_aws_auth_backend_role
        (vault_aws_auth_backend_role ?allow_instance_migration ?auth_type ?backend ?bound_account_ids ?bound_ami_ids
           ?bound_ec2_instance_ids ?bound_iam_instance_profile_arns ?bound_iam_principal_arns ?bound_iam_role_arns
           ?bound_regions ?bound_subnet_ids ?bound_vpc_ids ?disallow_reauthentication ?id ?inferred_aws_region
           ?inferred_entity_type ?namespace ?resolve_aws_unique_ids ?role_tag ?token_bound_cidrs ?token_explicit_max_ttl
           ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type
           ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_instance_migration ?auth_type ?backend ?bound_account_ids ?bound_ami_ids
  ?bound_ec2_instance_ids ?bound_iam_instance_profile_arns ?bound_iam_principal_arns ?bound_iam_role_arns ?bound_regions
  ?bound_subnet_ids ?bound_vpc_ids ?disallow_reauthentication ?id ?inferred_aws_region ?inferred_entity_type ?namespace
  ?resolve_aws_unique_ids ?role_tag ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy
  ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ~role __id =
  let (r : _ Tf_core.resource) =
    make ?allow_instance_migration ?auth_type ?backend ?bound_account_ids ?bound_ami_ids ?bound_ec2_instance_ids
      ?bound_iam_instance_profile_arns ?bound_iam_principal_arns ?bound_iam_role_arns ?bound_regions ?bound_subnet_ids
      ?bound_vpc_ids ?disallow_reauthentication ?id ?inferred_aws_region ?inferred_entity_type ?namespace
      ?resolve_aws_unique_ids ?role_tag ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl
      ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ~role __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
