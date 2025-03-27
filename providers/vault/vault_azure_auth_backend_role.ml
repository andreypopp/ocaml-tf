(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_azure_auth_backend_role = {
  backend : string prop option; [@option]
  bound_group_ids : string prop list option; [@option]
  bound_locations : string prop list option; [@option]
  bound_resource_groups : string prop list option; [@option]
  bound_scale_sets : string prop list option; [@option]
  bound_service_principal_ids : string prop list option; [@option]
  bound_subscription_ids : string prop list option; [@option]
  id : string prop option; [@option]
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
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_azure_auth_backend_role) -> ()

let yojson_of_vault_azure_auth_backend_role =
  (function
   | {
       backend = v_backend;
       bound_group_ids = v_bound_group_ids;
       bound_locations = v_bound_locations;
       bound_resource_groups = v_bound_resource_groups;
       bound_scale_sets = v_bound_scale_sets;
       bound_service_principal_ids = v_bound_service_principal_ids;
       bound_subscription_ids = v_bound_subscription_ids;
       id = v_id;
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_subscription_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_subscription_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_service_principal_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_service_principal_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_scale_sets with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_scale_sets", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_resource_groups with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_resource_groups", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_locations with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_locations", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_group_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_group_ids", arg in
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
     `Assoc bnds
    : vault_azure_auth_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_azure_auth_backend_role

[@@@deriving.end]

let vault_azure_auth_backend_role ?backend ?bound_group_ids ?bound_locations ?bound_resource_groups ?bound_scale_sets
  ?bound_service_principal_ids ?bound_subscription_ids ?id ?namespace ?token_bound_cidrs ?token_explicit_max_ttl
  ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ~role ()
    =
  ({
     backend;
     bound_group_ids;
     bound_locations;
     bound_resource_groups;
     bound_scale_sets;
     bound_service_principal_ids;
     bound_subscription_ids;
     id;
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
   }
    : vault_azure_auth_backend_role)

type t = {
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

let make ?backend ?bound_group_ids ?bound_locations ?bound_resource_groups ?bound_scale_sets
  ?bound_service_principal_ids ?bound_subscription_ids ?id ?namespace ?token_bound_cidrs ?token_explicit_max_ttl
  ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ~role
  __id =
  let __type = "vault_azure_auth_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       bound_group_ids = Prop.computed __type __id "bound_group_ids";
       bound_locations = Prop.computed __type __id "bound_locations";
       bound_resource_groups = Prop.computed __type __id "bound_resource_groups";
       bound_scale_sets = Prop.computed __type __id "bound_scale_sets";
       bound_service_principal_ids = Prop.computed __type __id "bound_service_principal_ids";
       bound_subscription_ids = Prop.computed __type __id "bound_subscription_ids";
       id = Prop.computed __type __id "id";
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
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_azure_auth_backend_role
        (vault_azure_auth_backend_role ?backend ?bound_group_ids ?bound_locations ?bound_resource_groups
           ?bound_scale_sets ?bound_service_principal_ids ?bound_subscription_ids ?id ?namespace ?token_bound_cidrs
           ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies
           ?token_ttl ?token_type ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?bound_group_ids ?bound_locations ?bound_resource_groups ?bound_scale_sets
  ?bound_service_principal_ids ?bound_subscription_ids ?id ?namespace ?token_bound_cidrs ?token_explicit_max_ttl
  ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ~role
  __id =
  let (r : _ Tf_core.resource) =
    make ?backend ?bound_group_ids ?bound_locations ?bound_resource_groups ?bound_scale_sets
      ?bound_service_principal_ids ?bound_subscription_ids ?id ?namespace ?token_bound_cidrs ?token_explicit_max_ttl
      ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ~role
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
