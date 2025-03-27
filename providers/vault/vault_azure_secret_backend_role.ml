(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azure_groups = { group_name : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : azure_groups) -> ()

let yojson_of_azure_groups =
  (function
   | { group_name = v_group_name } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_group_name in
       ("group_name", arg) :: bnds
     in
     `Assoc bnds
    : azure_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_groups

[@@@deriving.end]

type azure_roles = {
  role_id : string prop option; [@option]
  role_name : string prop option; [@option]
  scope : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_roles) -> ()

let yojson_of_azure_roles =
  (function
   | { role_id = v_role_id; role_name = v_role_name; scope = v_scope } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_scope in
       ("scope", arg) :: bnds
     in
     let bnds =
       match v_role_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "role_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_role_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "role_id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : azure_roles -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_roles

[@@@deriving.end]

type vault_azure_secret_backend_role = {
  application_object_id : string prop option; [@option]
  backend : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  max_ttl : string prop option; [@option]
  namespace : string prop option; [@option]
  permanently_delete : bool prop option; [@option]
  role : string prop;
  sign_in_audience : string prop option; [@option]
  tags : string prop list option; [@option]
  ttl : string prop option; [@option]
  azure_groups : azure_groups list; [@default []] [@yojson_drop_default Stdlib.( = )]
  azure_roles : azure_roles list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_azure_secret_backend_role) -> ()

let yojson_of_vault_azure_secret_backend_role =
  (function
   | {
       application_object_id = v_application_object_id;
       backend = v_backend;
       description = v_description;
       id = v_id;
       max_ttl = v_max_ttl;
       namespace = v_namespace;
       permanently_delete = v_permanently_delete;
       role = v_role;
       sign_in_audience = v_sign_in_audience;
       tags = v_tags;
       ttl = v_ttl;
       azure_groups = v_azure_groups;
       azure_roles = v_azure_roles;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_azure_roles then bnds
       else (
         let arg = (yojson_of_list yojson_of_azure_roles) v_azure_roles in
         let bnd = "azure_roles", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_azure_groups then bnds
       else (
         let arg = (yojson_of_list yojson_of_azure_groups) v_azure_groups in
         let bnd = "azure_groups", arg in
         bnd :: bnds)
     in
     let bnds =
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tags with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "tags", arg in
         bnd :: bnds
     in
     let bnds =
       match v_sign_in_audience with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "sign_in_audience", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
     in
     let bnds =
       match v_permanently_delete with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "permanently_delete", arg in
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
       match v_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "max_ttl", arg in
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
       match v_description with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "description", arg in
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
       match v_application_object_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "application_object_id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_azure_secret_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_azure_secret_backend_role

[@@@deriving.end]

let azure_groups ~group_name () = ({ group_name } : azure_groups)
let azure_roles ?role_id ?role_name ~scope () = ({ role_id; role_name; scope } : azure_roles)

let vault_azure_secret_backend_role ?application_object_id ?backend ?description ?id ?max_ttl ?namespace
  ?permanently_delete ?sign_in_audience ?tags ?ttl ~role ~azure_groups ~azure_roles () =
  ({
     application_object_id;
     backend;
     description;
     id;
     max_ttl;
     namespace;
     permanently_delete;
     role;
     sign_in_audience;
     tags;
     ttl;
     azure_groups;
     azure_roles;
   }
    : vault_azure_secret_backend_role)

type t = {
  tf_name : string;
  application_object_id : string prop;
  backend : string prop;
  description : string prop;
  id : string prop;
  max_ttl : string prop;
  namespace : string prop;
  permanently_delete : bool prop;
  role : string prop;
  sign_in_audience : string prop;
  tags : string list prop;
  ttl : string prop;
}

let make ?application_object_id ?backend ?description ?id ?max_ttl ?namespace ?permanently_delete ?sign_in_audience
  ?tags ?ttl ~role ~azure_groups ~azure_roles __id =
  let __type = "vault_azure_secret_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       application_object_id = Prop.computed __type __id "application_object_id";
       backend = Prop.computed __type __id "backend";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       max_ttl = Prop.computed __type __id "max_ttl";
       namespace = Prop.computed __type __id "namespace";
       permanently_delete = Prop.computed __type __id "permanently_delete";
       role = Prop.computed __type __id "role";
       sign_in_audience = Prop.computed __type __id "sign_in_audience";
       tags = Prop.computed __type __id "tags";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_azure_secret_backend_role
        (vault_azure_secret_backend_role ?application_object_id ?backend ?description ?id ?max_ttl ?namespace
           ?permanently_delete ?sign_in_audience ?tags ?ttl ~role ~azure_groups ~azure_roles ());
    attrs = __attrs;
  }

let register ?tf_module ?application_object_id ?backend ?description ?id ?max_ttl ?namespace ?permanently_delete
  ?sign_in_audience ?tags ?ttl ~role ~azure_groups ~azure_roles __id =
  let (r : _ Tf_core.resource) =
    make ?application_object_id ?backend ?description ?id ?max_ttl ?namespace ?permanently_delete ?sign_in_audience
      ?tags ?ttl ~role ~azure_groups ~azure_roles __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
