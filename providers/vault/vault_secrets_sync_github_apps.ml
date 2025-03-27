(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_secrets_sync_github_apps = {
  app_id : float prop;
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  private_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_secrets_sync_github_apps) -> ()

let yojson_of_vault_secrets_sync_github_apps =
  (function
   | { app_id = v_app_id; id = v_id; name = v_name; namespace = v_namespace; private_key = v_private_key } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_private_key in
       ("private_key", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_float v_app_id in
       ("app_id", arg) :: bnds
     in
     `Assoc bnds
    : vault_secrets_sync_github_apps -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_secrets_sync_github_apps

[@@@deriving.end]

let vault_secrets_sync_github_apps ?id ?namespace ~app_id ~name ~private_key () =
  ({ app_id; id; name; namespace; private_key } : vault_secrets_sync_github_apps)

type t = {
  tf_name : string;
  app_id : float prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  private_key : string prop;
}

let make ?id ?namespace ~app_id ~name ~private_key __id =
  let __type = "vault_secrets_sync_github_apps" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       private_key = Prop.computed __type __id "private_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_secrets_sync_github_apps
        (vault_secrets_sync_github_apps ?id ?namespace ~app_id ~name ~private_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~app_id ~name ~private_key __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~app_id ~name ~private_key __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
