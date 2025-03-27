(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_oidc_provider = {
  allowed_client_ids : string prop list option; [@option]
  https_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  issuer_host : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  scopes_supported : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_oidc_provider) -> ()

let yojson_of_vault_identity_oidc_provider =
  (function
   | {
       allowed_client_ids = v_allowed_client_ids;
       https_enabled = v_https_enabled;
       id = v_id;
       issuer_host = v_issuer_host;
       name = v_name;
       namespace = v_namespace;
       scopes_supported = v_scopes_supported;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_scopes_supported with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "scopes_supported", arg in
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
       match v_issuer_host with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "issuer_host", arg in
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
       match v_https_enabled with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "https_enabled", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_client_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_client_ids", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_identity_oidc_provider -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_oidc_provider

[@@@deriving.end]

let vault_identity_oidc_provider ?allowed_client_ids ?https_enabled ?id ?issuer_host ?namespace ?scopes_supported ~name
  () =
  ({ allowed_client_ids; https_enabled; id; issuer_host; name; namespace; scopes_supported }
    : vault_identity_oidc_provider)

type t = {
  tf_name : string;
  allowed_client_ids : string list prop;
  https_enabled : bool prop;
  id : string prop;
  issuer : string prop;
  issuer_host : string prop;
  name : string prop;
  namespace : string prop;
  scopes_supported : string list prop;
}

let make ?allowed_client_ids ?https_enabled ?id ?issuer_host ?namespace ?scopes_supported ~name __id =
  let __type = "vault_identity_oidc_provider" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_client_ids = Prop.computed __type __id "allowed_client_ids";
       https_enabled = Prop.computed __type __id "https_enabled";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       issuer_host = Prop.computed __type __id "issuer_host";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       scopes_supported = Prop.computed __type __id "scopes_supported";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_oidc_provider
        (vault_identity_oidc_provider ?allowed_client_ids ?https_enabled ?id ?issuer_host ?namespace ?scopes_supported
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_client_ids ?https_enabled ?id ?issuer_host ?namespace ?scopes_supported ~name __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_client_ids ?https_enabled ?id ?issuer_host ?namespace ?scopes_supported ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
