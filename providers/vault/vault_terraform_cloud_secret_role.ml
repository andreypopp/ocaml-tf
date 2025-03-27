(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_terraform_cloud_secret_role = {
  backend : string prop option; [@option]
  id : string prop option; [@option]
  max_ttl : float prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  organization : string prop option; [@option]
  team_id : string prop option; [@option]
  ttl : float prop option; [@option]
  user_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_terraform_cloud_secret_role) -> ()

let yojson_of_vault_terraform_cloud_secret_role =
  (function
   | {
       backend = v_backend;
       id = v_id;
       max_ttl = v_max_ttl;
       name = v_name;
       namespace = v_namespace;
       organization = v_organization;
       team_id = v_team_id;
       ttl = v_ttl;
       user_id = v_user_id;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_user_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "user_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_team_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "team_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_organization with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "organization", arg in
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
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
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
       match v_backend with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "backend", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_terraform_cloud_secret_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_terraform_cloud_secret_role

[@@@deriving.end]

let vault_terraform_cloud_secret_role ?backend ?id ?max_ttl ?namespace ?organization ?team_id ?ttl ?user_id ~name () =
  ({ backend; id; max_ttl; name; namespace; organization; team_id; ttl; user_id } : vault_terraform_cloud_secret_role)

type t = {
  tf_name : string;
  backend : string prop;
  id : string prop;
  max_ttl : float prop;
  name : string prop;
  namespace : string prop;
  organization : string prop;
  team_id : string prop;
  ttl : float prop;
  user_id : string prop;
}

let make ?backend ?id ?max_ttl ?namespace ?organization ?team_id ?ttl ?user_id ~name __id =
  let __type = "vault_terraform_cloud_secret_role" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       max_ttl = Prop.computed __type __id "max_ttl";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       organization = Prop.computed __type __id "organization";
       team_id = Prop.computed __type __id "team_id";
       ttl = Prop.computed __type __id "ttl";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_terraform_cloud_secret_role
        (vault_terraform_cloud_secret_role ?backend ?id ?max_ttl ?namespace ?organization ?team_id ?ttl ?user_id ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?id ?max_ttl ?namespace ?organization ?team_id ?ttl ?user_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?backend ?id ?max_ttl ?namespace ?organization ?team_id ?ttl ?user_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
