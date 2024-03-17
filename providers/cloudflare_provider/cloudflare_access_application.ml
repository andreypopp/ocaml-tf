(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_access_application__cors_headers = {
  allow_all_headers : bool prop option; [@option]
      (** Value to determine whether all HTTP headers are exposed. *)
  allow_all_methods : bool prop option; [@option]
      (** Value to determine whether all methods are exposed. *)
  allow_all_origins : bool prop option; [@option]
      (** Value to determine whether all origins are permitted to make CORS requests. *)
  allow_credentials : bool prop option; [@option]
      (** Value to determine if credentials (cookies, authorization headers, or TLS client certificates) are included with requests. *)
  allowed_headers : string prop list option; [@option]
      (** List of HTTP headers to expose via CORS. *)
  allowed_methods : string prop list option; [@option]
      (** List of methods to expose via CORS. *)
  allowed_origins : string prop list option; [@option]
      (** List of origins permitted to make CORS requests. *)
  max_age : float prop option; [@option]
      (** The maximum time a preflight request will be cached. *)
}
[@@deriving yojson_of]
(** CORS configuration for the Access Application. See below for reference structure. *)

type cloudflare_access_application__footer_links = {
  name : string prop option; [@option]
      (** The name of the footer link. *)
  url : string prop option; [@option]
      (** The URL of the footer link. *)
}
[@@deriving yojson_of]
(** The footer links of the app launcher. *)

type cloudflare_access_application__landing_page_design = {
  button_color : string prop option; [@option]
      (** The button color of the landing page. *)
  button_text_color : string prop option; [@option]
      (** The button text color of the landing page. *)
  image_url : string prop option; [@option]
      (** The URL of the image to be displayed in the landing page. *)
  message : string prop option; [@option]
      (** The message of the landing page. *)
  title : string prop option; [@option]
      (** The title of the landing page. *)
}
[@@deriving yojson_of]
(** The landing page design of the app launcher. *)

type cloudflare_access_application__saas_app__custom_attribute__source = {
  name : string prop;
      (** The name of the attribute as provided by the IDP. *)
}
[@@deriving yojson_of]
(** cloudflare_access_application__saas_app__custom_attribute__source *)

type cloudflare_access_application__saas_app__custom_attribute = {
  friendly_name : string prop option; [@option]
      (** A friendly name for the attribute as provided to the SaaS app. *)
  name : string prop option; [@option]
      (** The name of the attribute as provided to the SaaS app. *)
  name_format : string prop option; [@option]
      (** A globally unique name for an identity or service provider. *)
  required : bool prop option; [@option]
      (** True if the attribute must be always present. *)
  source :
    cloudflare_access_application__saas_app__custom_attribute__source
    list;
}
[@@deriving yojson_of]
(** Custom attribute mapped from IDPs. *)

type cloudflare_access_application__saas_app = {
  app_launcher_url : string prop option; [@option]
      (** The URL where this applications tile redirects users. *)
  auth_type : string prop option; [@option]  (** auth_type *)
  client_id : string prop;  (** The application client id. *)
  client_secret : string prop;
      (** The application client secret, only returned on initial apply. *)
  consumer_service_url : string prop option; [@option]
      (** The service provider's endpoint that is responsible for receiving and parsing a SAML assertion. *)
  default_relay_state : string prop option; [@option]
      (** The relay state used if not provided by the identity provider. *)
  grant_types : string prop list option; [@option]
      (** The OIDC flows supported by this application. *)
  group_filter_regex : string prop option; [@option]
      (** A regex to filter Cloudflare groups returned in ID token and userinfo endpoint. *)
  idp_entity_id : string prop;
      (** The unique identifier for the SaaS application. *)
  name_id_format : string prop option; [@option]
      (** The format of the name identifier sent to the SaaS application. *)
  name_id_transform_jsonata : string prop option; [@option]
      (** A [JSONata](https://jsonata.org/) expression that transforms an application's user identities into a NameID value for its SAML assertion. This expression should evaluate to a singular string. The output of this expression can override the `name_id_format` setting. *)
  public_key : string prop;
      (** The public certificate that will be used to verify identities. *)
  redirect_uris : string prop list option; [@option]
      (** The permitted URL's for Cloudflare to return Authorization codes and Access/ID tokens. *)
  scopes : string prop list option; [@option]
      (** Define the user information shared with access. *)
  sp_entity_id : string prop option; [@option]
      (** A globally unique name for an identity or service provider. *)
  sso_endpoint : string prop;
      (** The endpoint where the SaaS application will send login requests. *)
  custom_attribute :
    cloudflare_access_application__saas_app__custom_attribute list;
}
[@@deriving yojson_of]
(** SaaS configuration for the Access Application. *)

type cloudflare_access_application = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. *)
  allow_authenticate_via_warp : bool prop option; [@option]
      (** When set to true, users can authenticate to this application using their WARP session. When set to false this application will always require direct IdP authentication. This setting always overrides the organization setting for WARP authentication. *)
  allowed_idps : string prop list option; [@option]
      (** The identity providers selected for the application. *)
  app_launcher_logo_url : string prop option; [@option]
      (** The logo URL of the app launcher. *)
  app_launcher_visible : bool prop option; [@option]
      (** Option to show/hide applications in App Launcher. Defaults to `true`. *)
  auto_redirect_to_identity : bool prop option; [@option]
      (** Option to skip identity provider selection if only one is configured in `allowed_idps`. Defaults to `false`. *)
  bg_color : string prop option; [@option]
      (** The background color of the app launcher. *)
  custom_deny_message : string prop option; [@option]
      (** Option that returns a custom error message when a user is denied access to the application. *)
  custom_deny_url : string prop option; [@option]
      (** Option that redirects to a custom URL when a user is denied access to the application via identity based rules. *)
  custom_non_identity_deny_url : string prop option; [@option]
      (** Option that redirects to a custom URL when a user is denied access to the application via non identity rules. *)
  custom_pages : string prop list option; [@option]
      (** The custom pages selected for the application. *)
  domain : string prop option; [@option]
      (** The primary hostname and path that Access will secure. If the app is visible in the App Launcher dashboard, this is the domain that will be displayed. *)
  enable_binding_cookie : bool prop option; [@option]
      (** Option to provide increased security against compromised authorization tokens and CSRF attacks by requiring an additional binding cookie on requests. Defaults to `false`. *)
  header_bg_color : string prop option; [@option]
      (** The background color of the header bar in the app launcher. *)
  http_only_cookie_attribute : bool prop option; [@option]
      (** Option to add the `HttpOnly` cookie flag to access tokens. *)
  id : string prop option; [@option]  (** id *)
  logo_url : string prop option; [@option]
      (** Image URL for the logo shown in the app launcher dashboard. *)
  name : string prop option; [@option]
      (** Friendly name of the Access Application. *)
  same_site_cookie_attribute : string prop option; [@option]
      (** Defines the same-site cookie setting for access tokens. Available values: `none`, `lax`, `strict`. *)
  self_hosted_domains : string prop list option; [@option]
      (** List of domains that access will secure. Only present for self_hosted, vnc, and ssh applications. Always includes the value set as `domain`. *)
  service_auth_401_redirect : bool prop option; [@option]
      (** Option to return a 401 status code in service authentication rules on failed requests. Defaults to `false`. *)
  session_duration : string prop option; [@option]
      (** How often a user will be forced to re-authorise. Must be in the format `48h` or `2h45m`. Defaults to `24h`. *)
  skip_interstitial : bool prop option; [@option]
      (** Option to skip the authorization interstitial when using the CLI. Defaults to `false`. *)
  tags : string prop list option; [@option]
      (** The itags associated with the application. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The application type. Available values: `app_launcher`, `bookmark`, `biso`, `dash_sso`, `saas`, `self_hosted`, `ssh`, `vnc`, `warp`. Defaults to `self_hosted`. *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. Conflicts with `account_id`. *)
  cors_headers : cloudflare_access_application__cors_headers list;
  footer_links : cloudflare_access_application__footer_links list;
  landing_page_design :
    cloudflare_access_application__landing_page_design list;
  saas_app : cloudflare_access_application__saas_app list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Access Application resource. Access
Applications are used to restrict access to a whole application using an
authorisation gateway managed by Cloudflare.
 *)

let cloudflare_access_application ?account_id
    ?allow_authenticate_via_warp ?allowed_idps ?app_launcher_logo_url
    ?app_launcher_visible ?auto_redirect_to_identity ?bg_color
    ?custom_deny_message ?custom_deny_url
    ?custom_non_identity_deny_url ?custom_pages ?domain
    ?enable_binding_cookie ?header_bg_color
    ?http_only_cookie_attribute ?id ?logo_url ?name
    ?same_site_cookie_attribute ?self_hosted_domains
    ?service_auth_401_redirect ?session_duration ?skip_interstitial
    ?tags ?type_ ?zone_id ~cors_headers ~footer_links
    ~landing_page_design ~saas_app __resource_id =
  let __resource_type = "cloudflare_access_application" in
  let __resource =
    {
      account_id;
      allow_authenticate_via_warp;
      allowed_idps;
      app_launcher_logo_url;
      app_launcher_visible;
      auto_redirect_to_identity;
      bg_color;
      custom_deny_message;
      custom_deny_url;
      custom_non_identity_deny_url;
      custom_pages;
      domain;
      enable_binding_cookie;
      header_bg_color;
      http_only_cookie_attribute;
      id;
      logo_url;
      name;
      same_site_cookie_attribute;
      self_hosted_domains;
      service_auth_401_redirect;
      session_duration;
      skip_interstitial;
      tags;
      type_;
      zone_id;
      cors_headers;
      footer_links;
      landing_page_design;
      saas_app;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_application __resource);
  ()
