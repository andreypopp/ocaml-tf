(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config = {
  api_token : string prop option; [@option]
  apps_domain : string prop option; [@option]
  attributes : string prop list option; [@option]
  auth_url : string prop option; [@option]
  authorization_server_id : string prop option; [@option]
  centrify_account : string prop option; [@option]
  centrify_app_id : string prop option; [@option]
  certs_url : string prop option; [@option]
  claims : string prop list option; [@option]
  client_id : string prop option; [@option]
  client_secret : string prop option; [@option]
  conditional_access_enabled : bool prop option; [@option]
  directory_id : string prop option; [@option]
  email_attribute_name : string prop option; [@option]
  email_claim_name : string prop option; [@option]
  idp_public_cert : string prop option; [@option]
  issuer_url : string prop option; [@option]
  okta_account : string prop option; [@option]
  onelogin_account : string prop option; [@option]
  ping_env_id : string prop option; [@option]
  pkce_enabled : bool prop option; [@option]
  scopes : string prop list option; [@option]
  sign_request : bool prop option; [@option]
  sso_target_url : string prop option; [@option]
  support_groups : bool prop option; [@option]
  token_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | {
       api_token = v_api_token;
       apps_domain = v_apps_domain;
       attributes = v_attributes;
       auth_url = v_auth_url;
       authorization_server_id = v_authorization_server_id;
       centrify_account = v_centrify_account;
       centrify_app_id = v_centrify_app_id;
       certs_url = v_certs_url;
       claims = v_claims;
       client_id = v_client_id;
       client_secret = v_client_secret;
       conditional_access_enabled = v_conditional_access_enabled;
       directory_id = v_directory_id;
       email_attribute_name = v_email_attribute_name;
       email_claim_name = v_email_claim_name;
       idp_public_cert = v_idp_public_cert;
       issuer_url = v_issuer_url;
       okta_account = v_okta_account;
       onelogin_account = v_onelogin_account;
       ping_env_id = v_ping_env_id;
       pkce_enabled = v_pkce_enabled;
       scopes = v_scopes;
       sign_request = v_sign_request;
       sso_target_url = v_sso_target_url;
       support_groups = v_support_groups;
       token_url = v_token_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_token_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_support_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "support_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sso_target_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sso_target_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sign_request with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sign_request", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pkce_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "pkce_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ping_env_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ping_env_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_onelogin_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "onelogin_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_okta_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "okta_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_issuer_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idp_public_cert with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idp_public_cert", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_claim_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_claim_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_attribute_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_attribute_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_directory_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "directory_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_conditional_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "conditional_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_claims with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "claims", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certs_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certs_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_centrify_app_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "centrify_app_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_centrify_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "centrify_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorization_server_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorization_server_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "attributes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apps_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "apps_domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config

[@@@deriving.end]

type scim_config = {
  enabled : bool prop option; [@option]
  group_member_deprovision : bool prop option; [@option]
  seat_deprovision : bool prop option; [@option]
  secret : string prop option; [@option]
  user_deprovision : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scim_config) -> ()

let yojson_of_scim_config =
  (function
   | {
       enabled = v_enabled;
       group_member_deprovision = v_group_member_deprovision;
       seat_deprovision = v_seat_deprovision;
       secret = v_secret;
       user_deprovision = v_user_deprovision;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_deprovision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "user_deprovision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_seat_deprovision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "seat_deprovision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_member_deprovision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "group_member_deprovision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scim_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scim_config

[@@@deriving.end]

type cloudflare_access_identity_provider = {
  account_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
  zone_id : string prop option; [@option]
  config : config list; [@default []] [@yojson_drop_default ( = )]
  scim_config : scim_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_access_identity_provider) -> ()

let yojson_of_cloudflare_access_identity_provider =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       name = v_name;
       type_ = v_type_;
       zone_id = v_zone_id;
       config = v_config;
       scim_config = v_scim_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_scim_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scim_config) v_scim_config
           in
           let bnd = "scim_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_config then bnds
         else
           let arg = (yojson_of_list yojson_of_config) v_config in
           let bnd = "config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_access_identity_provider ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_access_identity_provider

[@@@deriving.end]

let config ?api_token ?apps_domain ?attributes ?auth_url
    ?authorization_server_id ?centrify_account ?centrify_app_id
    ?certs_url ?claims ?client_id ?client_secret
    ?conditional_access_enabled ?directory_id ?email_attribute_name
    ?email_claim_name ?idp_public_cert ?issuer_url ?okta_account
    ?onelogin_account ?ping_env_id ?pkce_enabled ?scopes
    ?sign_request ?sso_target_url ?support_groups ?token_url () :
    config =
  {
    api_token;
    apps_domain;
    attributes;
    auth_url;
    authorization_server_id;
    centrify_account;
    centrify_app_id;
    certs_url;
    claims;
    client_id;
    client_secret;
    conditional_access_enabled;
    directory_id;
    email_attribute_name;
    email_claim_name;
    idp_public_cert;
    issuer_url;
    okta_account;
    onelogin_account;
    ping_env_id;
    pkce_enabled;
    scopes;
    sign_request;
    sso_target_url;
    support_groups;
    token_url;
  }

let scim_config ?enabled ?group_member_deprovision ?seat_deprovision
    ?secret ?user_deprovision () : scim_config =
  {
    enabled;
    group_member_deprovision;
    seat_deprovision;
    secret;
    user_deprovision;
  }

let cloudflare_access_identity_provider ?account_id ?id ?zone_id
    ?(config = []) ?(scim_config = []) ~name ~type_ () :
    cloudflare_access_identity_provider =
  { account_id; id; name; type_; zone_id; config; scim_config }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  zone_id : string prop;
}

let make ?account_id ?id ?zone_id ?(config = []) ?(scim_config = [])
    ~name ~type_ __id =
  let __type = "cloudflare_access_identity_provider" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_identity_provider
        (cloudflare_access_identity_provider ?account_id ?id ?zone_id
           ~config ~scim_config ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?zone_id ?(config = [])
    ?(scim_config = []) ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?zone_id ~config ~scim_config ~name ~type_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
