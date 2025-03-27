(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_secrets_sync_vercel_destination = {
  access_token : string prop;
  deployment_environments : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  granularity : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  project_id : string prop;
  secret_name_template : string prop option; [@option]
  team_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_secrets_sync_vercel_destination) -> ()

let yojson_of_vault_secrets_sync_vercel_destination =
  (function
   | {
       access_token = v_access_token;
       deployment_environments = v_deployment_environments;
       granularity = v_granularity;
       id = v_id;
       name = v_name;
       namespace = v_namespace;
       project_id = v_project_id;
       secret_name_template = v_secret_name_template;
       team_id = v_team_id;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_team_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "team_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_secret_name_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "secret_name_template", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_project_id in
       ("project_id", arg) :: bnds
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
       match v_granularity with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "granularity", arg in
         bnd :: bnds
     in
     let bnds =
       if Stdlib.( = ) [] v_deployment_environments then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_deployment_environments in
         let bnd = "deployment_environments", arg in
         bnd :: bnds)
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_access_token in
       ("access_token", arg) :: bnds
     in
     `Assoc bnds
    : vault_secrets_sync_vercel_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_secrets_sync_vercel_destination

[@@@deriving.end]

let vault_secrets_sync_vercel_destination ?granularity ?id ?namespace ?secret_name_template ?team_id ~access_token
  ~deployment_environments ~name ~project_id () =
  ({
     access_token;
     deployment_environments;
     granularity;
     id;
     name;
     namespace;
     project_id;
     secret_name_template;
     team_id;
   }
    : vault_secrets_sync_vercel_destination)

type t = {
  tf_name : string;
  access_token : string prop;
  deployment_environments : string list prop;
  granularity : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  project_id : string prop;
  secret_name_template : string prop;
  team_id : string prop;
  type_ : string prop;
}

let make ?granularity ?id ?namespace ?secret_name_template ?team_id ~access_token ~deployment_environments ~name
  ~project_id __id =
  let __type = "vault_secrets_sync_vercel_destination" in
  let __attrs =
    ({
       tf_name = __id;
       access_token = Prop.computed __type __id "access_token";
       deployment_environments = Prop.computed __type __id "deployment_environments";
       granularity = Prop.computed __type __id "granularity";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       project_id = Prop.computed __type __id "project_id";
       secret_name_template = Prop.computed __type __id "secret_name_template";
       team_id = Prop.computed __type __id "team_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_secrets_sync_vercel_destination
        (vault_secrets_sync_vercel_destination ?granularity ?id ?namespace ?secret_name_template ?team_id ~access_token
           ~deployment_environments ~name ~project_id ());
    attrs = __attrs;
  }

let register ?tf_module ?granularity ?id ?namespace ?secret_name_template ?team_id ~access_token
  ~deployment_environments ~name ~project_id __id =
  let (r : _ Tf_core.resource) =
    make ?granularity ?id ?namespace ?secret_name_template ?team_id ~access_token ~deployment_environments ~name
      ~project_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
