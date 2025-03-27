(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_saml_auth_backend_role = {
  bound_attributes : string prop Tf_core.assoc option; [@option]
  bound_attributes_type : string prop option; [@option]
  bound_subjects : string prop list option; [@option]
  bound_subjects_type : string prop option; [@option]
  groups_attribute : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  path : string prop;
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

let _ = fun (_ : vault_saml_auth_backend_role) -> ()

let yojson_of_vault_saml_auth_backend_role =
  (function
   | {
       bound_attributes = v_bound_attributes;
       bound_attributes_type = v_bound_attributes_type;
       bound_subjects = v_bound_subjects;
       bound_subjects_type = v_bound_subjects_type;
       groups_attribute = v_groups_attribute;
       id = v_id;
       name = v_name;
       namespace = v_namespace;
       path = v_path;
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
       let arg = yojson_of_prop yojson_of_string v_path in
       ("path", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
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
       match v_groups_attribute with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "groups_attribute", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_subjects_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "bound_subjects_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_subjects with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_subjects", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_attributes_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "bound_attributes_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bound_attributes with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "bound_attributes", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_saml_auth_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_saml_auth_backend_role

[@@@deriving.end]

let vault_saml_auth_backend_role ?bound_attributes ?bound_attributes_type ?bound_subjects ?bound_subjects_type
  ?groups_attribute ?id ?namespace ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy
  ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ~name ~path () =
  ({
     bound_attributes;
     bound_attributes_type;
     bound_subjects;
     bound_subjects_type;
     groups_attribute;
     id;
     name;
     namespace;
     path;
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
    : vault_saml_auth_backend_role)

type t = {
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

let make ?bound_attributes ?bound_attributes_type ?bound_subjects ?bound_subjects_type ?groups_attribute ?id ?namespace
  ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period
  ?token_policies ?token_ttl ?token_type ~name ~path __id =
  let __type = "vault_saml_auth_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       bound_attributes = Prop.computed __type __id "bound_attributes";
       bound_attributes_type = Prop.computed __type __id "bound_attributes_type";
       bound_subjects = Prop.computed __type __id "bound_subjects";
       bound_subjects_type = Prop.computed __type __id "bound_subjects_type";
       groups_attribute = Prop.computed __type __id "groups_attribute";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
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
      yojson_of_vault_saml_auth_backend_role
        (vault_saml_auth_backend_role ?bound_attributes ?bound_attributes_type ?bound_subjects ?bound_subjects_type
           ?groups_attribute ?id ?namespace ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl
           ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ~name ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?bound_attributes ?bound_attributes_type ?bound_subjects ?bound_subjects_type ?groups_attribute
  ?id ?namespace ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses
  ?token_period ?token_policies ?token_ttl ?token_type ~name ~path __id =
  let (r : _ Tf_core.resource) =
    make ?bound_attributes ?bound_attributes_type ?bound_subjects ?bound_subjects_type ?groups_attribute ?id ?namespace
      ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period
      ?token_policies ?token_ttl ?token_type ~name ~path __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
