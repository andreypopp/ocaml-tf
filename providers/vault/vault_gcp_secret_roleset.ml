(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type binding = {
  resource : string prop;
  roles : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : binding) -> ()

let yojson_of_binding =
  (function
   | { resource = v_resource; roles = v_roles } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_roles then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_roles in
         let bnd = "roles", arg in
         bnd :: bnds)
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_resource in
       ("resource", arg) :: bnds
     in
     `Assoc bnds
    : binding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_binding

[@@@deriving.end]

type vault_gcp_secret_roleset = {
  backend : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  project : string prop;
  roleset : string prop;
  secret_type : string prop option; [@option]
  token_scopes : string prop list option; [@option]
  binding : binding list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_gcp_secret_roleset) -> ()

let yojson_of_vault_gcp_secret_roleset =
  (function
   | {
       backend = v_backend;
       id = v_id;
       namespace = v_namespace;
       project = v_project;
       roleset = v_roleset;
       secret_type = v_secret_type;
       token_scopes = v_token_scopes;
       binding = v_binding;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_binding then bnds
       else (
         let arg = (yojson_of_list yojson_of_binding) v_binding in
         let bnd = "binding", arg in
         bnd :: bnds)
     in
     let bnds =
       match v_token_scopes with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "token_scopes", arg in
         bnd :: bnds
     in
     let bnds =
       match v_secret_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "secret_type", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_roleset in
       ("roleset", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_project in
       ("project", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_gcp_secret_roleset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_gcp_secret_roleset

[@@@deriving.end]

let binding ~resource ~roles () = ({ resource; roles } : binding)

let vault_gcp_secret_roleset ?id ?namespace ?secret_type ?token_scopes ~backend ~project ~roleset ~binding () =
  ({ backend; id; namespace; project; roleset; secret_type; token_scopes; binding } : vault_gcp_secret_roleset)

type t = {
  tf_name : string;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  project : string prop;
  roleset : string prop;
  secret_type : string prop;
  service_account_email : string prop;
  token_scopes : string list prop;
}

let make ?id ?namespace ?secret_type ?token_scopes ~backend ~project ~roleset ~binding __id =
  let __type = "vault_gcp_secret_roleset" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       project = Prop.computed __type __id "project";
       roleset = Prop.computed __type __id "roleset";
       secret_type = Prop.computed __type __id "secret_type";
       service_account_email = Prop.computed __type __id "service_account_email";
       token_scopes = Prop.computed __type __id "token_scopes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_gcp_secret_roleset
        (vault_gcp_secret_roleset ?id ?namespace ?secret_type ?token_scopes ~backend ~project ~roleset ~binding ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ?secret_type ?token_scopes ~backend ~project ~roleset ~binding __id =
  let (r : _ Tf_core.resource) =
    make ?id ?namespace ?secret_type ?token_scopes ~backend ~project ~roleset ~binding __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
