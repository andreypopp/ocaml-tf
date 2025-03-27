(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_secrets_sync_gh_destination = {
  access_token : string prop option; [@option]
  app_name : string prop option; [@option]
  granularity : string prop option; [@option]
  id : string prop option; [@option]
  installation_id : float prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  repository_name : string prop option; [@option]
  repository_owner : string prop option; [@option]
  secret_name_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_secrets_sync_gh_destination) -> ()

let yojson_of_vault_secrets_sync_gh_destination =
  (function
   | {
       access_token = v_access_token;
       app_name = v_app_name;
       granularity = v_granularity;
       id = v_id;
       installation_id = v_installation_id;
       name = v_name;
       namespace = v_namespace;
       repository_name = v_repository_name;
       repository_owner = v_repository_owner;
       secret_name_template = v_secret_name_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_secret_name_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "secret_name_template", arg in
         bnd :: bnds
     in
     let bnds =
       match v_repository_owner with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "repository_owner", arg in
         bnd :: bnds
     in
     let bnds =
       match v_repository_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "repository_name", arg in
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
       match v_installation_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "installation_id", arg in
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
       match v_granularity with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "granularity", arg in
         bnd :: bnds
     in
     let bnds =
       match v_app_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "app_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_access_token with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "access_token", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_secrets_sync_gh_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_secrets_sync_gh_destination

[@@@deriving.end]

let vault_secrets_sync_gh_destination ?access_token ?app_name ?granularity ?id ?installation_id ?namespace
  ?repository_name ?repository_owner ?secret_name_template ~name () =
  ({
     access_token;
     app_name;
     granularity;
     id;
     installation_id;
     name;
     namespace;
     repository_name;
     repository_owner;
     secret_name_template;
   }
    : vault_secrets_sync_gh_destination)

type t = {
  tf_name : string;
  access_token : string prop;
  app_name : string prop;
  granularity : string prop;
  id : string prop;
  installation_id : float prop;
  name : string prop;
  namespace : string prop;
  repository_name : string prop;
  repository_owner : string prop;
  secret_name_template : string prop;
  type_ : string prop;
}

let make ?access_token ?app_name ?granularity ?id ?installation_id ?namespace ?repository_name ?repository_owner
  ?secret_name_template ~name __id =
  let __type = "vault_secrets_sync_gh_destination" in
  let __attrs =
    ({
       tf_name = __id;
       access_token = Prop.computed __type __id "access_token";
       app_name = Prop.computed __type __id "app_name";
       granularity = Prop.computed __type __id "granularity";
       id = Prop.computed __type __id "id";
       installation_id = Prop.computed __type __id "installation_id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       repository_name = Prop.computed __type __id "repository_name";
       repository_owner = Prop.computed __type __id "repository_owner";
       secret_name_template = Prop.computed __type __id "secret_name_template";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_secrets_sync_gh_destination
        (vault_secrets_sync_gh_destination ?access_token ?app_name ?granularity ?id ?installation_id ?namespace
           ?repository_name ?repository_owner ?secret_name_template ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?access_token ?app_name ?granularity ?id ?installation_id ?namespace ?repository_name
  ?repository_owner ?secret_name_template ~name __id =
  let (r : _ Tf_core.resource) =
    make ?access_token ?app_name ?granularity ?id ?installation_id ?namespace ?repository_name ?repository_owner
      ?secret_name_template ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
