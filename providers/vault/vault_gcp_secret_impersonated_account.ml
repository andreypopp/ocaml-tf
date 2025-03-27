(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_gcp_secret_impersonated_account = {
  backend : string prop;
  id : string prop option; [@option]
  impersonated_account : string prop;
  namespace : string prop option; [@option]
  service_account_email : string prop;
  token_scopes : string prop list option; [@option]
  ttl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_gcp_secret_impersonated_account) -> ()

let yojson_of_vault_gcp_secret_impersonated_account =
  (function
   | {
       backend = v_backend;
       id = v_id;
       impersonated_account = v_impersonated_account;
       namespace = v_namespace;
       service_account_email = v_service_account_email;
       token_scopes = v_token_scopes;
       ttl = v_ttl;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ttl", arg in
         bnd :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_service_account_email in
       ("service_account_email", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_impersonated_account in
       ("impersonated_account", arg) :: bnds
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
    : vault_gcp_secret_impersonated_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_gcp_secret_impersonated_account

[@@@deriving.end]

let vault_gcp_secret_impersonated_account ?id ?namespace ?token_scopes ?ttl ~backend ~impersonated_account
  ~service_account_email () =
  ({ backend; id; impersonated_account; namespace; service_account_email; token_scopes; ttl }
    : vault_gcp_secret_impersonated_account)

type t = {
  tf_name : string;
  backend : string prop;
  id : string prop;
  impersonated_account : string prop;
  namespace : string prop;
  service_account_email : string prop;
  service_account_project : string prop;
  token_scopes : string list prop;
  ttl : string prop;
}

let make ?id ?namespace ?token_scopes ?ttl ~backend ~impersonated_account ~service_account_email __id =
  let __type = "vault_gcp_secret_impersonated_account" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       impersonated_account = Prop.computed __type __id "impersonated_account";
       namespace = Prop.computed __type __id "namespace";
       service_account_email = Prop.computed __type __id "service_account_email";
       service_account_project = Prop.computed __type __id "service_account_project";
       token_scopes = Prop.computed __type __id "token_scopes";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_gcp_secret_impersonated_account
        (vault_gcp_secret_impersonated_account ?id ?namespace ?token_scopes ?ttl ~backend ~impersonated_account
           ~service_account_email ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ?token_scopes ?ttl ~backend ~impersonated_account ~service_account_email __id =
  let (r : _ Tf_core.resource) =
    make ?id ?namespace ?token_scopes ?ttl ~backend ~impersonated_account ~service_account_email __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
