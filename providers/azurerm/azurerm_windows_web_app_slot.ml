(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type logs__application_logs__azure_blob_storage = {
  level : string prop;  (** level *)
  retention_in_days : float prop;  (** retention_in_days *)
  sas_url : string prop;  (** sas_url *)
}
[@@deriving yojson_of]
(** logs__application_logs__azure_blob_storage *)

type logs__application_logs = {
  file_system_level : string prop;  (** file_system_level *)
  azure_blob_storage :
    logs__application_logs__azure_blob_storage list;
}
[@@deriving yojson_of]
(** logs__application_logs *)

type logs__http_logs__azure_blob_storage = {
  retention_in_days : float prop option; [@option]
      (** retention_in_days *)
  sas_url : string prop;  (** sas_url *)
}
[@@deriving yojson_of]
(** logs__http_logs__azure_blob_storage *)

type logs__http_logs__file_system = {
  retention_in_days : float prop;  (** retention_in_days *)
  retention_in_mb : float prop;  (** retention_in_mb *)
}
[@@deriving yojson_of]
(** logs__http_logs__file_system *)

type logs__http_logs = {
  azure_blob_storage : logs__http_logs__azure_blob_storage list;
  file_system : logs__http_logs__file_system list;
}
[@@deriving yojson_of]
(** logs__http_logs *)

type logs = {
  detailed_error_messages : bool prop option; [@option]
      (** detailed_error_messages *)
  failed_request_tracing : bool prop option; [@option]
      (** failed_request_tracing *)
  application_logs : logs__application_logs list;
  http_logs : logs__http_logs list;
}
[@@deriving yojson_of]
(** logs *)

type site_config__application_stack = {
  current_stack : string prop option; [@option]  (** current_stack *)
  docker_container_name : string prop option; [@option]
      (** docker_container_name *)
  docker_container_registry : string prop option; [@option]
      (** docker_container_registry *)
  docker_container_tag : string prop option; [@option]
      (** docker_container_tag *)
  docker_image_name : string prop option; [@option]
      (** docker_image_name *)
  docker_registry_password : string prop option; [@option]
      (** docker_registry_password *)
  docker_registry_url : string prop option; [@option]
      (** docker_registry_url *)
  docker_registry_username : string prop option; [@option]
      (** docker_registry_username *)
  dotnet_core_version : string prop option; [@option]
      (** The version of DotNetCore to use. *)
  dotnet_version : string prop option; [@option]
      (** dotnet_version *)
  java_container : string prop option; [@option]
      (** java_container *)
  java_container_version : string prop option; [@option]
      (** java_container_version *)
  java_embedded_server_enabled : bool prop option; [@option]
      (** Should the application use the embedded web server for the version of Java in use. *)
  java_version : string prop option; [@option]  (** java_version *)
  node_version : string prop option; [@option]  (** node_version *)
  php_version : string prop option; [@option]  (** php_version *)
  python : bool prop option; [@option]  (** python *)
  python_version : string prop option; [@option]
      (** python_version *)
  tomcat_version : string prop option; [@option]
      (** tomcat_version *)
}
[@@deriving yojson_of]
(** site_config__application_stack *)

type site_config__auto_heal_setting__action__custom_action = {
  executable : string prop;  (** executable *)
  parameters : string prop option; [@option]  (** parameters *)
}
[@@deriving yojson_of]
(** site_config__auto_heal_setting__action__custom_action *)

type site_config__auto_heal_setting__action = {
  action_type : string prop;  (** action_type *)
  minimum_process_execution_time : string prop option; [@option]
      (** minimum_process_execution_time *)
  custom_action :
    site_config__auto_heal_setting__action__custom_action list;
}
[@@deriving yojson_of]
(** site_config__auto_heal_setting__action *)

type site_config__auto_heal_setting__trigger__requests = {
  count : float prop;  (** count *)
  interval : string prop;  (** interval *)
}
[@@deriving yojson_of]
(** site_config__auto_heal_setting__trigger__requests *)

type site_config__auto_heal_setting__trigger__slow_request = {
  count : float prop;  (** count *)
  interval : string prop;  (** interval *)
  path : string prop option; [@option]  (** path *)
  time_taken : string prop;  (** time_taken *)
}
[@@deriving yojson_of]
(** site_config__auto_heal_setting__trigger__slow_request *)

type site_config__auto_heal_setting__trigger__status_code = {
  count : float prop;  (** count *)
  interval : string prop;  (** interval *)
  path : string prop option; [@option]  (** path *)
  status_code_range : string prop;  (** status_code_range *)
  sub_status : float prop option; [@option]  (** sub_status *)
  win32_status_code : float prop option; [@option]
      (** win32_status_code *)
}
[@@deriving yojson_of]
(** site_config__auto_heal_setting__trigger__status_code *)

type site_config__auto_heal_setting__trigger = {
  private_memory_kb : float prop option; [@option]
      (** private_memory_kb *)
  requests : site_config__auto_heal_setting__trigger__requests list;
  slow_request :
    site_config__auto_heal_setting__trigger__slow_request list;
  status_code :
    site_config__auto_heal_setting__trigger__status_code list;
}
[@@deriving yojson_of]
(** site_config__auto_heal_setting__trigger *)

type site_config__auto_heal_setting = {
  action : site_config__auto_heal_setting__action list;
  trigger : site_config__auto_heal_setting__trigger list;
}
[@@deriving yojson_of]
(** site_config__auto_heal_setting *)

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

type site_config__virtual_application__virtual_directory = {
  physical_path : string prop option; [@option]  (** physical_path *)
  virtual_path : string prop option; [@option]  (** virtual_path *)
}
[@@deriving yojson_of]
(** site_config__virtual_application__virtual_directory *)

type site_config__virtual_application = {
  physical_path : string prop;  (** physical_path *)
  preload : bool prop;  (** preload *)
  virtual_path : string prop;  (** virtual_path *)
  virtual_directory :
    site_config__virtual_application__virtual_directory list;
}
[@@deriving yojson_of]
(** site_config__virtual_application *)

type site_config = {
  always_on : bool prop option; [@option]  (** always_on *)
  api_definition_url : string prop option; [@option]
      (** api_definition_url *)
  api_management_api_id : string prop option; [@option]
      (** api_management_api_id *)
  app_command_line : string prop option; [@option]
      (** app_command_line *)
  auto_heal_enabled : bool prop option; [@option]
      (** auto_heal_enabled *)
  auto_swap_slot_name : string prop option; [@option]
      (** auto_swap_slot_name *)
  container_registry_managed_identity_client_id : string prop option;
      [@option]
      (** container_registry_managed_identity_client_id *)
  container_registry_use_managed_identity : bool prop option;
      [@option]
      (** container_registry_use_managed_identity *)
  default_documents : string prop list option; [@option]
      (** default_documents *)
  ftps_state : string prop option; [@option]  (** ftps_state *)
  health_check_eviction_time_in_min : float prop option; [@option]
      (** The amount of time in minutes that a node is unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Defaults to `10`. Only valid in conjunction with `health_check_path` *)
  health_check_path : string prop option; [@option]
      (** health_check_path *)
  http2_enabled : bool prop option; [@option]  (** http2_enabled *)
  ip_restriction_default_action : string prop option; [@option]
      (** ip_restriction_default_action *)
  load_balancing_mode : string prop option; [@option]
      (** load_balancing_mode *)
  local_mysql_enabled : bool prop option; [@option]
      (** local_mysql_enabled *)
  managed_pipeline_mode : string prop option; [@option]
      (** managed_pipeline_mode *)
  minimum_tls_version : string prop option; [@option]
      (** minimum_tls_version *)
  remote_debugging_enabled : bool prop option; [@option]
      (** remote_debugging_enabled *)
  remote_debugging_version : string prop option; [@option]
      (** remote_debugging_version *)
  scm_ip_restriction_default_action : string prop option; [@option]
      (** scm_ip_restriction_default_action *)
  scm_minimum_tls_version : string prop option; [@option]
      (** scm_minimum_tls_version *)
  scm_use_main_ip_restriction : bool prop option; [@option]
      (** scm_use_main_ip_restriction *)
  use_32_bit_worker : bool prop option; [@option]
      (** use_32_bit_worker *)
  vnet_route_all_enabled : bool prop option; [@option]
      (** Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to `false`. *)
  websockets_enabled : bool prop option; [@option]
      (** websockets_enabled *)
  worker_count : float prop option; [@option]  (** worker_count *)
  application_stack : site_config__application_stack list;
  auto_heal_setting : site_config__auto_heal_setting list;
  cors : site_config__cors list;
  ip_restriction : site_config__ip_restriction list;
  scm_ip_restriction : site_config__scm_ip_restriction list;
  virtual_application : site_config__virtual_application list;
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

type azurerm_windows_web_app_slot = {
  app_service_id : string prop;  (** app_service_id *)
  app_settings : (string * string prop) list option; [@option]
      (** app_settings *)
  client_affinity_enabled : bool prop option; [@option]
      (** client_affinity_enabled *)
  client_certificate_enabled : bool prop option; [@option]
      (** client_certificate_enabled *)
  client_certificate_exclusion_paths : string prop option; [@option]
      (** Paths to exclude when using client certificates, separated by ; *)
  client_certificate_mode : string prop option; [@option]
      (** client_certificate_mode *)
  enabled : bool prop option; [@option]  (** enabled *)
  ftp_publish_basic_authentication_enabled : bool prop option;
      [@option]
      (** ftp_publish_basic_authentication_enabled *)
  https_only : bool prop option; [@option]  (** https_only *)
  id : string prop option; [@option]  (** id *)
  key_vault_reference_identity_id : string prop option; [@option]
      (** key_vault_reference_identity_id *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  service_plan_id : string prop option; [@option]
      (** service_plan_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_network_subnet_id : string prop option; [@option]
      (** virtual_network_subnet_id *)
  webdeploy_publish_basic_authentication_enabled : bool prop option;
      [@option]
      (** webdeploy_publish_basic_authentication_enabled *)
  zip_deploy_file : string prop option; [@option]
      (** The local path and filename of the Zip packaged application to deploy to this Windows Web App. **Note:** Using this value requires `WEBSITE_RUN_FROM_PACKAGE=1` on the App in `app_settings`. *)
  auth_settings : auth_settings list;
  auth_settings_v2 : auth_settings_v2 list;
  backup : backup list;
  connection_string : connection_string list;
  identity : identity list;
  logs : logs list;
  site_config : site_config list;
  storage_account : storage_account list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_windows_web_app_slot *)

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

let logs__application_logs__azure_blob_storage ~level
    ~retention_in_days ~sas_url () :
    logs__application_logs__azure_blob_storage =
  { level; retention_in_days; sas_url }

let logs__application_logs ~file_system_level ~azure_blob_storage ()
    : logs__application_logs =
  { file_system_level; azure_blob_storage }

let logs__http_logs__azure_blob_storage ?retention_in_days ~sas_url
    () : logs__http_logs__azure_blob_storage =
  { retention_in_days; sas_url }

let logs__http_logs__file_system ~retention_in_days ~retention_in_mb
    () : logs__http_logs__file_system =
  { retention_in_days; retention_in_mb }

let logs__http_logs ~azure_blob_storage ~file_system () :
    logs__http_logs =
  { azure_blob_storage; file_system }

let logs ?detailed_error_messages ?failed_request_tracing
    ~application_logs ~http_logs () : logs =
  {
    detailed_error_messages;
    failed_request_tracing;
    application_logs;
    http_logs;
  }

let site_config__application_stack ?current_stack
    ?docker_container_name ?docker_container_registry
    ?docker_container_tag ?docker_image_name
    ?docker_registry_password ?docker_registry_url
    ?docker_registry_username ?dotnet_core_version ?dotnet_version
    ?java_container ?java_container_version
    ?java_embedded_server_enabled ?java_version ?node_version
    ?php_version ?python ?python_version ?tomcat_version () :
    site_config__application_stack =
  {
    current_stack;
    docker_container_name;
    docker_container_registry;
    docker_container_tag;
    docker_image_name;
    docker_registry_password;
    docker_registry_url;
    docker_registry_username;
    dotnet_core_version;
    dotnet_version;
    java_container;
    java_container_version;
    java_embedded_server_enabled;
    java_version;
    node_version;
    php_version;
    python;
    python_version;
    tomcat_version;
  }

let site_config__auto_heal_setting__action__custom_action ?parameters
    ~executable () :
    site_config__auto_heal_setting__action__custom_action =
  { executable; parameters }

let site_config__auto_heal_setting__action
    ?minimum_process_execution_time ~action_type ~custom_action () :
    site_config__auto_heal_setting__action =
  { action_type; minimum_process_execution_time; custom_action }

let site_config__auto_heal_setting__trigger__requests ~count
    ~interval () : site_config__auto_heal_setting__trigger__requests
    =
  { count; interval }

let site_config__auto_heal_setting__trigger__slow_request ?path
    ~count ~interval ~time_taken () :
    site_config__auto_heal_setting__trigger__slow_request =
  { count; interval; path; time_taken }

let site_config__auto_heal_setting__trigger__status_code ?path
    ?sub_status ?win32_status_code ~count ~interval
    ~status_code_range () :
    site_config__auto_heal_setting__trigger__status_code =
  {
    count;
    interval;
    path;
    status_code_range;
    sub_status;
    win32_status_code;
  }

let site_config__auto_heal_setting__trigger ?private_memory_kb
    ~requests ~slow_request ~status_code () :
    site_config__auto_heal_setting__trigger =
  { private_memory_kb; requests; slow_request; status_code }

let site_config__auto_heal_setting ~action ~trigger () :
    site_config__auto_heal_setting =
  { action; trigger }

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

let site_config__virtual_application__virtual_directory
    ?physical_path ?virtual_path () :
    site_config__virtual_application__virtual_directory =
  { physical_path; virtual_path }

let site_config__virtual_application ~physical_path ~preload
    ~virtual_path ~virtual_directory () :
    site_config__virtual_application =
  { physical_path; preload; virtual_path; virtual_directory }

let site_config ?always_on ?api_definition_url ?api_management_api_id
    ?app_command_line ?auto_heal_enabled ?auto_swap_slot_name
    ?container_registry_managed_identity_client_id
    ?container_registry_use_managed_identity ?default_documents
    ?ftps_state ?health_check_eviction_time_in_min ?health_check_path
    ?http2_enabled ?ip_restriction_default_action
    ?load_balancing_mode ?local_mysql_enabled ?managed_pipeline_mode
    ?minimum_tls_version ?remote_debugging_enabled
    ?remote_debugging_version ?scm_ip_restriction_default_action
    ?scm_minimum_tls_version ?scm_use_main_ip_restriction
    ?use_32_bit_worker ?vnet_route_all_enabled ?websockets_enabled
    ?worker_count ~application_stack ~auto_heal_setting ~cors
    ~ip_restriction ~scm_ip_restriction ~virtual_application () :
    site_config =
  {
    always_on;
    api_definition_url;
    api_management_api_id;
    app_command_line;
    auto_heal_enabled;
    auto_swap_slot_name;
    container_registry_managed_identity_client_id;
    container_registry_use_managed_identity;
    default_documents;
    ftps_state;
    health_check_eviction_time_in_min;
    health_check_path;
    http2_enabled;
    ip_restriction_default_action;
    load_balancing_mode;
    local_mysql_enabled;
    managed_pipeline_mode;
    minimum_tls_version;
    remote_debugging_enabled;
    remote_debugging_version;
    scm_ip_restriction_default_action;
    scm_minimum_tls_version;
    scm_use_main_ip_restriction;
    use_32_bit_worker;
    vnet_route_all_enabled;
    websockets_enabled;
    worker_count;
    application_stack;
    auto_heal_setting;
    cors;
    ip_restriction;
    scm_ip_restriction;
    virtual_application;
  }

let storage_account ?mount_path ~access_key ~account_name ~name
    ~share_name ~type_ () : storage_account =
  { access_key; account_name; mount_path; name; share_name; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_windows_web_app_slot ?app_settings
    ?client_affinity_enabled ?client_certificate_enabled
    ?client_certificate_exclusion_paths ?client_certificate_mode
    ?enabled ?ftp_publish_basic_authentication_enabled ?https_only
    ?id ?key_vault_reference_identity_id
    ?public_network_access_enabled ?service_plan_id ?tags
    ?virtual_network_subnet_id
    ?webdeploy_publish_basic_authentication_enabled ?zip_deploy_file
    ?timeouts ~app_service_id ~name ~auth_settings ~auth_settings_v2
    ~backup ~connection_string ~identity ~logs ~site_config
    ~storage_account () : azurerm_windows_web_app_slot =
  {
    app_service_id;
    app_settings;
    client_affinity_enabled;
    client_certificate_enabled;
    client_certificate_exclusion_paths;
    client_certificate_mode;
    enabled;
    ftp_publish_basic_authentication_enabled;
    https_only;
    id;
    key_vault_reference_identity_id;
    name;
    public_network_access_enabled;
    service_plan_id;
    tags;
    virtual_network_subnet_id;
    webdeploy_publish_basic_authentication_enabled;
    zip_deploy_file;
    auth_settings;
    auth_settings_v2;
    backup;
    connection_string;
    identity;
    logs;
    site_config;
    storage_account;
    timeouts;
  }

type t = {
  app_service_id : string prop;
  app_settings : (string * string) list prop;
  client_affinity_enabled : bool prop;
  client_certificate_enabled : bool prop;
  client_certificate_exclusion_paths : string prop;
  client_certificate_mode : string prop;
  custom_domain_verification_id : string prop;
  default_hostname : string prop;
  enabled : bool prop;
  ftp_publish_basic_authentication_enabled : bool prop;
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
  tags : (string * string) list prop;
  virtual_network_subnet_id : string prop;
  webdeploy_publish_basic_authentication_enabled : bool prop;
  zip_deploy_file : string prop;
}

let register ?tf_module ?app_settings ?client_affinity_enabled
    ?client_certificate_enabled ?client_certificate_exclusion_paths
    ?client_certificate_mode ?enabled
    ?ftp_publish_basic_authentication_enabled ?https_only ?id
    ?key_vault_reference_identity_id ?public_network_access_enabled
    ?service_plan_id ?tags ?virtual_network_subnet_id
    ?webdeploy_publish_basic_authentication_enabled ?zip_deploy_file
    ?timeouts ~app_service_id ~name ~auth_settings ~auth_settings_v2
    ~backup ~connection_string ~identity ~logs ~site_config
    ~storage_account __resource_id =
  let __resource_type = "azurerm_windows_web_app_slot" in
  let __resource =
    azurerm_windows_web_app_slot ?app_settings
      ?client_affinity_enabled ?client_certificate_enabled
      ?client_certificate_exclusion_paths ?client_certificate_mode
      ?enabled ?ftp_publish_basic_authentication_enabled ?https_only
      ?id ?key_vault_reference_identity_id
      ?public_network_access_enabled ?service_plan_id ?tags
      ?virtual_network_subnet_id
      ?webdeploy_publish_basic_authentication_enabled
      ?zip_deploy_file ?timeouts ~app_service_id ~name ~auth_settings
      ~auth_settings_v2 ~backup ~connection_string ~identity ~logs
      ~site_config ~storage_account ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_windows_web_app_slot __resource);
  let __resource_attributes =
    ({
       app_service_id =
         Prop.computed __resource_type __resource_id "app_service_id";
       app_settings =
         Prop.computed __resource_type __resource_id "app_settings";
       client_affinity_enabled =
         Prop.computed __resource_type __resource_id
           "client_affinity_enabled";
       client_certificate_enabled =
         Prop.computed __resource_type __resource_id
           "client_certificate_enabled";
       client_certificate_exclusion_paths =
         Prop.computed __resource_type __resource_id
           "client_certificate_exclusion_paths";
       client_certificate_mode =
         Prop.computed __resource_type __resource_id
           "client_certificate_mode";
       custom_domain_verification_id =
         Prop.computed __resource_type __resource_id
           "custom_domain_verification_id";
       default_hostname =
         Prop.computed __resource_type __resource_id
           "default_hostname";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       ftp_publish_basic_authentication_enabled =
         Prop.computed __resource_type __resource_id
           "ftp_publish_basic_authentication_enabled";
       hosting_environment_id =
         Prop.computed __resource_type __resource_id
           "hosting_environment_id";
       https_only =
         Prop.computed __resource_type __resource_id "https_only";
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_reference_identity_id =
         Prop.computed __resource_type __resource_id
           "key_vault_reference_identity_id";
       kind = Prop.computed __resource_type __resource_id "kind";
       name = Prop.computed __resource_type __resource_id "name";
       outbound_ip_address_list =
         Prop.computed __resource_type __resource_id
           "outbound_ip_address_list";
       outbound_ip_addresses =
         Prop.computed __resource_type __resource_id
           "outbound_ip_addresses";
       possible_outbound_ip_address_list =
         Prop.computed __resource_type __resource_id
           "possible_outbound_ip_address_list";
       possible_outbound_ip_addresses =
         Prop.computed __resource_type __resource_id
           "possible_outbound_ip_addresses";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       service_plan_id =
         Prop.computed __resource_type __resource_id
           "service_plan_id";
       site_credential =
         Prop.computed __resource_type __resource_id
           "site_credential";
       tags = Prop.computed __resource_type __resource_id "tags";
       virtual_network_subnet_id =
         Prop.computed __resource_type __resource_id
           "virtual_network_subnet_id";
       webdeploy_publish_basic_authentication_enabled =
         Prop.computed __resource_type __resource_id
           "webdeploy_publish_basic_authentication_enabled";
       zip_deploy_file =
         Prop.computed __resource_type __resource_id
           "zip_deploy_file";
     }
      : t)
  in
  __resource_attributes
