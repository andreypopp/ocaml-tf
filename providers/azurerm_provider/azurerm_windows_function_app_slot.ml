(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_windows_function_app_slot__auth_settings__active_directory = {
  allowed_audiences : string list option; [@option]
      (** Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory. *)
  client_id : string;
      (** The ID of the Client to use to authenticate with Azure Active Directory. *)
  client_secret : string option; [@option]
      (** The Client Secret for the Client ID. Cannot be used with `client_secret_setting_name`. *)
  client_secret_setting_name : string option; [@option]
      (** The App Setting name that contains the client secret of the Client. Cannot be used with `client_secret`. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings__active_directory *)

type azurerm_windows_function_app_slot__auth_settings__facebook = {
  app_id : string;
      (** The App ID of the Facebook app used for login. *)
  app_secret : string option; [@option]
      (** The App Secret of the Facebook app used for Facebook Login. Cannot be specified with `app_secret_setting_name`. *)
  app_secret_setting_name : string option; [@option]
      (** The app setting name that contains the `app_secret` value used for Facebook Login. Cannot be specified with `app_secret`. *)
  oauth_scopes : string list option; [@option]
      (** Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook Login authentication. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings__facebook *)

type azurerm_windows_function_app_slot__auth_settings__github = {
  client_id : string;
      (** The ID of the GitHub app used for login. *)
  client_secret : string option; [@option]
      (** The Client Secret of the GitHub app used for GitHub Login. Cannot be specified with `client_secret_setting_name`. *)
  client_secret_setting_name : string option; [@option]
      (** The app setting name that contains the `client_secret` value used for GitHub Login. Cannot be specified with `client_secret`. *)
  oauth_scopes : string list option; [@option]
      (** Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub Login authentication. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings__github *)

type azurerm_windows_function_app_slot__auth_settings__google = {
  client_id : string;
      (** The OpenID Connect Client ID for the Google web application. *)
  client_secret : string option; [@option]
      (** The client secret associated with the Google web application.  Cannot be specified with `client_secret_setting_name`. *)
  client_secret_setting_name : string option; [@option]
      (** The app setting name that contains the `client_secret` value used for Google Login. Cannot be specified with `client_secret`. *)
  oauth_scopes : string list option; [@option]
      (** Specifies a list of OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. If not specified, openid, profile, and email are used as default scopes. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings__google *)

type azurerm_windows_function_app_slot__auth_settings__microsoft = {
  client_id : string;
      (** The OAuth 2.0 client ID that was created for the app used for authentication. *)
  client_secret : string option; [@option]
      (** The OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret_setting_name`. *)
  client_secret_setting_name : string option; [@option]
      (** The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret`. *)
  oauth_scopes : string list option; [@option]
      (** The list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. If not specified, `wl.basic` is used as the default scope. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings__microsoft *)

type azurerm_windows_function_app_slot__auth_settings__twitter = {
  consumer_key : string;
      (** The OAuth 1.0a consumer key of the Twitter application used for sign-in. *)
  consumer_secret : string option; [@option]
      (** The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret_setting_name`. *)
  consumer_secret_setting_name : string option; [@option]
      (** The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret`. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings__twitter *)

type azurerm_windows_function_app_slot__auth_settings = {
  additional_login_parameters : (string * string) list option;
      [@option]
      (** Specifies a map of Login Parameters to send to the OpenID Connect authorization endpoint when a user logs in. *)
  allowed_external_redirect_urls : string list option; [@option]
      (** Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Windows Web App. *)
  default_provider : string option; [@option]
      (** The default authentication provider to use when multiple providers are configured. Possible values include: `AzureActiveDirectory`, `Facebook`, `Google`, `MicrosoftAccount`, `Twitter`, `Github`. *)
  enabled : bool;
      (** Should the Authentication / Authorization feature be enabled? *)
  issuer : string option; [@option]
      (** The OpenID Connect Issuer URI that represents the entity which issues access tokens. *)
  runtime_version : string option; [@option]
      (** The RuntimeVersion of the Authentication / Authorization feature in use. *)
  token_refresh_extension_hours : float option; [@option]
      (** The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours. *)
  token_store_enabled : bool option; [@option]
      (** Should the Windows Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to `false`. *)
  unauthenticated_client_action : string option; [@option]
      (** The action to take when an unauthenticated client attempts to access the app. Possible values include: `RedirectToLoginPage`, `AllowAnonymous`. *)
  active_directory :
    azurerm_windows_function_app_slot__auth_settings__active_directory
    list;
  facebook :
    azurerm_windows_function_app_slot__auth_settings__facebook list;
  github :
    azurerm_windows_function_app_slot__auth_settings__github list;
  google :
    azurerm_windows_function_app_slot__auth_settings__google list;
  microsoft :
    azurerm_windows_function_app_slot__auth_settings__microsoft list;
  twitter :
    azurerm_windows_function_app_slot__auth_settings__twitter list;
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings *)

type azurerm_windows_function_app_slot__auth_settings_v2__active_directory_v2 = {
  allowed_applications : string list option; [@option]
      (** The list of allowed Applications for the Default Authorisation Policy. *)
  allowed_audiences : string list option; [@option]
      (** Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory. *)
  allowed_groups : string list option; [@option]
      (** The list of allowed Group Names for the Default Authorisation Policy. *)
  allowed_identities : string list option; [@option]
      (** The list of allowed Identities for the Default Authorisation Policy. *)
  client_id : string;
      (** The ID of the Client to use to authenticate with Azure Active Directory. *)
  client_secret_certificate_thumbprint : string option; [@option]
      (** The thumbprint of the certificate used for signing purposes. *)
  client_secret_setting_name : string option; [@option]
      (** The App Setting name that contains the client secret of the Client. *)
  jwt_allowed_client_applications : string list option; [@option]
      (** A list of Allowed Client Applications in the JWT Claim. *)
  jwt_allowed_groups : string list option; [@option]
      (** A list of Allowed Groups in the JWT Claim. *)
  login_parameters : (string * string) list option; [@option]
      (** A map of key-value pairs to send to the Authorisation Endpoint when a user logs in. *)
  tenant_auth_endpoint : string;
      (** The Azure Tenant Endpoint for the Authenticating Tenant. e.g. `https://login.microsoftonline.com/v2.0/{tenant-guid}/`. *)
  www_authentication_disabled : bool option; [@option]
      (** Should the www-authenticate provider should be omitted from the request? Defaults to `false` *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings_v2__active_directory_v2 *)

type azurerm_windows_function_app_slot__auth_settings_v2__apple_v2 = {
  client_id : string;
      (** The OpenID Connect Client ID for the Apple web application. *)
  client_secret_setting_name : string;
      (** The app setting name that contains the `client_secret` value used for Apple Login. *)
  login_scopes : string list;  (** login_scopes *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings_v2__apple_v2 *)

type azurerm_windows_function_app_slot__auth_settings_v2__azure_static_web_app_v2 = {
  client_id : string;
      (** The ID of the Client to use to authenticate with Azure Static Web App Authentication. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings_v2__azure_static_web_app_v2 *)

type azurerm_windows_function_app_slot__auth_settings_v2__custom_oidc_v2 = {
  authorisation_endpoint : string;
      (** The endpoint to make the Authorisation Request. *)
  certification_uri : string;
      (** The endpoint that provides the keys necessary to validate the token. *)
  client_credential_method : string;
      (** The Client Credential Method used. Currently the only supported value is `ClientSecretPost`. *)
  client_id : string;
      (** The ID of the Client to use to authenticate with this Custom OIDC. *)
  client_secret_setting_name : string;
      (** The App Setting name that contains the secret for this Custom OIDC Client. *)
  issuer_endpoint : string;
      (** The endpoint that issued the Token. *)
  name : string;
      (** The name of the Custom OIDC Authentication Provider. *)
  name_claim_type : string option; [@option]
      (** The name of the claim that contains the users name. *)
  openid_configuration_endpoint : string;
      (** The endpoint that contains all the configuration endpoints for this Custom OIDC provider. *)
  scopes : string list option; [@option]
      (** The list of the scopes that should be requested while authenticating. *)
  token_endpoint : string;
      (** The endpoint used to request a Token. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings_v2__custom_oidc_v2 *)

type azurerm_windows_function_app_slot__auth_settings_v2__facebook_v2 = {
  app_id : string;
      (** The App ID of the Facebook app used for login. *)
  app_secret_setting_name : string;
      (** The app setting name that contains the `app_secret` value used for Facebook Login. *)
  graph_api_version : string option; [@option]
      (** The version of the Facebook API to be used while logging in. *)
  login_scopes : string list option; [@option]
      (** Specifies a list of scopes to be requested as part of Facebook Login authentication. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings_v2__facebook_v2 *)

type azurerm_windows_function_app_slot__auth_settings_v2__github_v2 = {
  client_id : string;
      (** The ID of the GitHub app used for login. *)
  client_secret_setting_name : string;
      (** The app setting name that contains the `client_secret` value used for GitHub Login. *)
  login_scopes : string list option; [@option]
      (** Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub Login authentication. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings_v2__github_v2 *)

type azurerm_windows_function_app_slot__auth_settings_v2__google_v2 = {
  allowed_audiences : string list option; [@option]
      (** Specifies a list of Allowed Audiences that will be requested as part of Google Sign-In authentication. *)
  client_id : string;
      (** The OpenID Connect Client ID for the Google web application. *)
  client_secret_setting_name : string;
      (** The app setting name that contains the `client_secret` value used for Google Login. *)
  login_scopes : string list option; [@option]
      (** Specifies a list of Login scopes that will be requested as part of Google Sign-In authentication. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings_v2__google_v2 *)

type azurerm_windows_function_app_slot__auth_settings_v2__login = {
  allowed_external_redirect_urls : string list option; [@option]
      (** External URLs that can be redirected to as part of logging in or logging out of the app. This is an advanced setting typically only needed by Windows Store application backends. **Note:** URLs within the current domain are always implicitly allowed. *)
  cookie_expiration_convention : string option; [@option]
      (** The method by which cookies expire. Possible values include: `FixedTime`, and `IdentityProviderDerived`. Defaults to `FixedTime`. *)
  cookie_expiration_time : string option; [@option]
      (** The time after the request is made when the session cookie should expire. Defaults to `08:00:00`. *)
  logout_endpoint : string option; [@option]
      (** The endpoint to which logout requests should be made. *)
  nonce_expiration_time : string option; [@option]
      (** The time after the request is made when the nonce should expire. Defaults to `00:05:00`. *)
  preserve_url_fragments_for_logins : bool option; [@option]
      (** Should the fragments from the request be preserved after the login request is made. Defaults to `false`. *)
  token_refresh_extension_time : float option; [@option]
      (** The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours. *)
  token_store_enabled : bool option; [@option]
      (** Should the Token Store configuration Enabled. Defaults to `false` *)
  token_store_path : string option; [@option]
      (** The directory path in the App Filesystem in which the tokens will be stored. *)
  token_store_sas_setting_name : string option; [@option]
      (** The name of the app setting which contains the SAS URL of the blob storage containing the tokens. *)
  validate_nonce : bool option; [@option]
      (** Should the nonce be validated while completing the login flow. Defaults to `true`. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings_v2__login *)

type azurerm_windows_function_app_slot__auth_settings_v2__microsoft_v2 = {
  allowed_audiences : string list option; [@option]
      (** Specifies a list of Allowed Audiences that will be requested as part of Microsoft Sign-In authentication. *)
  client_id : string;
      (** The OAuth 2.0 client ID that was created for the app used for authentication. *)
  client_secret_setting_name : string;
      (** The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. *)
  login_scopes : string list option; [@option]
      (** The list of Login scopes that will be requested as part of Microsoft Account authentication. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings_v2__microsoft_v2 *)

type azurerm_windows_function_app_slot__auth_settings_v2__twitter_v2 = {
  consumer_key : string;
      (** The OAuth 1.0a consumer key of the Twitter application used for sign-in. *)
  consumer_secret_setting_name : string;
      (** The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings_v2__twitter_v2 *)

type azurerm_windows_function_app_slot__auth_settings_v2 = {
  auth_enabled : bool option; [@option]
      (** Should the AuthV2 Settings be enabled. Defaults to `false` *)
  config_file_path : string option; [@option]
      (** The path to the App Auth settings. **Note:** Relative Paths are evaluated from the Site Root directory. *)
  default_provider : string option; [@option]
      (** The Default Authentication Provider to use when the `unauthenticated_action` is set to `RedirectToLoginPage`. Possible values include: `apple`, `azureactivedirectory`, `facebook`, `github`, `google`, `twitter` and the `name` of your `custom_oidc_v2` provider. *)
  excluded_paths : string list option; [@option]
      (** The paths which should be excluded from the `unauthenticated_action` when it is set to `RedirectToLoginPage`. *)
  forward_proxy_convention : string option; [@option]
      (** The convention used to determine the url of the request made. Possible values include `ForwardProxyConventionNoProxy`, `ForwardProxyConventionStandard`, `ForwardProxyConventionCustom`. Defaults to `ForwardProxyConventionNoProxy` *)
  forward_proxy_custom_host_header_name : string option; [@option]
      (** The name of the header containing the host of the request. *)
  forward_proxy_custom_scheme_header_name : string option; [@option]
      (** The name of the header containing the scheme of the request. *)
  http_route_api_prefix : string option; [@option]
      (** The prefix that should precede all the authentication and authorisation paths. Defaults to `/.auth` *)
  require_authentication : bool option; [@option]
      (** Should the authentication flow be used for all requests. *)
  require_https : bool option; [@option]
      (** Should HTTPS be required on connections? Defaults to true. *)
  runtime_version : string option; [@option]
      (** The Runtime Version of the Authentication and Authorisation feature of this App. Defaults to `~1` *)
  unauthenticated_action : string option; [@option]
      (** The action to take for requests made without authentication. Possible values include `RedirectToLoginPage`, `AllowAnonymous`, `Return401`, and `Return403`. Defaults to `RedirectToLoginPage`. *)
  active_directory_v2 :
    azurerm_windows_function_app_slot__auth_settings_v2__active_directory_v2
    list;
  apple_v2 :
    azurerm_windows_function_app_slot__auth_settings_v2__apple_v2
    list;
  azure_static_web_app_v2 :
    azurerm_windows_function_app_slot__auth_settings_v2__azure_static_web_app_v2
    list;
  custom_oidc_v2 :
    azurerm_windows_function_app_slot__auth_settings_v2__custom_oidc_v2
    list;
  facebook_v2 :
    azurerm_windows_function_app_slot__auth_settings_v2__facebook_v2
    list;
  github_v2 :
    azurerm_windows_function_app_slot__auth_settings_v2__github_v2
    list;
  google_v2 :
    azurerm_windows_function_app_slot__auth_settings_v2__google_v2
    list;
  login :
    azurerm_windows_function_app_slot__auth_settings_v2__login list;
  microsoft_v2 :
    azurerm_windows_function_app_slot__auth_settings_v2__microsoft_v2
    list;
  twitter_v2 :
    azurerm_windows_function_app_slot__auth_settings_v2__twitter_v2
    list;
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__auth_settings_v2 *)

type azurerm_windows_function_app_slot__backup__schedule = {
  frequency_interval : float;
      (** How often the backup should be executed (e.g. for weekly backup, this should be set to `7` and `frequency_unit` should be set to `Day`). *)
  frequency_unit : string;
      (** The unit of time for how often the backup should take place. Possible values include: `Day` and `Hour`. *)
  keep_at_least_one_backup : bool option; [@option]
      (** Should the service keep at least one backup, regardless of age of backup. Defaults to `false`. *)
  last_execution_time : string;
      (** The time the backup was last attempted. *)
  retention_period_days : float option; [@option]
      (** After how many days backups should be deleted. *)
  start_time : string option; [@option]
      (** When the schedule should start working in RFC-3339 format. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__backup__schedule *)

type azurerm_windows_function_app_slot__backup = {
  enabled : bool option; [@option]
      (** Should this backup job be enabled? *)
  name : string;
      (** The name which should be used for this Backup. *)
  storage_account_url : string;  (** The SAS URL to the container. *)
  schedule : azurerm_windows_function_app_slot__backup__schedule list;
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__backup *)

type azurerm_windows_function_app_slot__connection_string = {
  name : string;
      (** The name which should be used for this Connection. *)
  type_ : string; [@key "type"]
      (** Type of database. Possible values include: `MySQL`, `SQLServer`, `SQLAzure`, `Custom`, `NotificationHub`, `ServiceBus`, `EventHub`, `APIHub`, `DocDb`, `RedisCache`, and `PostgreSQL`. *)
  value : string;  (** The connection string value. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__connection_string *)

type azurerm_windows_function_app_slot__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__identity *)

type azurerm_windows_function_app_slot__site_config__app_service_logs = {
  disk_quota_mb : float option; [@option]
      (** The amount of disk space to use for logs. Valid values are between `25` and `100`. *)
  retention_period_days : float option; [@option]
      (** The retention period for logs in days. Valid values are between `0` and `99999`. Defaults to `0` (never delete). *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__site_config__app_service_logs *)

type azurerm_windows_function_app_slot__site_config__application_stack = {
  dotnet_version : string option; [@option]
      (** The version of .Net. Possible values are `v3.0`, `v4.0`, `v6.0` and `v7.0` *)
  java_version : string option; [@option]
      (** The version of Java to use. Possible values are `1.8`, `11` and `17` *)
  node_version : string option; [@option]
      (** The version of Node to use. Possible values include `12`, `14`, `16` and `18` *)
  powershell_core_version : string option; [@option]
      (** The PowerShell Core version to use. Possible values are `7`, and `7.2` *)
  use_custom_runtime : bool option; [@option]
      (** Does the Function App use a custom Application Stack? *)
  use_dotnet_isolated_runtime : bool option; [@option]
      (** Should the DotNet process use an isolated runtime. Defaults to `false`. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__site_config__application_stack *)

type azurerm_windows_function_app_slot__site_config__cors = {
  allowed_origins : string list option; [@option]
      (** Specifies a list of origins that should be allowed to make cross-origin calls. *)
  support_credentials : bool option; [@option]
      (** Are credentials allowed in CORS requests? Defaults to `false`. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__site_config__cors *)

type azurerm_windows_function_app_slot__site_config__ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_windows_function_app_slot__site_config__ip_restriction = {
  action : string option; [@option]
      (** The action to take. Possible values are `Allow` or `Deny`. *)
  description : string option; [@option]
      (** The description of the IP restriction rule. *)
  headers :
    azurerm_windows_function_app_slot__site_config__ip_restriction__headers
    list
    option;
      [@option]
      (** headers *)
  ip_address : string option; [@option]
      (** The CIDR notation of the IP or IP Range to match. For example: `10.0.0.0/24` or `192.168.10.1/32` or `fe80::/64` or `13.107.6.152/31,13.107.128.0/22` *)
  name : string option; [@option]
      (** The name which should be used for this `ip_restriction`. *)
  priority : float option; [@option]
      (** The priority value of this `ip_restriction`. *)
  service_tag : string option; [@option]
      (** The Service Tag used for this IP Restriction. *)
  virtual_network_subnet_id : string option; [@option]
      (** The Virtual Network Subnet ID used for this IP Restriction. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__site_config__ip_restriction *)

type azurerm_windows_function_app_slot__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_windows_function_app_slot__site_config__scm_ip_restriction = {
  action : string option; [@option]
      (** The action to take. Possible values are `Allow` or `Deny`. *)
  description : string option; [@option]
      (** The description of the IP restriction rule. *)
  headers :
    azurerm_windows_function_app_slot__site_config__scm_ip_restriction__headers
    list
    option;
      [@option]
      (** headers *)
  ip_address : string option; [@option]
      (** The CIDR notation of the IP or IP Range to match. For example: `10.0.0.0/24` or `192.168.10.1/32` or `fe80::/64` or `13.107.6.152/31,13.107.128.0/22` *)
  name : string option; [@option]
      (** The name which should be used for this `ip_restriction`. *)
  priority : float option; [@option]
      (** The priority value of this `ip_restriction`. *)
  service_tag : string option; [@option]
      (** The Service Tag used for this IP Restriction. *)
  virtual_network_subnet_id : string option; [@option]
      (** The Virtual Network Subnet ID used for this IP Restriction. *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__site_config__scm_ip_restriction *)

type azurerm_windows_function_app_slot__site_config = {
  always_on : bool option; [@option]
      (** If this Windows Web App is Always On enabled. Defaults to `false`. *)
  api_definition_url : string option; [@option]
      (** The URL of the API definition that describes this Windows Function App. *)
  api_management_api_id : string option; [@option]
      (** The ID of the API Management API for this Windows Function App. *)
  app_command_line : string option; [@option]
      (** The program and any arguments used to launch this app via the command line. (Example `node myapp.js`). *)
  app_scale_limit : float option; [@option]
      (** The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan. *)
  application_insights_connection_string : string option; [@option]
      (** The Connection String for linking the Windows Function App to Application Insights. *)
  application_insights_key : string option; [@option]
      (** The Instrumentation Key for connecting the Windows Function App to Application Insights. *)
  auto_swap_slot_name : string option; [@option]
      (** auto_swap_slot_name *)
  default_documents : string list option; [@option]
      (** Specifies a list of Default Documents for the Windows Web App. *)
  detailed_error_logging_enabled : bool;
      (** Is detailed error logging enabled *)
  elastic_instance_minimum : float option; [@option]
      (** The number of minimum instances for this Windows Function App. Only affects apps on Elastic Premium plans. *)
  ftps_state : string option; [@option]
      (** State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `Disabled`. *)
  health_check_eviction_time_in_min : float option; [@option]
      (** The amount of time in minutes that a node is unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Defaults to `10`. Only valid in conjunction with `health_check_path` *)
  health_check_path : string option; [@option]
      (** The path to be checked for this function app health. *)
  http2_enabled : bool option; [@option]
      (** Specifies if the http2 protocol should be enabled. Defaults to `false`. *)
  ip_restriction_default_action : string option; [@option]
      (** ip_restriction_default_action *)
  load_balancing_mode : string option; [@option]
      (** The Site load balancing mode. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted. *)
  managed_pipeline_mode : string option; [@option]
      (** The Managed Pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`. *)
  minimum_tls_version : string option; [@option]
      (** The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, and  `1.2`. Defaults to `1.2`. *)
  pre_warmed_instance_count : float option; [@option]
      (** The number of pre-warmed instances for this function app. Only affects apps on an Elastic Premium plan. *)
  remote_debugging_enabled : bool option; [@option]
      (** Should Remote Debugging be enabled. Defaults to `false`. *)
  remote_debugging_version : string option; [@option]
      (** The Remote Debugging Version. Possible values include `VS2017`, `VS2019`, and `VS2022` *)
  runtime_scale_monitoring_enabled : bool option; [@option]
      (** Should Functions Runtime Scale Monitoring be enabled. *)
  scm_ip_restriction_default_action : string option; [@option]
      (** scm_ip_restriction_default_action *)
  scm_minimum_tls_version : string option; [@option]
      (** Configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: `1.0`, `1.1`, and  `1.2`. Defaults to `1.2`. *)
  scm_type : string;
      (** The SCM Type in use by the Windows Function App. *)
  scm_use_main_ip_restriction : bool option; [@option]
      (** Should the Windows Function App `ip_restriction` configuration be used for the SCM also. *)
  use_32_bit_worker : bool option; [@option]
      (** Should the Windows Function App use a 32-bit worker. *)
  vnet_route_all_enabled : bool option; [@option]
      (** Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to `false`. *)
  websockets_enabled : bool option; [@option]
      (** Should Web Sockets be enabled. Defaults to `false`. *)
  windows_fx_version : string;  (** The Windows FX Version string. *)
  worker_count : float option; [@option]
      (** The number of Workers for this Windows Function App. *)
  app_service_logs :
    azurerm_windows_function_app_slot__site_config__app_service_logs
    list;
  application_stack :
    azurerm_windows_function_app_slot__site_config__application_stack
    list;
  cors : azurerm_windows_function_app_slot__site_config__cors list;
  ip_restriction :
    azurerm_windows_function_app_slot__site_config__ip_restriction
    list;
  scm_ip_restriction :
    azurerm_windows_function_app_slot__site_config__scm_ip_restriction
    list;
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__site_config *)

type azurerm_windows_function_app_slot__storage_account = {
  access_key : string;  (** access_key *)
  account_name : string;  (** account_name *)
  mount_path : string option; [@option]  (** mount_path *)
  name : string;  (** name *)
  share_name : string;  (** share_name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__storage_account *)

type azurerm_windows_function_app_slot__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot__timeouts *)

type azurerm_windows_function_app_slot__site_credential = {
  name : string;  (** name *)
  password : string;  (** password *)
}
[@@deriving yojson_of]

type azurerm_windows_function_app_slot = {
  app_settings : (string * string) list option; [@option]
      (** A map of key-value pairs for [App Settings](https://docs.microsoft.com/en-us/azure/azure-functions/functions-app-settings) and custom values. *)
  builtin_logging_enabled : bool option; [@option]
      (** Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. *)
  client_certificate_enabled : bool option; [@option]
      (** Should the Function App Slot use Client Certificates. *)
  client_certificate_exclusion_paths : string option; [@option]
      (** Paths to exclude when using client certificates, separated by ; *)
  client_certificate_mode : string option; [@option]
      (** The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. *)
  content_share_force_disabled : bool option; [@option]
      (** Force disable the content share settings. *)
  daily_memory_time_quota : float option; [@option]
      (** The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. *)
  enabled : bool option; [@option]
      (** Is the Windows Function App Slot enabled. *)
  ftp_publish_basic_authentication_enabled : bool option; [@option]
      (** ftp_publish_basic_authentication_enabled *)
  function_app_id : string;
      (** The ID of the Windows Function App this Slot is a member of. *)
  functions_extension_version : string option; [@option]
      (** The runtime version associated with the Function App Slot. *)
  https_only : bool option; [@option]
      (** Can the Function App Slot only be accessed via HTTPS? *)
  id : string option; [@option]  (** id *)
  key_vault_reference_identity_id : string option; [@option]
      (** The User Assigned Identity to use for Key Vault access. *)
  name : string;
      (** Specifies the name of the Windows Function App Slot. *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  service_plan_id : string option; [@option]  (** service_plan_id *)
  storage_account_access_key : string option; [@option]
      (** The access key which will be used to access the storage account for the Function App Slot. *)
  storage_account_name : string option; [@option]
      (** The backend storage account name which will be used by this Function App Slot. *)
  storage_key_vault_secret_id : string option; [@option]
      (** The Key Vault Secret ID, including version, that contains the Connection String to connect to the storage account for this Function App. *)
  storage_uses_managed_identity : bool option; [@option]
      (** Should the Function App Slot use its Managed Identity to access storage? *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_network_subnet_id : string option; [@option]
      (** virtual_network_subnet_id *)
  webdeploy_publish_basic_authentication_enabled : bool option;
      [@option]
      (** webdeploy_publish_basic_authentication_enabled *)
  auth_settings :
    azurerm_windows_function_app_slot__auth_settings list;
  auth_settings_v2 :
    azurerm_windows_function_app_slot__auth_settings_v2 list;
  backup : azurerm_windows_function_app_slot__backup list;
  connection_string :
    azurerm_windows_function_app_slot__connection_string list;
  identity : azurerm_windows_function_app_slot__identity list;
  site_config : azurerm_windows_function_app_slot__site_config list;
  storage_account :
    azurerm_windows_function_app_slot__storage_account list;
  timeouts : azurerm_windows_function_app_slot__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot *)

let azurerm_windows_function_app_slot ?app_settings
    ?builtin_logging_enabled ?client_certificate_enabled
    ?client_certificate_exclusion_paths ?client_certificate_mode
    ?content_share_force_disabled ?daily_memory_time_quota ?enabled
    ?ftp_publish_basic_authentication_enabled
    ?functions_extension_version ?https_only ?id
    ?key_vault_reference_identity_id ?public_network_access_enabled
    ?service_plan_id ?storage_account_access_key
    ?storage_account_name ?storage_key_vault_secret_id
    ?storage_uses_managed_identity ?tags ?virtual_network_subnet_id
    ?webdeploy_publish_basic_authentication_enabled ?timeouts
    ~function_app_id ~name ~auth_settings ~auth_settings_v2 ~backup
    ~connection_string ~identity ~site_config ~storage_account
    __resource_id =
  let __resource_type = "azurerm_windows_function_app_slot" in
  let __resource =
    {
      app_settings;
      builtin_logging_enabled;
      client_certificate_enabled;
      client_certificate_exclusion_paths;
      client_certificate_mode;
      content_share_force_disabled;
      daily_memory_time_quota;
      enabled;
      ftp_publish_basic_authentication_enabled;
      function_app_id;
      functions_extension_version;
      https_only;
      id;
      key_vault_reference_identity_id;
      name;
      public_network_access_enabled;
      service_plan_id;
      storage_account_access_key;
      storage_account_name;
      storage_key_vault_secret_id;
      storage_uses_managed_identity;
      tags;
      virtual_network_subnet_id;
      webdeploy_publish_basic_authentication_enabled;
      auth_settings;
      auth_settings_v2;
      backup;
      connection_string;
      identity;
      site_config;
      storage_account;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_windows_function_app_slot __resource);
  ()
