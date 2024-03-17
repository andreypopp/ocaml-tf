(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_linux_web_app__auth_settings__active_directory = {
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
(** azurerm_linux_web_app__auth_settings__active_directory *)

type azurerm_linux_web_app__auth_settings__facebook = {
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
(** azurerm_linux_web_app__auth_settings__facebook *)

type azurerm_linux_web_app__auth_settings__github = {
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
(** azurerm_linux_web_app__auth_settings__github *)

type azurerm_linux_web_app__auth_settings__google = {
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
(** azurerm_linux_web_app__auth_settings__google *)

type azurerm_linux_web_app__auth_settings__microsoft = {
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
(** azurerm_linux_web_app__auth_settings__microsoft *)

type azurerm_linux_web_app__auth_settings__twitter = {
  consumer_key : string;
      (** The OAuth 1.0a consumer key of the Twitter application used for sign-in. *)
  consumer_secret : string option; [@option]
      (** The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret_setting_name`. *)
  consumer_secret_setting_name : string option; [@option]
      (** The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret`. *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__auth_settings__twitter *)

type azurerm_linux_web_app__auth_settings = {
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
    azurerm_linux_web_app__auth_settings__active_directory list;
  facebook : azurerm_linux_web_app__auth_settings__facebook list;
  github : azurerm_linux_web_app__auth_settings__github list;
  google : azurerm_linux_web_app__auth_settings__google list;
  microsoft : azurerm_linux_web_app__auth_settings__microsoft list;
  twitter : azurerm_linux_web_app__auth_settings__twitter list;
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__auth_settings *)

type azurerm_linux_web_app__auth_settings_v2__active_directory_v2 = {
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
(** azurerm_linux_web_app__auth_settings_v2__active_directory_v2 *)

type azurerm_linux_web_app__auth_settings_v2__apple_v2 = {
  client_id : string;
      (** The OpenID Connect Client ID for the Apple web application. *)
  client_secret_setting_name : string;
      (** The app setting name that contains the `client_secret` value used for Apple Login. *)
  login_scopes : string list;  (** login_scopes *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__auth_settings_v2__apple_v2 *)

type azurerm_linux_web_app__auth_settings_v2__azure_static_web_app_v2 = {
  client_id : string;
      (** The ID of the Client to use to authenticate with Azure Static Web App Authentication. *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__auth_settings_v2__azure_static_web_app_v2 *)

type azurerm_linux_web_app__auth_settings_v2__custom_oidc_v2 = {
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
(** azurerm_linux_web_app__auth_settings_v2__custom_oidc_v2 *)

type azurerm_linux_web_app__auth_settings_v2__facebook_v2 = {
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
(** azurerm_linux_web_app__auth_settings_v2__facebook_v2 *)

type azurerm_linux_web_app__auth_settings_v2__github_v2 = {
  client_id : string;
      (** The ID of the GitHub app used for login. *)
  client_secret_setting_name : string;
      (** The app setting name that contains the `client_secret` value used for GitHub Login. *)
  login_scopes : string list option; [@option]
      (** Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub Login authentication. *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__auth_settings_v2__github_v2 *)

type azurerm_linux_web_app__auth_settings_v2__google_v2 = {
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
(** azurerm_linux_web_app__auth_settings_v2__google_v2 *)

type azurerm_linux_web_app__auth_settings_v2__login = {
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
(** azurerm_linux_web_app__auth_settings_v2__login *)

type azurerm_linux_web_app__auth_settings_v2__microsoft_v2 = {
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
(** azurerm_linux_web_app__auth_settings_v2__microsoft_v2 *)

type azurerm_linux_web_app__auth_settings_v2__twitter_v2 = {
  consumer_key : string;
      (** The OAuth 1.0a consumer key of the Twitter application used for sign-in. *)
  consumer_secret_setting_name : string;
      (** The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__auth_settings_v2__twitter_v2 *)

type azurerm_linux_web_app__auth_settings_v2 = {
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
    azurerm_linux_web_app__auth_settings_v2__active_directory_v2 list;
  apple_v2 : azurerm_linux_web_app__auth_settings_v2__apple_v2 list;
  azure_static_web_app_v2 :
    azurerm_linux_web_app__auth_settings_v2__azure_static_web_app_v2
    list;
  custom_oidc_v2 :
    azurerm_linux_web_app__auth_settings_v2__custom_oidc_v2 list;
  facebook_v2 :
    azurerm_linux_web_app__auth_settings_v2__facebook_v2 list;
  github_v2 :
    azurerm_linux_web_app__auth_settings_v2__github_v2 list;
  google_v2 :
    azurerm_linux_web_app__auth_settings_v2__google_v2 list;
  login : azurerm_linux_web_app__auth_settings_v2__login list;
  microsoft_v2 :
    azurerm_linux_web_app__auth_settings_v2__microsoft_v2 list;
  twitter_v2 :
    azurerm_linux_web_app__auth_settings_v2__twitter_v2 list;
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__auth_settings_v2 *)

type azurerm_linux_web_app__backup__schedule = {
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
(** azurerm_linux_web_app__backup__schedule *)

type azurerm_linux_web_app__backup = {
  enabled : bool option; [@option]
      (** Should this backup job be enabled? *)
  name : string;
      (** The name which should be used for this Backup. *)
  storage_account_url : string;  (** The SAS URL to the container. *)
  schedule : azurerm_linux_web_app__backup__schedule list;
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__backup *)

type azurerm_linux_web_app__connection_string = {
  name : string;
      (** The name which should be used for this Connection. *)
  type_ : string; [@key "type"]
      (** Type of database. Possible values include: `MySQL`, `SQLServer`, `SQLAzure`, `Custom`, `NotificationHub`, `ServiceBus`, `EventHub`, `APIHub`, `DocDb`, `RedisCache`, and `PostgreSQL`. *)
  value : string;  (** The connection string value. *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__connection_string *)

type azurerm_linux_web_app__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__identity *)

type azurerm_linux_web_app__logs__application_logs__azure_blob_storage = {
  level : string;  (** level *)
  retention_in_days : float;  (** retention_in_days *)
  sas_url : string;  (** sas_url *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__logs__application_logs__azure_blob_storage *)

type azurerm_linux_web_app__logs__application_logs = {
  file_system_level : string;  (** file_system_level *)
  azure_blob_storage :
    azurerm_linux_web_app__logs__application_logs__azure_blob_storage
    list;
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__logs__application_logs *)

type azurerm_linux_web_app__logs__http_logs__azure_blob_storage = {
  retention_in_days : float option; [@option]
      (** retention_in_days *)
  sas_url : string;  (** sas_url *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__logs__http_logs__azure_blob_storage *)

type azurerm_linux_web_app__logs__http_logs__file_system = {
  retention_in_days : float;  (** retention_in_days *)
  retention_in_mb : float;  (** retention_in_mb *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__logs__http_logs__file_system *)

type azurerm_linux_web_app__logs__http_logs = {
  azure_blob_storage :
    azurerm_linux_web_app__logs__http_logs__azure_blob_storage list;
  file_system :
    azurerm_linux_web_app__logs__http_logs__file_system list;
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__logs__http_logs *)

type azurerm_linux_web_app__logs = {
  detailed_error_messages : bool option; [@option]
      (** detailed_error_messages *)
  failed_request_tracing : bool option; [@option]
      (** failed_request_tracing *)
  application_logs :
    azurerm_linux_web_app__logs__application_logs list;
  http_logs : azurerm_linux_web_app__logs__http_logs list;
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__logs *)

type azurerm_linux_web_app__site_config__application_stack = {
  docker_image : string option; [@option]  (** docker_image *)
  docker_image_name : string option; [@option]
      (** docker_image_name *)
  docker_image_tag : string option; [@option]
      (** docker_image_tag *)
  docker_registry_password : string option; [@option]
      (** docker_registry_password *)
  docker_registry_url : string option; [@option]
      (** docker_registry_url *)
  docker_registry_username : string option; [@option]
      (** docker_registry_username *)
  dotnet_version : string option; [@option]  (** dotnet_version *)
  go_version : string option; [@option]  (** go_version *)
  java_server : string option; [@option]  (** java_server *)
  java_server_version : string option; [@option]
      (** java_server_version *)
  java_version : string option; [@option]  (** java_version *)
  node_version : string option; [@option]  (** node_version *)
  php_version : string option; [@option]  (** php_version *)
  python_version : string option; [@option]  (** python_version *)
  ruby_version : string option; [@option]  (** ruby_version *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__site_config__application_stack *)

type azurerm_linux_web_app__site_config__auto_heal_setting__action = {
  action_type : string;  (** action_type *)
  minimum_process_execution_time : string option; [@option]
      (** minimum_process_execution_time *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__site_config__auto_heal_setting__action *)

type azurerm_linux_web_app__site_config__auto_heal_setting__trigger__requests = {
  count : float;  (** count *)
  interval : string;  (** interval *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__site_config__auto_heal_setting__trigger__requests *)

type azurerm_linux_web_app__site_config__auto_heal_setting__trigger__slow_request = {
  count : float;  (** count *)
  interval : string;  (** interval *)
  path : string option; [@option]  (** path *)
  time_taken : string;  (** time_taken *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__site_config__auto_heal_setting__trigger__slow_request *)

type azurerm_linux_web_app__site_config__auto_heal_setting__trigger__status_code = {
  count : float;  (** count *)
  interval : string;  (** interval *)
  path : string option; [@option]  (** path *)
  status_code_range : string;  (** status_code_range *)
  sub_status : float option; [@option]  (** sub_status *)
  win32_status_code : float option; [@option]
      (** win32_status_code *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__site_config__auto_heal_setting__trigger__status_code *)

type azurerm_linux_web_app__site_config__auto_heal_setting__trigger = {
  requests :
    azurerm_linux_web_app__site_config__auto_heal_setting__trigger__requests
    list;
  slow_request :
    azurerm_linux_web_app__site_config__auto_heal_setting__trigger__slow_request
    list;
  status_code :
    azurerm_linux_web_app__site_config__auto_heal_setting__trigger__status_code
    list;
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__site_config__auto_heal_setting__trigger *)

type azurerm_linux_web_app__site_config__auto_heal_setting = {
  action :
    azurerm_linux_web_app__site_config__auto_heal_setting__action
    list;
  trigger :
    azurerm_linux_web_app__site_config__auto_heal_setting__trigger
    list;
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__site_config__auto_heal_setting *)

type azurerm_linux_web_app__site_config__cors = {
  allowed_origins : string list option; [@option]
      (** Specifies a list of origins that should be allowed to make cross-origin calls. *)
  support_credentials : bool option; [@option]
      (** Are credentials allowed in CORS requests? Defaults to `false`. *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__site_config__cors *)

type azurerm_linux_web_app__site_config__ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_linux_web_app__site_config__ip_restriction = {
  action : string option; [@option]
      (** The action to take. Possible values are `Allow` or `Deny`. *)
  description : string option; [@option]
      (** The description of the IP restriction rule. *)
  headers :
    azurerm_linux_web_app__site_config__ip_restriction__headers list
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
(** azurerm_linux_web_app__site_config__ip_restriction *)

type azurerm_linux_web_app__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_linux_web_app__site_config__scm_ip_restriction = {
  action : string option; [@option]
      (** The action to take. Possible values are `Allow` or `Deny`. *)
  description : string option; [@option]
      (** The description of the IP restriction rule. *)
  headers :
    azurerm_linux_web_app__site_config__scm_ip_restriction__headers
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
(** azurerm_linux_web_app__site_config__scm_ip_restriction *)

type azurerm_linux_web_app__site_config = {
  always_on : bool option; [@option]  (** always_on *)
  api_definition_url : string option; [@option]
      (** api_definition_url *)
  api_management_api_id : string option; [@option]
      (** api_management_api_id *)
  app_command_line : string option; [@option]
      (** app_command_line *)
  auto_heal_enabled : bool option; [@option]
      (** auto_heal_enabled *)
  container_registry_managed_identity_client_id : string option;
      [@option]
      (** container_registry_managed_identity_client_id *)
  container_registry_use_managed_identity : bool option; [@option]
      (** container_registry_use_managed_identity *)
  default_documents : string list option; [@option]
      (** default_documents *)
  detailed_error_logging_enabled : bool;
      (** detailed_error_logging_enabled *)
  ftps_state : string option; [@option]  (** ftps_state *)
  health_check_eviction_time_in_min : float option; [@option]
      (** The amount of time in minutes that a node is unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Defaults to `10`. Only valid in conjunction with `health_check_path` *)
  health_check_path : string option; [@option]
      (** health_check_path *)
  http2_enabled : bool option; [@option]  (** http2_enabled *)
  ip_restriction_default_action : string option; [@option]
      (** ip_restriction_default_action *)
  linux_fx_version : string;  (** linux_fx_version *)
  load_balancing_mode : string option; [@option]
      (** load_balancing_mode *)
  local_mysql_enabled : bool option; [@option]
      (** local_mysql_enabled *)
  managed_pipeline_mode : string option; [@option]
      (** managed_pipeline_mode *)
  minimum_tls_version : string option; [@option]
      (** minimum_tls_version *)
  remote_debugging_enabled : bool option; [@option]
      (** remote_debugging_enabled *)
  remote_debugging_version : string option; [@option]
      (** remote_debugging_version *)
  scm_ip_restriction_default_action : string option; [@option]
      (** scm_ip_restriction_default_action *)
  scm_minimum_tls_version : string option; [@option]
      (** scm_minimum_tls_version *)
  scm_type : string;  (** scm_type *)
  scm_use_main_ip_restriction : bool option; [@option]
      (** scm_use_main_ip_restriction *)
  use_32_bit_worker : bool option; [@option]
      (** use_32_bit_worker *)
  vnet_route_all_enabled : bool option; [@option]
      (** Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to `false`. *)
  websockets_enabled : bool option; [@option]
      (** websockets_enabled *)
  worker_count : float option; [@option]  (** worker_count *)
  application_stack :
    azurerm_linux_web_app__site_config__application_stack list;
  auto_heal_setting :
    azurerm_linux_web_app__site_config__auto_heal_setting list;
  cors : azurerm_linux_web_app__site_config__cors list;
  ip_restriction :
    azurerm_linux_web_app__site_config__ip_restriction list;
  scm_ip_restriction :
    azurerm_linux_web_app__site_config__scm_ip_restriction list;
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__site_config *)

type azurerm_linux_web_app__sticky_settings = {
  app_setting_names : string list option; [@option]
      (** app_setting_names *)
  connection_string_names : string list option; [@option]
      (** connection_string_names *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__sticky_settings *)

type azurerm_linux_web_app__storage_account = {
  access_key : string;  (** access_key *)
  account_name : string;  (** account_name *)
  mount_path : string option; [@option]  (** mount_path *)
  name : string;  (** name *)
  share_name : string;  (** share_name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__storage_account *)

type azurerm_linux_web_app__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_linux_web_app__timeouts *)

type azurerm_linux_web_app__site_credential = {
  name : string;  (** name *)
  password : string;  (** password *)
}
[@@deriving yojson_of]

type azurerm_linux_web_app = {
  app_settings : (string * string) list option; [@option]
      (** app_settings *)
  client_affinity_enabled : bool option; [@option]
      (** client_affinity_enabled *)
  client_certificate_enabled : bool option; [@option]
      (** client_certificate_enabled *)
  client_certificate_exclusion_paths : string option; [@option]
      (** Paths to exclude when using client certificates, separated by ; *)
  client_certificate_mode : string option; [@option]
      (** client_certificate_mode *)
  enabled : bool option; [@option]  (** enabled *)
  ftp_publish_basic_authentication_enabled : bool option; [@option]
      (** ftp_publish_basic_authentication_enabled *)
  https_only : bool option; [@option]  (** https_only *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  service_plan_id : string;  (** service_plan_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_network_subnet_id : string option; [@option]
      (** virtual_network_subnet_id *)
  webdeploy_publish_basic_authentication_enabled : bool option;
      [@option]
      (** webdeploy_publish_basic_authentication_enabled *)
  auth_settings : azurerm_linux_web_app__auth_settings list;
  auth_settings_v2 : azurerm_linux_web_app__auth_settings_v2 list;
  backup : azurerm_linux_web_app__backup list;
  connection_string : azurerm_linux_web_app__connection_string list;
  identity : azurerm_linux_web_app__identity list;
  logs : azurerm_linux_web_app__logs list;
  site_config : azurerm_linux_web_app__site_config list;
  sticky_settings : azurerm_linux_web_app__sticky_settings list;
  storage_account : azurerm_linux_web_app__storage_account list;
  timeouts : azurerm_linux_web_app__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_linux_web_app *)

let azurerm_linux_web_app ?app_settings ?client_affinity_enabled
    ?client_certificate_enabled ?client_certificate_exclusion_paths
    ?client_certificate_mode ?enabled
    ?ftp_publish_basic_authentication_enabled ?https_only
    ?public_network_access_enabled ?tags ?virtual_network_subnet_id
    ?webdeploy_publish_basic_authentication_enabled ?timeouts
    ~location ~name ~resource_group_name ~service_plan_id
    ~auth_settings ~auth_settings_v2 ~backup ~connection_string
    ~identity ~logs ~site_config ~sticky_settings ~storage_account
    __resource_id =
  let __resource_type = "azurerm_linux_web_app" in
  let __resource =
    {
      app_settings;
      client_affinity_enabled;
      client_certificate_enabled;
      client_certificate_exclusion_paths;
      client_certificate_mode;
      enabled;
      ftp_publish_basic_authentication_enabled;
      https_only;
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
      service_plan_id;
      tags;
      virtual_network_subnet_id;
      webdeploy_publish_basic_authentication_enabled;
      auth_settings;
      auth_settings_v2;
      backup;
      connection_string;
      identity;
      logs;
      site_config;
      sticky_settings;
      storage_account;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_linux_web_app __resource);
  ()
