(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_kubernetes_secret_backend_role = {
  allowed_kubernetes_namespace_selector : string prop option; [@option]
  allowed_kubernetes_namespaces : string prop list option; [@option]
  backend : string prop;
  extra_annotations : string prop Tf_core.assoc option; [@option]
  extra_labels : string prop Tf_core.assoc option; [@option]
  generated_role_rules : string prop option; [@option]
  id : string prop option; [@option]
  kubernetes_role_name : string prop option; [@option]
  kubernetes_role_type : string prop option; [@option]
  name : string prop;
  name_template : string prop option; [@option]
  namespace : string prop option; [@option]
  service_account_name : string prop option; [@option]
  token_default_ttl : float prop option; [@option]
  token_max_ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_kubernetes_secret_backend_role) -> ()

let yojson_of_vault_kubernetes_secret_backend_role =
  (function
   | {
       allowed_kubernetes_namespace_selector = v_allowed_kubernetes_namespace_selector;
       allowed_kubernetes_namespaces = v_allowed_kubernetes_namespaces;
       backend = v_backend;
       extra_annotations = v_extra_annotations;
       extra_labels = v_extra_labels;
       generated_role_rules = v_generated_role_rules;
       id = v_id;
       kubernetes_role_name = v_kubernetes_role_name;
       kubernetes_role_type = v_kubernetes_role_type;
       name = v_name;
       name_template = v_name_template;
       namespace = v_namespace;
       service_account_name = v_service_account_name;
       token_default_ttl = v_token_default_ttl;
       token_max_ttl = v_token_max_ttl;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_token_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_max_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_default_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_default_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_service_account_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "service_account_name", arg in
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
       match v_name_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "name_template", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_kubernetes_role_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "kubernetes_role_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_kubernetes_role_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "kubernetes_role_name", arg in
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
       match v_generated_role_rules with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "generated_role_rules", arg in
         bnd :: bnds
     in
     let bnds =
       match v_extra_labels with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "extra_labels", arg in
         bnd :: bnds
     in
     let bnds =
       match v_extra_annotations with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "extra_annotations", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     let bnds =
       match v_allowed_kubernetes_namespaces with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_kubernetes_namespaces", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_kubernetes_namespace_selector with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "allowed_kubernetes_namespace_selector", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_kubernetes_secret_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_kubernetes_secret_backend_role

[@@@deriving.end]

let vault_kubernetes_secret_backend_role ?allowed_kubernetes_namespace_selector ?allowed_kubernetes_namespaces
  ?extra_annotations ?extra_labels ?generated_role_rules ?id ?kubernetes_role_name ?kubernetes_role_type ?name_template
  ?namespace ?service_account_name ?token_default_ttl ?token_max_ttl ~backend ~name () =
  ({
     allowed_kubernetes_namespace_selector;
     allowed_kubernetes_namespaces;
     backend;
     extra_annotations;
     extra_labels;
     generated_role_rules;
     id;
     kubernetes_role_name;
     kubernetes_role_type;
     name;
     name_template;
     namespace;
     service_account_name;
     token_default_ttl;
     token_max_ttl;
   }
    : vault_kubernetes_secret_backend_role)

type t = {
  tf_name : string;
  allowed_kubernetes_namespace_selector : string prop;
  allowed_kubernetes_namespaces : string list prop;
  backend : string prop;
  extra_annotations : string Tf_core.assoc prop;
  extra_labels : string Tf_core.assoc prop;
  generated_role_rules : string prop;
  id : string prop;
  kubernetes_role_name : string prop;
  kubernetes_role_type : string prop;
  name : string prop;
  name_template : string prop;
  namespace : string prop;
  service_account_name : string prop;
  token_default_ttl : float prop;
  token_max_ttl : float prop;
}

let make ?allowed_kubernetes_namespace_selector ?allowed_kubernetes_namespaces ?extra_annotations ?extra_labels
  ?generated_role_rules ?id ?kubernetes_role_name ?kubernetes_role_type ?name_template ?namespace ?service_account_name
  ?token_default_ttl ?token_max_ttl ~backend ~name __id =
  let __type = "vault_kubernetes_secret_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_kubernetes_namespace_selector = Prop.computed __type __id "allowed_kubernetes_namespace_selector";
       allowed_kubernetes_namespaces = Prop.computed __type __id "allowed_kubernetes_namespaces";
       backend = Prop.computed __type __id "backend";
       extra_annotations = Prop.computed __type __id "extra_annotations";
       extra_labels = Prop.computed __type __id "extra_labels";
       generated_role_rules = Prop.computed __type __id "generated_role_rules";
       id = Prop.computed __type __id "id";
       kubernetes_role_name = Prop.computed __type __id "kubernetes_role_name";
       kubernetes_role_type = Prop.computed __type __id "kubernetes_role_type";
       name = Prop.computed __type __id "name";
       name_template = Prop.computed __type __id "name_template";
       namespace = Prop.computed __type __id "namespace";
       service_account_name = Prop.computed __type __id "service_account_name";
       token_default_ttl = Prop.computed __type __id "token_default_ttl";
       token_max_ttl = Prop.computed __type __id "token_max_ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_kubernetes_secret_backend_role
        (vault_kubernetes_secret_backend_role ?allowed_kubernetes_namespace_selector ?allowed_kubernetes_namespaces
           ?extra_annotations ?extra_labels ?generated_role_rules ?id ?kubernetes_role_name ?kubernetes_role_type
           ?name_template ?namespace ?service_account_name ?token_default_ttl ?token_max_ttl ~backend ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_kubernetes_namespace_selector ?allowed_kubernetes_namespaces ?extra_annotations
  ?extra_labels ?generated_role_rules ?id ?kubernetes_role_name ?kubernetes_role_type ?name_template ?namespace
  ?service_account_name ?token_default_ttl ?token_max_ttl ~backend ~name __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_kubernetes_namespace_selector ?allowed_kubernetes_namespaces ?extra_annotations ?extra_labels
      ?generated_role_rules ?id ?kubernetes_role_name ?kubernetes_role_type ?name_template ?namespace
      ?service_account_name ?token_default_ttl ?token_max_ttl ~backend ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
