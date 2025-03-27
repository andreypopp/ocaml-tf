(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_jwt_auth_backend_role = {
  allowed_redirect_uris : string prop list option; [@option]
  backend : string prop option; [@option]
  bound_audiences : string prop list option; [@option]
  bound_claims : string prop Tf_core.assoc option; [@option]
  bound_claims_type : string prop option; [@option]
  bound_subject : string prop option; [@option]
  claim_mappings : string prop Tf_core.assoc option; [@option]
  clock_skew_leeway : float prop option; [@option]
  disable_bound_claims_parsing : bool prop option; [@option]
  expiration_leeway : float prop option; [@option]
  groups_claim : string prop option; [@option]
  id : string prop option; [@option]
  max_age : float prop option; [@option]
  namespace : string prop option; [@option]
  not_before_leeway : float prop option; [@option]
  oidc_scopes : string prop list option; [@option]
  role_name : string prop;
  role_type : string prop option; [@option]
  token_bound_cidrs : string prop list option; [@option]
  token_explicit_max_ttl : float prop option; [@option]
  token_max_ttl : float prop option; [@option]
  token_no_default_policy : bool prop option; [@option]
  token_num_uses : float prop option; [@option]
  token_period : float prop option; [@option]
  token_policies : string prop list option; [@option]
  token_ttl : float prop option; [@option]
  token_type : string prop option; [@option]
  user_claim : string prop;
  user_claim_json_pointer : bool prop option; [@option]
  verbose_oidc_logging : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_jwt_auth_backend_role) -> ()

let yojson_of_vault_jwt_auth_backend_role =
  (function
   | {
       allowed_redirect_uris = v_allowed_redirect_uris;
       backend = v_backend;
       bound_audiences = v_bound_audiences;
       bound_claims = v_bound_claims;
       bound_claims_type = v_bound_claims_type;
       bound_subject = v_bound_subject;
       claim_mappings = v_claim_mappings;
       clock_skew_leeway = v_clock_skew_leeway;
       disable_bound_claims_parsing = v_disable_bound_claims_parsing;
       expiration_leeway = v_expiration_leeway;
       groups_claim = v_groups_claim;
       id = v_id;
       max_age = v_max_age;
       namespace = v_namespace;
       not_before_leeway = v_not_before_leeway;
       oidc_scopes = v_oidc_scopes;
       role_name = v_role_name;
       role_type = v_role_type;
       token_bound_cidrs = v_token_bound_cidrs;
       token_explicit_max_ttl = v_token_explicit_max_ttl;
       token_max_ttl = v_token_max_ttl;
       token_no_default_policy = v_token_no_default_policy;
       token_num_uses = v_token_num_uses;
       token_period = v_token_period;
       token_policies = v_token_policies;
       token_ttl = v_token_ttl;
       token_type = v_token_type;
       user_claim = v_user_claim;
       user_claim_json_pointer = v_user_claim_json_pointer;
       verbose_oidc_logging = v_verbose_oidc_logging;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_verbose_oidc_logging with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "verbose_oidc_logging", arg in
         bnd :: bnds
     in
     let bnds =
       match v_user_claim_json_pointer with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "user_claim_json_pointer", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_user_claim in
       ("user_claim", arg) :: bnds
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
       match v_role_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "role_type", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role_name in
       ("role_name", arg) :: bnds
     in
     let bnds =
       match v_oidc_scopes with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "oidc_scopes", arg in
         bnd :: bnds
     in
     let bnds =
       match v_not_before_leeway with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "not_before_leeway", arg in
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
       match v_max_age with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_age", arg in
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
       match v_groups_claim with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "groups_claim", arg in
         bnd :: bnds
     in
     let bnds =
       match v_expiration_leeway with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "expiration_leeway", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_bound_claims_parsing with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_bound_claims_parsing", arg in
         bnd :: bnds
     in
     let bnds =
       match v_clock_skew_leeway with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "clock_skew_leeway", arg in
         bnd :: bnds
     in
     let bnds =
       match v_claim_mappings with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "claim_mappings", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_subject with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "bound_subject", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_claims_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "bound_claims_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_claims with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_claims", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_audiences with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_audiences", arg in
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
       match v_allowed_redirect_uris with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_redirect_uris", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_jwt_auth_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_jwt_auth_backend_role

[@@@deriving.end]

let vault_jwt_auth_backend_role ?allowed_redirect_uris ?backend ?bound_audiences ?bound_claims ?bound_claims_type
  ?bound_subject ?claim_mappings ?clock_skew_leeway ?disable_bound_claims_parsing ?expiration_leeway ?groups_claim ?id
  ?max_age ?namespace ?not_before_leeway ?oidc_scopes ?role_type ?token_bound_cidrs ?token_explicit_max_ttl
  ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type
  ?user_claim_json_pointer ?verbose_oidc_logging ~role_name ~user_claim () =
  ({
     allowed_redirect_uris;
     backend;
     bound_audiences;
     bound_claims;
     bound_claims_type;
     bound_subject;
     claim_mappings;
     clock_skew_leeway;
     disable_bound_claims_parsing;
     expiration_leeway;
     groups_claim;
     id;
     max_age;
     namespace;
     not_before_leeway;
     oidc_scopes;
     role_name;
     role_type;
     token_bound_cidrs;
     token_explicit_max_ttl;
     token_max_ttl;
     token_no_default_policy;
     token_num_uses;
     token_period;
     token_policies;
     token_ttl;
     token_type;
     user_claim;
     user_claim_json_pointer;
     verbose_oidc_logging;
   }
    : vault_jwt_auth_backend_role)

type t = {
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

let make ?allowed_redirect_uris ?backend ?bound_audiences ?bound_claims ?bound_claims_type ?bound_subject
  ?claim_mappings ?clock_skew_leeway ?disable_bound_claims_parsing ?expiration_leeway ?groups_claim ?id ?max_age
  ?namespace ?not_before_leeway ?oidc_scopes ?role_type ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl
  ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ?user_claim_json_pointer
  ?verbose_oidc_logging ~role_name ~user_claim __id =
  let __type = "vault_jwt_auth_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_redirect_uris = Prop.computed __type __id "allowed_redirect_uris";
       backend = Prop.computed __type __id "backend";
       bound_audiences = Prop.computed __type __id "bound_audiences";
       bound_claims = Prop.computed __type __id "bound_claims";
       bound_claims_type = Prop.computed __type __id "bound_claims_type";
       bound_subject = Prop.computed __type __id "bound_subject";
       claim_mappings = Prop.computed __type __id "claim_mappings";
       clock_skew_leeway = Prop.computed __type __id "clock_skew_leeway";
       disable_bound_claims_parsing = Prop.computed __type __id "disable_bound_claims_parsing";
       expiration_leeway = Prop.computed __type __id "expiration_leeway";
       groups_claim = Prop.computed __type __id "groups_claim";
       id = Prop.computed __type __id "id";
       max_age = Prop.computed __type __id "max_age";
       namespace = Prop.computed __type __id "namespace";
       not_before_leeway = Prop.computed __type __id "not_before_leeway";
       oidc_scopes = Prop.computed __type __id "oidc_scopes";
       role_name = Prop.computed __type __id "role_name";
       role_type = Prop.computed __type __id "role_type";
       token_bound_cidrs = Prop.computed __type __id "token_bound_cidrs";
       token_explicit_max_ttl = Prop.computed __type __id "token_explicit_max_ttl";
       token_max_ttl = Prop.computed __type __id "token_max_ttl";
       token_no_default_policy = Prop.computed __type __id "token_no_default_policy";
       token_num_uses = Prop.computed __type __id "token_num_uses";
       token_period = Prop.computed __type __id "token_period";
       token_policies = Prop.computed __type __id "token_policies";
       token_ttl = Prop.computed __type __id "token_ttl";
       token_type = Prop.computed __type __id "token_type";
       user_claim = Prop.computed __type __id "user_claim";
       user_claim_json_pointer = Prop.computed __type __id "user_claim_json_pointer";
       verbose_oidc_logging = Prop.computed __type __id "verbose_oidc_logging";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_jwt_auth_backend_role
        (vault_jwt_auth_backend_role ?allowed_redirect_uris ?backend ?bound_audiences ?bound_claims ?bound_claims_type
           ?bound_subject ?claim_mappings ?clock_skew_leeway ?disable_bound_claims_parsing ?expiration_leeway
           ?groups_claim ?id ?max_age ?namespace ?not_before_leeway ?oidc_scopes ?role_type ?token_bound_cidrs
           ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies
           ?token_ttl ?token_type ?user_claim_json_pointer ?verbose_oidc_logging ~role_name ~user_claim ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_redirect_uris ?backend ?bound_audiences ?bound_claims ?bound_claims_type ?bound_subject
  ?claim_mappings ?clock_skew_leeway ?disable_bound_claims_parsing ?expiration_leeway ?groups_claim ?id ?max_age
  ?namespace ?not_before_leeway ?oidc_scopes ?role_type ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl
  ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ?user_claim_json_pointer
  ?verbose_oidc_logging ~role_name ~user_claim __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_redirect_uris ?backend ?bound_audiences ?bound_claims ?bound_claims_type ?bound_subject
      ?claim_mappings ?clock_skew_leeway ?disable_bound_claims_parsing ?expiration_leeway ?groups_claim ?id ?max_age
      ?namespace ?not_before_leeway ?oidc_scopes ?role_type ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl
      ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type
      ?user_claim_json_pointer ?verbose_oidc_logging ~role_name ~user_claim __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
