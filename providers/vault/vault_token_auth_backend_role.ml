(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_token_auth_backend_role = {
  allowed_entity_aliases : string prop list option; [@option]
  allowed_policies : string prop list option; [@option]
  allowed_policies_glob : string prop list option; [@option]
  disallowed_policies : string prop list option; [@option]
  disallowed_policies_glob : string prop list option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  orphan : bool prop option; [@option]
  path_suffix : string prop option; [@option]
  renewable : bool prop option; [@option]
  role_name : string prop;
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

let _ = fun (_ : vault_token_auth_backend_role) -> ()

let yojson_of_vault_token_auth_backend_role =
  (function
   | {
       allowed_entity_aliases = v_allowed_entity_aliases;
       allowed_policies = v_allowed_policies;
       allowed_policies_glob = v_allowed_policies_glob;
       disallowed_policies = v_disallowed_policies;
       disallowed_policies_glob = v_disallowed_policies_glob;
       id = v_id;
       namespace = v_namespace;
       orphan = v_orphan;
       path_suffix = v_path_suffix;
       renewable = v_renewable;
       role_name = v_role_name;
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
       let arg = yojson_of_prop yojson_of_string v_role_name in
       ("role_name", arg) :: bnds
     in
     let bnds =
       match v_renewable with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "renewable", arg in
         bnd :: bnds
     in
     let bnds =
       match v_path_suffix with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "path_suffix", arg in
         bnd :: bnds
     in
     let bnds =
       match v_orphan with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "orphan", arg in
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disallowed_policies_glob with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "disallowed_policies_glob", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disallowed_policies with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "disallowed_policies", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_policies_glob with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_policies_glob", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_policies with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_policies", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_entity_aliases with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_entity_aliases", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_token_auth_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_token_auth_backend_role

[@@@deriving.end]

let vault_token_auth_backend_role ?allowed_entity_aliases ?allowed_policies ?allowed_policies_glob ?disallowed_policies
  ?disallowed_policies_glob ?id ?namespace ?orphan ?path_suffix ?renewable ?token_bound_cidrs ?token_explicit_max_ttl
  ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type
  ~role_name () =
  ({
     allowed_entity_aliases;
     allowed_policies;
     allowed_policies_glob;
     disallowed_policies;
     disallowed_policies_glob;
     id;
     namespace;
     orphan;
     path_suffix;
     renewable;
     role_name;
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
    : vault_token_auth_backend_role)

type t = {
  tf_name : string;
  allowed_entity_aliases : string list prop;
  allowed_policies : string list prop;
  allowed_policies_glob : string list prop;
  disallowed_policies : string list prop;
  disallowed_policies_glob : string list prop;
  id : string prop;
  namespace : string prop;
  orphan : bool prop;
  path_suffix : string prop;
  renewable : bool prop;
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
}

let make ?allowed_entity_aliases ?allowed_policies ?allowed_policies_glob ?disallowed_policies ?disallowed_policies_glob
  ?id ?namespace ?orphan ?path_suffix ?renewable ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl
  ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ~role_name __id =
  let __type = "vault_token_auth_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_entity_aliases = Prop.computed __type __id "allowed_entity_aliases";
       allowed_policies = Prop.computed __type __id "allowed_policies";
       allowed_policies_glob = Prop.computed __type __id "allowed_policies_glob";
       disallowed_policies = Prop.computed __type __id "disallowed_policies";
       disallowed_policies_glob = Prop.computed __type __id "disallowed_policies_glob";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       orphan = Prop.computed __type __id "orphan";
       path_suffix = Prop.computed __type __id "path_suffix";
       renewable = Prop.computed __type __id "renewable";
       role_name = Prop.computed __type __id "role_name";
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
      yojson_of_vault_token_auth_backend_role
        (vault_token_auth_backend_role ?allowed_entity_aliases ?allowed_policies ?allowed_policies_glob
           ?disallowed_policies ?disallowed_policies_glob ?id ?namespace ?orphan ?path_suffix ?renewable
           ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses
           ?token_period ?token_policies ?token_ttl ?token_type ~role_name ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_entity_aliases ?allowed_policies ?allowed_policies_glob ?disallowed_policies
  ?disallowed_policies_glob ?id ?namespace ?orphan ?path_suffix ?renewable ?token_bound_cidrs ?token_explicit_max_ttl
  ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type
  ~role_name __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_entity_aliases ?allowed_policies ?allowed_policies_glob ?disallowed_policies ?disallowed_policies_glob
      ?id ?namespace ?orphan ?path_suffix ?renewable ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl
      ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ~role_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
