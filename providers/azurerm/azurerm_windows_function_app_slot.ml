(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth_settings__active_directory = {
  allowed_audiences : string prop list option; [@option]
      (** Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory. *)
  client_id : string prop;
      (** The ID of the Client to use to authenticate with Azure Active Directory. *)
  client_secret : string prop option; [@option]
      (** The Client Secret for the Client ID. Cannot be used with `client_secret_setting_name`. *)
  client_secret_setting_name : string prop option; [@option]
      (** The App Setting name that contains the client secret of the Client. Cannot be used with `client_secret`. *)
}
[@@deriving yojson_of]
(** auth_settings__active_directory *)

type auth_settings__facebook = {
  app_id : string prop;
      (** The App ID of the Facebook app used for login. *)
  app_secret : string prop option; [@option]
      (** The App Secret of the Facebook app used for Facebook Login. Cannot be specified with `app_secret_setting_name`. *)
  app_secret_setting_name : string prop option; [@option]
      (** The app setting name that contains the `app_secret` value used for Facebook Login. Cannot be specified with `app_secret`. *)
  oauth_scopes : string prop list option; [@option]
      (** Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook Login authentication. *)
}
[@@deriving yojson_of]
(** auth_settings__facebook *)

type auth_settings__github = {
  client_id : string prop;
      (** The ID of the GitHub app used for login. *)
  client_secret : string prop option; [@option]
      (** The Client Secret of the GitHub app used for GitHub Login. Cannot be specified with `client_secret_setting_name`. *)
  client_secret_setting_name : string prop option; [@option]
      (** The app setting name that contains the `client_secret` value used for GitHub Login. Cannot be specified with `client_secret`. *)
  oauth_scopes : string prop list option; [@option]
      (** Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub Login authentication. *)
}
[@@deriving yojson_of]
(** auth_settings__github *)

type auth_settings__google = {
  client_id : string prop;
      (** The OpenID Connect Client ID for the Google web application. *)
  client_secret : string prop option; [@option]
      (** The client secret associated with the Google web application.  Cannot be specified with `client_secret_setting_name`. *)
  client_secret_setting_name : string prop option; [@option]
      (** The app setting name that contains the `client_secret` value used for Google Login. Cannot be specified with `client_secret`. *)
  oauth_scopes : string prop list option; [@option]
      (** Specifies a list of OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. If not specified, openid, profile, and email are used as default scopes. *)
}
[@@deriving yojson_of]
(** auth_settings__google *)

type auth_settings__microsoft = {
  client_id : string prop;
      (** The OAuth 2.0 client ID that was created for the app used for authentication. *)
  client_secret : string prop option; [@option]
      (** The OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret_setting_name`. *)
  client_secret_setting_name : string prop option; [@option]
      (** The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret`. *)
  oauth_scopes : string prop list option; [@option]
      (** The list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. If not specified, `wl.basic` is used as the default scope. *)
}
[@@deriving yojson_of]
(** auth_settings__microsoft *)

type auth_settings__twitter = {
  consumer_key : string prop;
      (** The OAuth 1.0a consumer key of the Twitter application used for sign-in. *)
  consumer_secret : string prop option; [@option]
      (** The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret_setting_name`. *)
  consumer_secret_setting_name : string prop option; [@option]
      (** The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret`. *)
}
[@@deriving yojson_of]
(** auth_settings__twitter *)

type auth_settings = {
  additional_login_parameters : (string * string prop) list option;
      [@option]
      (** Specifies a map of Login Parameters to send to the OpenID Connect authorization endpoint when a user logs in. *)
  allowed_external_redirect_urls : string prop list option; [@option]
      (** Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Windows Web App. *)
  default_provider : string prop option; [@option]
      (** The default authentication provider to use when multiple providers are configured. Possible values include: `AzureActiveDirectory`, `Facebook`, `Google`, `MicrosoftAccount`, `Twitter`, `Github`. *)
  enabled : bool prop;
      (** Should the Authentication / Authorization feature be enabled? *)
  issuer : string prop option; [@option]
      (** The OpenID Connect Issuer URI that represents the entity which issues access tokens. *)
  runtime_version : string prop option; [@option]
      (** The RuntimeVersion of the Authentication / Authorization feature in use. *)
  token_refresh_extension_hours : float prop option; [@option]
      (** The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours. *)
  token_store_enabled : bool prop option; [@option]
      (** Should the Windows Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to `false`. *)
  unauthenticated_client_action : string prop option; [@option]
      (** The action to take when an unauthenticated client attempts to access the app. Possible values include: `RedirectToLoginPage`, `AllowAnonymous`. *)
  active_directory : auth_settings__active_directory list;
  facebook : auth_settings__facebook list;
  github : auth_settings__github list;
  google : auth_settings__google list;
  microsoft : auth_settings__microsoft list;
  twitter : auth_settings__twitter list;
}
[@@deriving yojson_of]
(** auth_settings *)

type auth_settings_v2__active_directory_v2 = {
  allowed_applications : string prop list option; [@option]
      (** The list of allowed Applications for the Default Authorisation Policy. *)
  allowed_audiences : string prop list option; [@option]
      (** Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory. *)
  allowed_groups : string prop list option; [@option]
      (** The list of allowed Group Names for the Default Authorisation Policy. *)
  allowed_identities : string prop list option; [@option]
      (** The list of allowed Identities for the Default Authorisation Policy. *)
  client_id : string prop;
      (** The ID of the Client to use to authenticate with Azure Active Directory. *)
  client_secret_certificate_thumbprint : string prop option;
      [@option]
      (** The thumbprint of the certificate used for signing purposes. *)
  client_secret_setting_name : string prop option; [@option]
      (** The App Setting name that contains the client secret of the Client. *)
  jwt_allowed_client_applications : string prop list option;
      [@option]
      (** A list of Allowed Client Applications in the JWT Claim. *)
  jwt_allowed_groups : string prop list option; [@option]
      (** A list of Allowed Groups in the JWT Claim. *)
  login_parameters : (string * string prop) list option; [@option]
      (** A map of key-value pairs to send to the Authorisation Endpoint when a user logs in. *)
  tenant_auth_endpoint : string prop;
      (** The Azure Tenant Endpoint for the Authenticating Tenant. e.g. `https://login.microsoftonline.com/v2.0/{tenant-guid}/`. *)
  www_authentication_disabled : bool prop option; [@option]
      (** Should the www-authenticate provider should be omitted from the request? Defaults to `false` *)
}
[@@deriving yojson_of]
(** auth_settings_v2__active_directory_v2 *)

type auth_settings_v2__apple_v2 = {
  client_id : string prop;
      (** The OpenID Connect Client ID for the Apple web application. *)
  client_secret_setting_name : string prop;
      (** The app setting name that contains the `client_secret` value used for Apple Login. *)
}
[@@deriving yojson_of]
(** auth_settings_v2__apple_v2 *)

type auth_settings_v2__azure_static_web_app_v2 = {
  client_id : string prop;
      (** The ID of the Client to use to authenticate with Azure Static Web App Authentication. *)
}
[@@deriving yojson_of]
(** auth_settings_v2__azure_static_web_app_v2 *)

type auth_settings_v2__custom_oidc_v2 = {
  client_id : string prop;
      (** The ID of the Client to use to authenticate with this Custom OIDC. *)
  name : string prop;
      (** The name of the Custom OIDC Authentication Provider. *)
  name_claim_type : string prop option; [@option]
      (** The name of the claim that contains the users name. *)
  openid_configuration_endpoint : string prop;
      (** The endpoint that contains all the configuration endpoints for this Custom OIDC provider. *)
  scopes : string prop list option; [@option]
      (** The list of the scopes that should be requested while authenticating. *)
}
[@@deriving yojson_of]
(** auth_settings_v2__custom_oidc_v2 *)

type auth_settings_v2__facebook_v2 = {
  app_id : string prop;
      (** The App ID of the Facebook app used for login. *)
  app_secret_setting_name : string prop;
      (** The app setting name that contains the `app_secret` value used for Facebook Login. *)
  graph_api_version : string prop option; [@option]
      (** The version of the Facebook API to be used while logging in. *)
  login_scopes : string prop list option; [@option]
      (** Specifies a list of scopes to be requested as part of Facebook Login authentication. *)
}
[@@deriving yojson_of]
(** auth_settings_v2__facebook_v2 *)

type auth_settings_v2__github_v2 = {
  client_id : string prop;
      (** The ID of the GitHub app used for login. *)
  client_secret_setting_name : string prop;
      (** The app setting name that contains the `client_secret` value used for GitHub Login. *)
  login_scopes : string prop list option; [@option]
      (** Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub Login authentication. *)
}
[@@deriving yojson_of]
(** auth_settings_v2__github_v2 *)

type auth_settings_v2__google_v2 = {
  allowed_audiences : string prop list option; [@option]
      (** Specifies a list of Allowed Audiences that will be requested as part of Google Sign-In authentication. *)
  client_id : string prop;
      (** The OpenID Connect Client ID for the Google web application. *)
  client_secret_setting_name : string prop;
      (** The app setting name that contains the `client_secret` value used for Google Login. *)
  login_scopes : string prop list option; [@option]
      (** Specifies a list of Login scopes that will be requested as part of Google Sign-In authentication. *)
}
[@@deriving yojson_of]
(** auth_settings_v2__google_v2 *)

type auth_settings_v2__login = {
  allowed_external_redirect_urls : string prop list option; [@option]
      (** External URLs that can be redirected to as part of logging in or logging out of the app. This is an advanced setting typically only needed by Windows Store application backends. **Note:** URLs within the current domain are always implicitly allowed. *)
  cookie_expiration_convention : string prop option; [@option]
      (** The method by which cookies expire. Possible values include: `FixedTime`, and `IdentityProviderDerived`. Defaults to `FixedTime`. *)
  cookie_expiration_time : string prop option; [@option]
      (** The time after the request is made when the session cookie should expire. Defaults to `08:00:00`. *)
  logout_endpoint : string prop option; [@option]
      (** The endpoint to which logout requests should be made. *)
  nonce_expiration_time : string prop option; [@option]
      (** The time after the request is made when the nonce should expire. Defaults to `00:05:00`. *)
  preserve_url_fragments_for_logins : bool prop option; [@option]
      (** Should the fragments from the request be preserved after the login request is made. Defaults to `false`. *)
  token_refresh_extension_time : float prop option; [@option]
      (** The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours. *)
  token_store_enabled : bool prop option; [@option]
      (** Should the Token Store configuration Enabled. Defaults to `false` *)
  token_store_path : string prop option; [@option]
      (** The directory path in the App Filesystem in which the tokens will be stored. *)
  token_store_sas_setting_name : string prop option; [@option]
      (** The name of the app setting which contains the SAS URL of the blob storage containing the tokens. *)
  validate_nonce : bool prop option; [@option]
      (** Should the nonce be validated while completing the login flow. Defaults to `true`. *)
}
[@@deriving yojson_of]
(** auth_settings_v2__login *)

type auth_settings_v2__microsoft_v2 = {
  allowed_audiences : string prop list option; [@option]
      (** Specifies a list of Allowed Audiences that will be requested as part of Microsoft Sign-In authentication. *)
  client_id : string prop;
      (** The OAuth 2.0 client ID that was created for the app used for authentication. *)
  client_secret_setting_name : string prop;
      (** The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. *)
  login_scopes : string prop list option; [@option]
      (** The list of Login scopes that will be requested as part of Microsoft Account authentication. *)
}
[@@deriving yojson_of]
(** auth_settings_v2__microsoft_v2 *)

type auth_settings_v2__twitter_v2 = {
  consumer_key : string prop;
      (** The OAuth 1.0a consumer key of the Twitter application used for sign-in. *)
  consumer_secret_setting_name : string prop;
      (** The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. *)
}
[@@deriving yojson_of]
(** auth_settings_v2__twitter_v2 *)

type auth_settings_v2 = {
  auth_enabled : bool prop option; [@option]
      (** Should the AuthV2 Settings be enabled. Defaults to `false` *)
  config_file_path : string prop option; [@option]
      (** The path to the App Auth settings. **Note:** Relative Paths are evaluated from the Site Root directory. *)
  default_provider : string prop option; [@option]
      (** The Default Authentication Provider to use when the `unauthenticated_action` is set to `RedirectToLoginPage`. Possible values include: `apple`, `azureactivedirectory`, `facebook`, `github`, `google`, `twitter` and the `name` of your `custom_oidc_v2` provider. *)
  excluded_paths : string prop list option; [@option]
      (** The paths which should be excluded from the `unauthenticated_action` when it is set to `RedirectToLoginPage`. *)
  forward_proxy_convention : string prop option; [@option]
      (** The convention used to determine the url of the request made. Possible values include `ForwardProxyConventionNoProxy`, `ForwardProxyConventionStandard`, `ForwardProxyConventionCustom`. Defaults to `ForwardProxyConventionNoProxy` *)
  forward_proxy_custom_host_header_name : string prop option;
      [@option]
      (** The name of the header containing the host of the request. *)
  forward_proxy_custom_scheme_header_name : string prop option;
      [@option]
      (** The name of the header containing the scheme of the request. *)
  http_route_api_prefix : string prop option; [@option]
      (** The prefix that should precede all the authentication and authorisation paths. Defaults to `/.auth` *)
  require_authentication : bool prop option; [@option]
      (** Should the authentication flow be used for all requests. *)
  require_https : bool prop option; [@option]
      (** Should HTTPS be required on connections? Defaults to true. *)
  runtime_version : string prop option; [@option]
      (** The Runtime Version of the Authentication and Authorisation feature of this App. Defaults to `~1` *)
  unauthenticated_action : string prop option; [@option]
      (** The action to take for requests made without authentication. Possible values include `RedirectToLoginPage`, `AllowAnonymous`, `Return401`, and `Return403`. Defaults to `RedirectToLoginPage`. *)
  active_directory_v2 : auth_settings_v2__active_directory_v2 list;
  apple_v2 : auth_settings_v2__apple_v2 list;
  azure_static_web_app_v2 :
    auth_settings_v2__azure_static_web_app_v2 list;
  custom_oidc_v2 : auth_settings_v2__custom_oidc_v2 list;
  facebook_v2 : auth_settings_v2__facebook_v2 list;
  github_v2 : auth_settings_v2__github_v2 list;
  google_v2 : auth_settings_v2__google_v2 list;
  login : auth_settings_v2__login list;
  microsoft_v2 : auth_settings_v2__microsoft_v2 list;
  twitter_v2 : auth_settings_v2__twitter_v2 list;
}
[@@deriving yojson_of]
(** auth_settings_v2 *)

type backup__schedule = {
  frequency_interval : float prop;
      (** How often the backup should be executed (e.g. for weekly backup, this should be set to `7` and `frequency_unit` should be set to `Day`). *)
  frequency_unit : string prop;
      (** The unit of time for how often the backup should take place. Possible values include: `Day` and `Hour`. *)
  keep_at_least_one_backup : bool prop option; [@option]
      (** Should the service keep at least one backup, regardless of age of backup. Defaults to `false`. *)
  retention_period_days : float prop option; [@option]
      (** After how many days backups should be deleted. *)
  start_time : string prop option; [@option]
      (** When the schedule should start working in RFC-3339 format. *)
}
[@@deriving yojson_of]
(** backup__schedule *)

type backup = {
  enabled : bool prop option; [@option]
      (** Should this backup job be enabled? *)
  name : string prop;
      (** The name which should be used for this Backup. *)
  storage_account_url : string prop;
      (** The SAS URL to the container. *)
  schedule : backup__schedule list;
}
[@@deriving yojson_of]
(** backup *)

type connection_string = {
  name : string prop;
      (** The name which should be used for this Connection. *)
  type_ : string prop; [@key "type"]
      (** Type of database. Possible values include: `MySQL`, `SQLServer`, `SQLAzure`, `Custom`, `NotificationHub`, `ServiceBus`, `EventHub`, `APIHub`, `DocDb`, `RedisCache`, and `PostgreSQL`. *)
  value : string prop;  (** The connection string value. *)
}
[@@deriving yojson_of]
(** connection_string *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type site_config__app_service_logs = {
  disk_quota_mb : float prop option; [@option]
      (** The amount of disk space to use for logs. Valid values are between `25` and `100`. *)
  retention_period_days : float prop option; [@option]
      (** The retention period for logs in days. Valid values are between `0` and `99999`. Defaults to `0` (never delete). *)
}
[@@deriving yojson_of]
(** site_config__app_service_logs *)

type site_config__application_stack = {
  dotnet_version : string prop option; [@option]
      (** The version of .Net. Possible values are `v3.0`, `v4.0`, `v6.0` and `v7.0` *)
  java_version : string prop option; [@option]
      (** The version of Java to use. Possible values are `1.8`, `11` and `17` *)
  node_version : string prop option; [@option]
      (** The version of Node to use. Possible values include `12`, `14`, `16` and `18` *)
  powershell_core_version : string prop option; [@option]
      (** The PowerShell Core version to use. Possible values are `7`, and `7.2` *)
  use_custom_runtime : bool prop option; [@option]
      (** Does the Function App use a custom Application Stack? *)
  use_dotnet_isolated_runtime : bool prop option; [@option]
      (** Should the DotNet process use an isolated runtime. Defaults to `false`. *)
}
[@@deriving yojson_of]
(** site_config__application_stack *)

type site_config__cors = {
  allowed_origins : string prop list option; [@option]
      (** Specifies a list of origins that should be allowed to make cross-origin calls. *)
  support_credentials : bool prop option; [@option]
      (** Are credentials allowed in CORS requests? Defaults to `false`. *)
}
[@@deriving yojson_of]
(** site_config__cors *)

type site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type site_config__ip_restriction = {
  action : string prop option; [@option]
      (** The action to take. Possible values are `Allow` or `Deny`. *)
  description : string prop option; [@option]
      (** The description of the IP restriction rule. *)
  headers : site_config__ip_restriction__headers list option;
      [@option]
      (** headers *)
  ip_address : string prop option; [@option]
      (** The CIDR notation of the IP or IP Range to match. For example: `10.0.0.0/24` or `192.168.10.1/32` or `fe80::/64` or `13.107.6.152/31,13.107.128.0/22` *)
  name : string prop option; [@option]
      (** The name which should be used for this `ip_restriction`. *)
  priority : float prop option; [@option]
      (** The priority value of this `ip_restriction`. *)
  service_tag : string prop option; [@option]
      (** The Service Tag used for this IP Restriction. *)
  virtual_network_subnet_id : string prop option; [@option]
      (** The Virtual Network Subnet ID used for this IP Restriction. *)
}
[@@deriving yojson_of]
(** site_config__ip_restriction *)

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type site_config__scm_ip_restriction = {
  action : string prop option; [@option]
      (** The action to take. Possible values are `Allow` or `Deny`. *)
  description : string prop option; [@option]
      (** The description of the IP restriction rule. *)
  headers : site_config__scm_ip_restriction__headers list option;
      [@option]
      (** headers *)
  ip_address : string prop option; [@option]
      (** The CIDR notation of the IP or IP Range to match. For example: `10.0.0.0/24` or `192.168.10.1/32` or `fe80::/64` or `13.107.6.152/31,13.107.128.0/22` *)
  name : string prop option; [@option]
      (** The name which should be used for this `ip_restriction`. *)
  priority : float prop option; [@option]
      (** The priority value of this `ip_restriction`. *)
  service_tag : string prop option; [@option]
      (** The Service Tag used for this IP Restriction. *)
  virtual_network_subnet_id : string prop option; [@option]
      (** The Virtual Network Subnet ID used for this IP Restriction. *)
}
[@@deriving yojson_of]
(** site_config__scm_ip_restriction *)

type site_config = {
  always_on : bool prop option; [@option]
      (** If this Windows Web App is Always On enabled. Defaults to `false`. *)
  api_definition_url : string prop option; [@option]
      (** The URL of the API definition that describes this Windows Function App. *)
  api_management_api_id : string prop option; [@option]
      (** The ID of the API Management API for this Windows Function App. *)
  app_command_line : string prop option; [@option]
      (** The program and any arguments used to launch this app via the command line. (Example `node myapp.js`). *)
  app_scale_limit : float prop option; [@option]
      (** The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan. *)
  application_insights_connection_string : string prop option;
      [@option]
      (** The Connection String for linking the Windows Function App to Application Insights. *)
  application_insights_key : string prop option; [@option]
      (** The Instrumentation Key for connecting the Windows Function App to Application Insights. *)
  auto_swap_slot_name : string prop option; [@option]
      (** auto_swap_slot_name *)
  default_documents : string prop list option; [@option]
      (** Specifies a list of Default Documents for the Windows Web App. *)
  elastic_instance_minimum : float prop option; [@option]
      (** The number of minimum instances for this Windows Function App. Only affects apps on Elastic Premium plans. *)
  ftps_state : string prop option; [@option]
      (** State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `Disabled`. *)
  health_check_eviction_time_in_min : float prop option; [@option]
      (** The amount of time in minutes that a node is unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Defaults to `10`. Only valid in conjunction with `health_check_path` *)
  health_check_path : string prop option; [@option]
      (** The path to be checked for this function app health. *)
  http2_enabled : bool prop option; [@option]
      (** Specifies if the http2 protocol should be enabled. Defaults to `false`. *)
  ip_restriction_default_action : string prop option; [@option]
      (** ip_restriction_default_action *)
  load_balancing_mode : string prop option; [@option]
      (** The Site load balancing mode. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted. *)
  managed_pipeline_mode : string prop option; [@option]
      (** The Managed Pipeline mode. Possible values include: `Integrated`, `Classic`. Defaults to `Integrated`. *)
  minimum_tls_version : string prop option; [@option]
      (** The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, and  `1.2`. Defaults to `1.2`. *)
  pre_warmed_instance_count : float prop option; [@option]
      (** The number of pre-warmed instances for this function app. Only affects apps on an Elastic Premium plan. *)
  remote_debugging_enabled : bool prop option; [@option]
      (** Should Remote Debugging be enabled. Defaults to `false`. *)
  remote_debugging_version : string prop option; [@option]
      (** The Remote Debugging Version. Possible values include `VS2017`, `VS2019`, and `VS2022` *)
  runtime_scale_monitoring_enabled : bool prop option; [@option]
      (** Should Functions Runtime Scale Monitoring be enabled. *)
  scm_ip_restriction_default_action : string prop option; [@option]
      (** scm_ip_restriction_default_action *)
  scm_minimum_tls_version : string prop option; [@option]
      (** Configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: `1.0`, `1.1`, and  `1.2`. Defaults to `1.2`. *)
  scm_use_main_ip_restriction : bool prop option; [@option]
      (** Should the Windows Function App `ip_restriction` configuration be used for the SCM also. *)
  use_32_bit_worker : bool prop option; [@option]
      (** Should the Windows Function App use a 32-bit worker. *)
  vnet_route_all_enabled : bool prop option; [@option]
      (** Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to `false`. *)
  websockets_enabled : bool prop option; [@option]
      (** Should Web Sockets be enabled. Defaults to `false`. *)
  worker_count : float prop option; [@option]
      (** The number of Workers for this Windows Function App. *)
  app_service_logs : site_config__app_service_logs list;
  application_stack : site_config__application_stack list;
  cors : site_config__cors list;
  ip_restriction : site_config__ip_restriction list;
  scm_ip_restriction : site_config__scm_ip_restriction list;
}
[@@deriving yojson_of]
(** site_config *)

type storage_account = {
  access_key : string prop;  (** access_key *)
  account_name : string prop;  (** account_name *)
  mount_path : string prop option; [@option]  (** mount_path *)
  name : string prop;  (** name *)
  share_name : string prop;  (** share_name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** storage_account *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type site_credential = {
  name : string prop;  (** name *)
  password : string prop;  (** password *)
}
[@@deriving yojson_of]

type azurerm_windows_function_app_slot = {
  app_settings : (string * string prop) list option; [@option]
      (** A map of key-value pairs for [App Settings](https://docs.microsoft.com/en-us/azure/azure-functions/functions-app-settings) and custom values. *)
  builtin_logging_enabled : bool prop option; [@option]
      (** Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. *)
  client_certificate_enabled : bool prop option; [@option]
      (** Should the Function App Slot use Client Certificates. *)
  client_certificate_exclusion_paths : string prop option; [@option]
      (** Paths to exclude when using client certificates, separated by ; *)
  client_certificate_mode : string prop option; [@option]
      (** The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. *)
  content_share_force_disabled : bool prop option; [@option]
      (** Force disable the content share settings. *)
  daily_memory_time_quota : float prop option; [@option]
      (** The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. *)
  enabled : bool prop option; [@option]
      (** Is the Windows Function App Slot enabled. *)
  ftp_publish_basic_authentication_enabled : bool prop option;
      [@option]
      (** ftp_publish_basic_authentication_enabled *)
  function_app_id : string prop;
      (** The ID of the Windows Function App this Slot is a member of. *)
  functions_extension_version : string prop option; [@option]
      (** The runtime version associated with the Function App Slot. *)
  https_only : bool prop option; [@option]
      (** Can the Function App Slot only be accessed via HTTPS? *)
  id : string prop option; [@option]  (** id *)
  key_vault_reference_identity_id : string prop option; [@option]
      (** The User Assigned Identity to use for Key Vault access. *)
  name : string prop;
      (** Specifies the name of the Windows Function App Slot. *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  service_plan_id : string prop option; [@option]
      (** service_plan_id *)
  storage_account_access_key : string prop option; [@option]
      (** The access key which will be used to access the storage account for the Function App Slot. *)
  storage_account_name : string prop option; [@option]
      (** The backend storage account name which will be used by this Function App Slot. *)
  storage_key_vault_secret_id : string prop option; [@option]
      (** The Key Vault Secret ID, including version, that contains the Connection String to connect to the storage account for this Function App. *)
  storage_uses_managed_identity : bool prop option; [@option]
      (** Should the Function App Slot use its Managed Identity to access storage? *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_network_subnet_id : string prop option; [@option]
      (** virtual_network_subnet_id *)
  webdeploy_publish_basic_authentication_enabled : bool prop option;
      [@option]
      (** webdeploy_publish_basic_authentication_enabled *)
  auth_settings : auth_settings list;
  auth_settings_v2 : auth_settings_v2 list;
  backup : backup list;
  connection_string : connection_string list;
  identity : identity list;
  site_config : site_config list;
  storage_account : storage_account list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_windows_function_app_slot *)

let auth_settings__active_directory ?allowed_audiences ?client_secret
    ?client_secret_setting_name ~client_id () :
    auth_settings__active_directory =
  {
    allowed_audiences;
    client_id;
    client_secret;
    client_secret_setting_name;
  }

let auth_settings__facebook ?app_secret ?app_secret_setting_name
    ?oauth_scopes ~app_id () : auth_settings__facebook =
  { app_id; app_secret; app_secret_setting_name; oauth_scopes }

let auth_settings__github ?client_secret ?client_secret_setting_name
    ?oauth_scopes ~client_id () : auth_settings__github =
  {
    client_id;
    client_secret;
    client_secret_setting_name;
    oauth_scopes;
  }

let auth_settings__google ?client_secret ?client_secret_setting_name
    ?oauth_scopes ~client_id () : auth_settings__google =
  {
    client_id;
    client_secret;
    client_secret_setting_name;
    oauth_scopes;
  }

let auth_settings__microsoft ?client_secret
    ?client_secret_setting_name ?oauth_scopes ~client_id () :
    auth_settings__microsoft =
  {
    client_id;
    client_secret;
    client_secret_setting_name;
    oauth_scopes;
  }

let auth_settings__twitter ?consumer_secret
    ?consumer_secret_setting_name ~consumer_key () :
    auth_settings__twitter =
  { consumer_key; consumer_secret; consumer_secret_setting_name }

let auth_settings ?additional_login_parameters
    ?allowed_external_redirect_urls ?default_provider ?issuer
    ?runtime_version ?token_refresh_extension_hours
    ?token_store_enabled ?unauthenticated_client_action ~enabled
    ~active_directory ~facebook ~github ~google ~microsoft ~twitter
    () : auth_settings =
  {
    additional_login_parameters;
    allowed_external_redirect_urls;
    default_provider;
    enabled;
    issuer;
    runtime_version;
    token_refresh_extension_hours;
    token_store_enabled;
    unauthenticated_client_action;
    active_directory;
    facebook;
    github;
    google;
    microsoft;
    twitter;
  }

let auth_settings_v2__active_directory_v2 ?allowed_applications
    ?allowed_audiences ?allowed_groups ?allowed_identities
    ?client_secret_certificate_thumbprint ?client_secret_setting_name
    ?jwt_allowed_client_applications ?jwt_allowed_groups
    ?login_parameters ?www_authentication_disabled ~client_id
    ~tenant_auth_endpoint () : auth_settings_v2__active_directory_v2
    =
  {
    allowed_applications;
    allowed_audiences;
    allowed_groups;
    allowed_identities;
    client_id;
    client_secret_certificate_thumbprint;
    client_secret_setting_name;
    jwt_allowed_client_applications;
    jwt_allowed_groups;
    login_parameters;
    tenant_auth_endpoint;
    www_authentication_disabled;
  }

let auth_settings_v2__apple_v2 ~client_id ~client_secret_setting_name
    () : auth_settings_v2__apple_v2 =
  { client_id; client_secret_setting_name }

let auth_settings_v2__azure_static_web_app_v2 ~client_id () :
    auth_settings_v2__azure_static_web_app_v2 =
  { client_id }

let auth_settings_v2__custom_oidc_v2 ?name_claim_type ?scopes
    ~client_id ~name ~openid_configuration_endpoint () :
    auth_settings_v2__custom_oidc_v2 =
  {
    client_id;
    name;
    name_claim_type;
    openid_configuration_endpoint;
    scopes;
  }

let auth_settings_v2__facebook_v2 ?graph_api_version ?login_scopes
    ~app_id ~app_secret_setting_name () :
    auth_settings_v2__facebook_v2 =
  {
    app_id;
    app_secret_setting_name;
    graph_api_version;
    login_scopes;
  }

let auth_settings_v2__github_v2 ?login_scopes ~client_id
    ~client_secret_setting_name () : auth_settings_v2__github_v2 =
  { client_id; client_secret_setting_name; login_scopes }

let auth_settings_v2__google_v2 ?allowed_audiences ?login_scopes
    ~client_id ~client_secret_setting_name () :
    auth_settings_v2__google_v2 =
  {
    allowed_audiences;
    client_id;
    client_secret_setting_name;
    login_scopes;
  }

let auth_settings_v2__login ?allowed_external_redirect_urls
    ?cookie_expiration_convention ?cookie_expiration_time
    ?logout_endpoint ?nonce_expiration_time
    ?preserve_url_fragments_for_logins ?token_refresh_extension_time
    ?token_store_enabled ?token_store_path
    ?token_store_sas_setting_name ?validate_nonce () :
    auth_settings_v2__login =
  {
    allowed_external_redirect_urls;
    cookie_expiration_convention;
    cookie_expiration_time;
    logout_endpoint;
    nonce_expiration_time;
    preserve_url_fragments_for_logins;
    token_refresh_extension_time;
    token_store_enabled;
    token_store_path;
    token_store_sas_setting_name;
    validate_nonce;
  }

let auth_settings_v2__microsoft_v2 ?allowed_audiences ?login_scopes
    ~client_id ~client_secret_setting_name () :
    auth_settings_v2__microsoft_v2 =
  {
    allowed_audiences;
    client_id;
    client_secret_setting_name;
    login_scopes;
  }

let auth_settings_v2__twitter_v2 ~consumer_key
    ~consumer_secret_setting_name () : auth_settings_v2__twitter_v2 =
  { consumer_key; consumer_secret_setting_name }

let auth_settings_v2 ?auth_enabled ?config_file_path
    ?default_provider ?excluded_paths ?forward_proxy_convention
    ?forward_proxy_custom_host_header_name
    ?forward_proxy_custom_scheme_header_name ?http_route_api_prefix
    ?require_authentication ?require_https ?runtime_version
    ?unauthenticated_action ~active_directory_v2 ~apple_v2
    ~azure_static_web_app_v2 ~custom_oidc_v2 ~facebook_v2 ~github_v2
    ~google_v2 ~login ~microsoft_v2 ~twitter_v2 () : auth_settings_v2
    =
  {
    auth_enabled;
    config_file_path;
    default_provider;
    excluded_paths;
    forward_proxy_convention;
    forward_proxy_custom_host_header_name;
    forward_proxy_custom_scheme_header_name;
    http_route_api_prefix;
    require_authentication;
    require_https;
    runtime_version;
    unauthenticated_action;
    active_directory_v2;
    apple_v2;
    azure_static_web_app_v2;
    custom_oidc_v2;
    facebook_v2;
    github_v2;
    google_v2;
    login;
    microsoft_v2;
    twitter_v2;
  }

let backup__schedule ?keep_at_least_one_backup ?retention_period_days
    ?start_time ~frequency_interval ~frequency_unit () :
    backup__schedule =
  {
    frequency_interval;
    frequency_unit;
    keep_at_least_one_backup;
    retention_period_days;
    start_time;
  }

let backup ?enabled ~name ~storage_account_url ~schedule () : backup
    =
  { enabled; name; storage_account_url; schedule }

let connection_string ~name ~type_ ~value () : connection_string =
  { name; type_; value }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let site_config__app_service_logs ?disk_quota_mb
    ?retention_period_days () : site_config__app_service_logs =
  { disk_quota_mb; retention_period_days }

let site_config__application_stack ?dotnet_version ?java_version
    ?node_version ?powershell_core_version ?use_custom_runtime
    ?use_dotnet_isolated_runtime () : site_config__application_stack
    =
  {
    dotnet_version;
    java_version;
    node_version;
    powershell_core_version;
    use_custom_runtime;
    use_dotnet_isolated_runtime;
  }

let site_config__cors ?allowed_origins ?support_credentials () :
    site_config__cors =
  { allowed_origins; support_credentials }

let site_config__ip_restriction ?action ?description ?headers
    ?ip_address ?name ?priority ?service_tag
    ?virtual_network_subnet_id () : site_config__ip_restriction =
  {
    action;
    description;
    headers;
    ip_address;
    name;
    priority;
    service_tag;
    virtual_network_subnet_id;
  }

let site_config__scm_ip_restriction ?action ?description ?headers
    ?ip_address ?name ?priority ?service_tag
    ?virtual_network_subnet_id () : site_config__scm_ip_restriction =
  {
    action;
    description;
    headers;
    ip_address;
    name;
    priority;
    service_tag;
    virtual_network_subnet_id;
  }

let site_config ?always_on ?api_definition_url ?api_management_api_id
    ?app_command_line ?app_scale_limit
    ?application_insights_connection_string ?application_insights_key
    ?auto_swap_slot_name ?default_documents ?elastic_instance_minimum
    ?ftps_state ?health_check_eviction_time_in_min ?health_check_path
    ?http2_enabled ?ip_restriction_default_action
    ?load_balancing_mode ?managed_pipeline_mode ?minimum_tls_version
    ?pre_warmed_instance_count ?remote_debugging_enabled
    ?remote_debugging_version ?runtime_scale_monitoring_enabled
    ?scm_ip_restriction_default_action ?scm_minimum_tls_version
    ?scm_use_main_ip_restriction ?use_32_bit_worker
    ?vnet_route_all_enabled ?websockets_enabled ?worker_count
    ~app_service_logs ~application_stack ~cors ~ip_restriction
    ~scm_ip_restriction () : site_config =
  {
    always_on;
    api_definition_url;
    api_management_api_id;
    app_command_line;
    app_scale_limit;
    application_insights_connection_string;
    application_insights_key;
    auto_swap_slot_name;
    default_documents;
    elastic_instance_minimum;
    ftps_state;
    health_check_eviction_time_in_min;
    health_check_path;
    http2_enabled;
    ip_restriction_default_action;
    load_balancing_mode;
    managed_pipeline_mode;
    minimum_tls_version;
    pre_warmed_instance_count;
    remote_debugging_enabled;
    remote_debugging_version;
    runtime_scale_monitoring_enabled;
    scm_ip_restriction_default_action;
    scm_minimum_tls_version;
    scm_use_main_ip_restriction;
    use_32_bit_worker;
    vnet_route_all_enabled;
    websockets_enabled;
    worker_count;
    app_service_logs;
    application_stack;
    cors;
    ip_restriction;
    scm_ip_restriction;
  }

let storage_account ?mount_path ~access_key ~account_name ~name
    ~share_name ~type_ () : storage_account =
  { access_key; account_name; mount_path; name; share_name; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

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
    ~connection_string ~identity ~site_config ~storage_account () :
    azurerm_windows_function_app_slot =
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

type t = {
  app_settings : (string * string) list prop;
  builtin_logging_enabled : bool prop;
  client_certificate_enabled : bool prop;
  client_certificate_exclusion_paths : string prop;
  client_certificate_mode : string prop;
  content_share_force_disabled : bool prop;
  custom_domain_verification_id : string prop;
  daily_memory_time_quota : float prop;
  default_hostname : string prop;
  enabled : bool prop;
  ftp_publish_basic_authentication_enabled : bool prop;
  function_app_id : string prop;
  functions_extension_version : string prop;
  hosting_environment_id : string prop;
  https_only : bool prop;
  id : string prop;
  key_vault_reference_identity_id : string prop;
  kind : string prop;
  name : string prop;
  outbound_ip_address_list : string list prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_address_list : string list prop;
  possible_outbound_ip_addresses : string prop;
  public_network_access_enabled : bool prop;
  service_plan_id : string prop;
  site_credential : site_credential list prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  storage_key_vault_secret_id : string prop;
  storage_uses_managed_identity : bool prop;
  tags : (string * string) list prop;
  virtual_network_subnet_id : string prop;
  webdeploy_publish_basic_authentication_enabled : bool prop;
}

let make ?app_settings ?builtin_logging_enabled
    ?client_certificate_enabled ?client_certificate_exclusion_paths
    ?client_certificate_mode ?content_share_force_disabled
    ?daily_memory_time_quota ?enabled
    ?ftp_publish_basic_authentication_enabled
    ?functions_extension_version ?https_only ?id
    ?key_vault_reference_identity_id ?public_network_access_enabled
    ?service_plan_id ?storage_account_access_key
    ?storage_account_name ?storage_key_vault_secret_id
    ?storage_uses_managed_identity ?tags ?virtual_network_subnet_id
    ?webdeploy_publish_basic_authentication_enabled ?timeouts
    ~function_app_id ~name ~auth_settings ~auth_settings_v2 ~backup
    ~connection_string ~identity ~site_config ~storage_account __id =
  let __type = "azurerm_windows_function_app_slot" in
  let __attrs =
    ({
       app_settings = Prop.computed __type __id "app_settings";
       builtin_logging_enabled =
         Prop.computed __type __id "builtin_logging_enabled";
       client_certificate_enabled =
         Prop.computed __type __id "client_certificate_enabled";
       client_certificate_exclusion_paths =
         Prop.computed __type __id
           "client_certificate_exclusion_paths";
       client_certificate_mode =
         Prop.computed __type __id "client_certificate_mode";
       content_share_force_disabled =
         Prop.computed __type __id "content_share_force_disabled";
       custom_domain_verification_id =
         Prop.computed __type __id "custom_domain_verification_id";
       daily_memory_time_quota =
         Prop.computed __type __id "daily_memory_time_quota";
       default_hostname =
         Prop.computed __type __id "default_hostname";
       enabled = Prop.computed __type __id "enabled";
       ftp_publish_basic_authentication_enabled =
         Prop.computed __type __id
           "ftp_publish_basic_authentication_enabled";
       function_app_id = Prop.computed __type __id "function_app_id";
       functions_extension_version =
         Prop.computed __type __id "functions_extension_version";
       hosting_environment_id =
         Prop.computed __type __id "hosting_environment_id";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       key_vault_reference_identity_id =
         Prop.computed __type __id "key_vault_reference_identity_id";
       kind = Prop.computed __type __id "kind";
       name = Prop.computed __type __id "name";
       outbound_ip_address_list =
         Prop.computed __type __id "outbound_ip_address_list";
       outbound_ip_addresses =
         Prop.computed __type __id "outbound_ip_addresses";
       possible_outbound_ip_address_list =
         Prop.computed __type __id
           "possible_outbound_ip_address_list";
       possible_outbound_ip_addresses =
         Prop.computed __type __id "possible_outbound_ip_addresses";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       service_plan_id = Prop.computed __type __id "service_plan_id";
       site_credential = Prop.computed __type __id "site_credential";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       storage_key_vault_secret_id =
         Prop.computed __type __id "storage_key_vault_secret_id";
       storage_uses_managed_identity =
         Prop.computed __type __id "storage_uses_managed_identity";
       tags = Prop.computed __type __id "tags";
       virtual_network_subnet_id =
         Prop.computed __type __id "virtual_network_subnet_id";
       webdeploy_publish_basic_authentication_enabled =
         Prop.computed __type __id
           "webdeploy_publish_basic_authentication_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_windows_function_app_slot
        (azurerm_windows_function_app_slot ?app_settings
           ?builtin_logging_enabled ?client_certificate_enabled
           ?client_certificate_exclusion_paths
           ?client_certificate_mode ?content_share_force_disabled
           ?daily_memory_time_quota ?enabled
           ?ftp_publish_basic_authentication_enabled
           ?functions_extension_version ?https_only ?id
           ?key_vault_reference_identity_id
           ?public_network_access_enabled ?service_plan_id
           ?storage_account_access_key ?storage_account_name
           ?storage_key_vault_secret_id
           ?storage_uses_managed_identity ?tags
           ?virtual_network_subnet_id
           ?webdeploy_publish_basic_authentication_enabled ?timeouts
           ~function_app_id ~name ~auth_settings ~auth_settings_v2
           ~backup ~connection_string ~identity ~site_config
           ~storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?app_settings ?builtin_logging_enabled
    ?client_certificate_enabled ?client_certificate_exclusion_paths
    ?client_certificate_mode ?content_share_force_disabled
    ?daily_memory_time_quota ?enabled
    ?ftp_publish_basic_authentication_enabled
    ?functions_extension_version ?https_only ?id
    ?key_vault_reference_identity_id ?public_network_access_enabled
    ?service_plan_id ?storage_account_access_key
    ?storage_account_name ?storage_key_vault_secret_id
    ?storage_uses_managed_identity ?tags ?virtual_network_subnet_id
    ?webdeploy_publish_basic_authentication_enabled ?timeouts
    ~function_app_id ~name ~auth_settings ~auth_settings_v2 ~backup
    ~connection_string ~identity ~site_config ~storage_account __id =
  let (r : _ Tf_core.resource) =
    make ?app_settings ?builtin_logging_enabled
      ?client_certificate_enabled ?client_certificate_exclusion_paths
      ?client_certificate_mode ?content_share_force_disabled
      ?daily_memory_time_quota ?enabled
      ?ftp_publish_basic_authentication_enabled
      ?functions_extension_version ?https_only ?id
      ?key_vault_reference_identity_id ?public_network_access_enabled
      ?service_plan_id ?storage_account_access_key
      ?storage_account_name ?storage_key_vault_secret_id
      ?storage_uses_managed_identity ?tags ?virtual_network_subnet_id
      ?webdeploy_publish_basic_authentication_enabled ?timeouts
      ~function_app_id ~name ~auth_settings ~auth_settings_v2 ~backup
      ~connection_string ~identity ~site_config ~storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
