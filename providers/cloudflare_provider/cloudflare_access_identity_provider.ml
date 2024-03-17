(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_access_identity_provider__config = {
  api_token : string prop option; [@option]  (** api_token *)
  apps_domain : string prop option; [@option]  (** apps_domain *)
  attributes : string prop list option; [@option]  (** attributes *)
  auth_url : string prop option; [@option]  (** auth_url *)
  authorization_server_id : string prop option; [@option]
      (** authorization_server_id *)
  centrify_account : string prop option; [@option]
      (** centrify_account *)
  centrify_app_id : string prop option; [@option]
      (** centrify_app_id *)
  certs_url : string prop option; [@option]  (** certs_url *)
  claims : string prop list option; [@option]  (** claims *)
  client_id : string prop option; [@option]  (** client_id *)
  client_secret : string prop option; [@option]  (** client_secret *)
  conditional_access_enabled : bool prop option; [@option]
      (** conditional_access_enabled *)
  directory_id : string prop option; [@option]  (** directory_id *)
  email_attribute_name : string prop option; [@option]
      (** email_attribute_name *)
  email_claim_name : string prop option; [@option]
      (** email_claim_name *)
  idp_public_cert : string prop option; [@option]
      (** idp_public_cert *)
  issuer_url : string prop option; [@option]  (** issuer_url *)
  okta_account : string prop option; [@option]  (** okta_account *)
  onelogin_account : string prop option; [@option]
      (** onelogin_account *)
  ping_env_id : string prop option; [@option]  (** ping_env_id *)
  pkce_enabled : bool prop option; [@option]  (** pkce_enabled *)
  redirect_url : string prop;  (** redirect_url *)
  scopes : string prop list option; [@option]  (** scopes *)
  sign_request : bool prop option; [@option]  (** sign_request *)
  sso_target_url : string prop option; [@option]
      (** sso_target_url *)
  support_groups : bool prop option; [@option]  (** support_groups *)
  token_url : string prop option; [@option]  (** token_url *)
}
[@@deriving yojson_of]
(** Provider configuration from the [developer documentation](https://developers.cloudflare.com/access/configuring-identity-providers/). *)

type cloudflare_access_identity_provider__scim_config = {
  enabled : bool prop option; [@option]  (** enabled *)
  group_member_deprovision : bool prop option; [@option]
      (** group_member_deprovision *)
  seat_deprovision : bool prop option; [@option]
      (** seat_deprovision *)
  secret : string prop option; [@option]  (** secret *)
  user_deprovision : bool prop option; [@option]
      (** user_deprovision *)
}
[@@deriving yojson_of]
(** Configuration for SCIM settings for a given IDP. *)

type cloudflare_access_identity_provider = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Friendly name of the Access Identity Provider configuration. *)
  type_ : string prop; [@key "type"]
      (** The provider type to use. Available values: `azureAD`, `centrify`, `facebook`, `github`, `google`, `google-apps`, `linkedin`, `oidc`, `okta`, `onelogin`, `onetimepin`, `pingone`, `saml`, `yandex`. *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. Conflicts with `account_id`. **Modifying this attribute will force creation of a new resource.** *)
  config : cloudflare_access_identity_provider__config list;
  scim_config : cloudflare_access_identity_provider__scim_config list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Access Identity Provider resource. Identity
Providers are used as an authentication or authorisation source
within Access.
 *)

type t = {
  account_id : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  zone_id : string prop;
}

let cloudflare_access_identity_provider ?account_id ?id ?zone_id
    ~name ~type_ ~config ~scim_config __resource_id =
  let __resource_type = "cloudflare_access_identity_provider" in
  let __resource =
    ({ account_id; id; name; type_; zone_id; config; scim_config }
      : cloudflare_access_identity_provider)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_identity_provider __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       type_ = Prop.computed __resource_type __resource_id "type";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
