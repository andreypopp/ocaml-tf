(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_oidc_openid_config = {
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_oidc_openid_config) -> ()

let yojson_of_vault_identity_oidc_openid_config =
  (function
   | { id = v_id; name = v_name; namespace = v_namespace } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
     `Assoc bnds
    : vault_identity_oidc_openid_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_oidc_openid_config

[@@@deriving.end]

let vault_identity_oidc_openid_config ?id ?namespace ~name () =
  ({ id; name; namespace } : vault_identity_oidc_openid_config)

type t = {
  tf_name : string;
  authorization_endpoint : string prop;
  grant_types_supported : string list prop;
  id : string prop;
  id_token_signing_alg_values_supported : string list prop;
  issuer : string prop;
  jwks_uri : string prop;
  name : string prop;
  namespace : string prop;
  request_uri_parameter_supported : bool prop;
  response_types_supported : string list prop;
  scopes_supported : string list prop;
  subject_types_supported : string list prop;
  token_endpoint : string prop;
  token_endpoint_auth_methods_supported : string list prop;
  userinfo_endpoint : string prop;
}

let make ?id ?namespace ~name __id =
  let __type = "vault_identity_oidc_openid_config" in
  let __attrs =
    ({
       tf_name = __id;
       authorization_endpoint = Prop.computed __type __id "authorization_endpoint";
       grant_types_supported = Prop.computed __type __id "grant_types_supported";
       id = Prop.computed __type __id "id";
       id_token_signing_alg_values_supported = Prop.computed __type __id "id_token_signing_alg_values_supported";
       issuer = Prop.computed __type __id "issuer";
       jwks_uri = Prop.computed __type __id "jwks_uri";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       request_uri_parameter_supported = Prop.computed __type __id "request_uri_parameter_supported";
       response_types_supported = Prop.computed __type __id "response_types_supported";
       scopes_supported = Prop.computed __type __id "scopes_supported";
       subject_types_supported = Prop.computed __type __id "subject_types_supported";
       token_endpoint = Prop.computed __type __id "token_endpoint";
       token_endpoint_auth_methods_supported = Prop.computed __type __id "token_endpoint_auth_methods_supported";
       userinfo_endpoint = Prop.computed __type __id "userinfo_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_identity_oidc_openid_config (vault_identity_oidc_openid_config ?id ?namespace ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
