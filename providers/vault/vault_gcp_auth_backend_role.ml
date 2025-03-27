(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_gcp_auth_backend_role = {
  add_group_aliases : bool prop option; [@option]
  allow_gce_inference : bool prop option; [@option]
  backend : string prop option; [@option]
  bound_instance_groups : string prop list option; [@option]
  bound_labels : string prop list option; [@option]
  bound_projects : string prop list option; [@option]
  bound_regions : string prop list option; [@option]
  bound_service_accounts : string prop list option; [@option]
  bound_zones : string prop list option; [@option]
  id : string prop option; [@option]
  max_jwt_exp : string prop option; [@option]
  namespace : string prop option; [@option]
  role : string prop;
  token_bound_cidrs : string prop list option; [@option]
  token_explicit_max_ttl : float prop option; [@option]
  token_max_ttl : float prop option; [@option]
  token_no_default_policy : bool prop option; [@option]
  token_num_uses : float prop option; [@option]
  token_period : float prop option; [@option]
  token_policies : string prop list option; [@option]
  token_ttl : float prop option; [@option]
  token_type : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_gcp_auth_backend_role) -> ()

let yojson_of_vault_gcp_auth_backend_role =
  (function
   | {
       add_group_aliases = v_add_group_aliases;
       allow_gce_inference = v_allow_gce_inference;
       backend = v_backend;
       bound_instance_groups = v_bound_instance_groups;
       bound_labels = v_bound_labels;
       bound_projects = v_bound_projects;
       bound_regions = v_bound_regions;
       bound_service_accounts = v_bound_service_accounts;
       bound_zones = v_bound_zones;
       id = v_id;
       max_jwt_exp = v_max_jwt_exp;
       namespace = v_namespace;
       role = v_role;
       token_bound_cidrs = v_token_bound_cidrs;
       token_explicit_max_ttl = v_token_explicit_max_ttl;
       token_max_ttl = v_token_max_ttl;
       token_no_default_policy = v_token_no_default_policy;
       token_num_uses = v_token_num_uses;
       token_period = v_token_period;
       token_policies = v_token_policies;
       token_ttl = v_token_ttl;
       token_type = v_token_type;
       type_ = v_type_;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_type_ in
       ("type", arg) :: bnds
     in
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
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
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
       match v_max_jwt_exp with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "max_jwt_exp", arg in
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
       match v_bound_zones with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_zones", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_service_accounts with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_service_accounts", arg in
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
       match v_bound_projects with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_projects", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_labels with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_labels", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_instance_groups with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_instance_groups", arg in
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
       match v_allow_gce_inference with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_gce_inference", arg in
         bnd :: bnds
     in
     let bnds =
       match v_add_group_aliases with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "add_group_aliases", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_gcp_auth_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_gcp_auth_backend_role

[@@@deriving.end]

let vault_gcp_auth_backend_role ?add_group_aliases ?allow_gce_inference ?backend ?bound_instance_groups ?bound_labels
  ?bound_projects ?bound_regions ?bound_service_accounts ?bound_zones ?id ?max_jwt_exp ?namespace ?token_bound_cidrs
  ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies
  ?token_ttl ?token_type ~role ~type_ () =
  ({
     add_group_aliases;
     allow_gce_inference;
     backend;
     bound_instance_groups;
     bound_labels;
     bound_projects;
     bound_regions;
     bound_service_accounts;
     bound_zones;
     id;
     max_jwt_exp;
     namespace;
     role;
     token_bound_cidrs;
     token_explicit_max_ttl;
     token_max_ttl;
     token_no_default_policy;
     token_num_uses;
     token_period;
     token_policies;
     token_ttl;
     token_type;
     type_;
   }
    : vault_gcp_auth_backend_role)

type t = {
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

let make ?add_group_aliases ?allow_gce_inference ?backend ?bound_instance_groups ?bound_labels ?bound_projects
  ?bound_regions ?bound_service_accounts ?bound_zones ?id ?max_jwt_exp ?namespace ?token_bound_cidrs
  ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies
  ?token_ttl ?token_type ~role ~type_ __id =
  let __type = "vault_gcp_auth_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       add_group_aliases = Prop.computed __type __id "add_group_aliases";
       allow_gce_inference = Prop.computed __type __id "allow_gce_inference";
       backend = Prop.computed __type __id "backend";
       bound_instance_groups = Prop.computed __type __id "bound_instance_groups";
       bound_labels = Prop.computed __type __id "bound_labels";
       bound_projects = Prop.computed __type __id "bound_projects";
       bound_regions = Prop.computed __type __id "bound_regions";
       bound_service_accounts = Prop.computed __type __id "bound_service_accounts";
       bound_zones = Prop.computed __type __id "bound_zones";
       id = Prop.computed __type __id "id";
       max_jwt_exp = Prop.computed __type __id "max_jwt_exp";
       namespace = Prop.computed __type __id "namespace";
       role = Prop.computed __type __id "role";
       token_bound_cidrs = Prop.computed __type __id "token_bound_cidrs";
       token_explicit_max_ttl = Prop.computed __type __id "token_explicit_max_ttl";
       token_max_ttl = Prop.computed __type __id "token_max_ttl";
       token_no_default_policy = Prop.computed __type __id "token_no_default_policy";
       token_num_uses = Prop.computed __type __id "token_num_uses";
       token_period = Prop.computed __type __id "token_period";
       token_policies = Prop.computed __type __id "token_policies";
       token_ttl = Prop.computed __type __id "token_ttl";
       token_type = Prop.computed __type __id "token_type";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_gcp_auth_backend_role
        (vault_gcp_auth_backend_role ?add_group_aliases ?allow_gce_inference ?backend ?bound_instance_groups
           ?bound_labels ?bound_projects ?bound_regions ?bound_service_accounts ?bound_zones ?id ?max_jwt_exp ?namespace
           ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses
           ?token_period ?token_policies ?token_ttl ?token_type ~role ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?add_group_aliases ?allow_gce_inference ?backend ?bound_instance_groups ?bound_labels
  ?bound_projects ?bound_regions ?bound_service_accounts ?bound_zones ?id ?max_jwt_exp ?namespace ?token_bound_cidrs
  ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies
  ?token_ttl ?token_type ~role ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?add_group_aliases ?allow_gce_inference ?backend ?bound_instance_groups ?bound_labels ?bound_projects
      ?bound_regions ?bound_service_accounts ?bound_zones ?id ?max_jwt_exp ?namespace ?token_bound_cidrs
      ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies
      ?token_ttl ?token_type ~role ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
