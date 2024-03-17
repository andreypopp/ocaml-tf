(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_identity_platform_config__blocking_functions__forward_inbound_credentials = {
  access_token : bool prop option; [@option]
      (** Whether to pass the user's OAuth identity provider's access token. *)
  id_token : bool prop option; [@option]
      (** Whether to pass the user's OIDC identity provider's ID token. *)
  refresh_token : bool prop option; [@option]
      (** Whether to pass the user's OAuth identity provider's refresh token. *)
}
[@@deriving yojson_of]
(** The user credentials to include in the JWT payload that is sent to the registered Blocking Functions. *)

type google_identity_platform_config__blocking_functions__triggers = {
  event_type : string prop;  (** event_type *)
  function_uri : string prop;
      (** HTTP URI trigger for the Cloud Function. *)
  update_time : string prop;  (** When the trigger was changed. *)
}
[@@deriving yojson_of]
(** Map of Trigger to event type. Key should be one of the supported event types: beforeCreate, beforeSignIn. *)

type google_identity_platform_config__blocking_functions = {
  forward_inbound_credentials :
    google_identity_platform_config__blocking_functions__forward_inbound_credentials
    list;
  triggers :
    google_identity_platform_config__blocking_functions__triggers
    list;
}
[@@deriving yojson_of]
(** Configuration related to blocking functions. *)

type google_identity_platform_config__client__permissions = {
  disabled_user_deletion : bool prop option; [@option]
      (** When true, end users cannot delete their account on the associated project through any of our API methods *)
  disabled_user_signup : bool prop option; [@option]
      (** When true, end users cannot sign up for a new account on the associated project through any of our API methods *)
}
[@@deriving yojson_of]
(** Configuration related to restricting a user's ability to affect their account. *)

type google_identity_platform_config__client = {
  api_key : string prop;
      (** API key that can be used when making requests for this project. *)
  firebase_subdomain : string prop;  (** Firebase subdomain. *)
  permissions :
    google_identity_platform_config__client__permissions list;
}
[@@deriving yojson_of]
(** Options related to how clients making requests on behalf of a project should be configured. *)

type google_identity_platform_config__mfa__provider_configs__totp_provider_config = {
  adjacent_intervals : float prop option; [@option]
      (** The allowed number of adjacent intervals that will be used for verification to avoid clock skew. *)
}
[@@deriving yojson_of]
(** TOTP MFA provider config for this project. *)

type google_identity_platform_config__mfa__provider_configs = {
  state : string prop option; [@option]
      (** Whether MultiFactor Authentication has been enabled for this project. Possible values: [DISABLED, ENABLED, MANDATORY] *)
  totp_provider_config :
    google_identity_platform_config__mfa__provider_configs__totp_provider_config
    list;
}
[@@deriving yojson_of]
(** A list of usable second factors for this project along with their configurations.
This field does not support phone based MFA, for that use the 'enabledProviders' field. *)

type google_identity_platform_config__mfa = {
  enabled_providers : string prop list option; [@option]
      (** A list of usable second factors for this project. Possible values: [PHONE_SMS] *)
  state : string prop option; [@option]
      (** Whether MultiFactor Authentication has been enabled for this project. Possible values: [DISABLED, ENABLED, MANDATORY] *)
  provider_configs :
    google_identity_platform_config__mfa__provider_configs list;
}
[@@deriving yojson_of]
(** Options related to how clients making requests on behalf of a project should be configured. *)

type google_identity_platform_config__monitoring__request_logging = {
  enabled : bool prop option; [@option]
      (** Whether logging is enabled for this project or not. *)
}
[@@deriving yojson_of]
(** Configuration for logging requests made to this project to Stackdriver Logging *)

type google_identity_platform_config__monitoring = {
  request_logging :
    google_identity_platform_config__monitoring__request_logging list;
}
[@@deriving yojson_of]
(** Configuration related to monitoring project activity. *)

type google_identity_platform_config__multi_tenant = {
  allow_tenants : bool prop option; [@option]
      (** Whether this project can have tenants or not. *)
  default_tenant_location : string prop option; [@option]
      (** The default cloud parent org or folder that the tenant project should be created under.
The parent resource name should be in the format of /, such as folders/123 or organizations/456.
If the value is not set, the tenant will be created under the same organization or folder as the agent project. *)
}
[@@deriving yojson_of]
(** Configuration related to multi-tenant functionality. *)

type google_identity_platform_config__quota__sign_up_quota_config = {
  quota : float prop option; [@option]
      (** A sign up APIs quota that customers can override temporarily. *)
  quota_duration : string prop option; [@option]
      (** How long this quota will be active for. It is measurred in seconds, e.g., Example: 9.615s. *)
  start_time : string prop option; [@option]
      (** When this quota will take affect. *)
}
[@@deriving yojson_of]
(** Quota for the Signup endpoint, if overwritten. Signup quota is measured in sign ups per project per hour per IP. *)

type google_identity_platform_config__quota = {
  sign_up_quota_config :
    google_identity_platform_config__quota__sign_up_quota_config list;
}
[@@deriving yojson_of]
(** Configuration related to quotas. *)

type google_identity_platform_config__sign_in__anonymous = {
  enabled : bool prop;
      (** Whether anonymous user auth is enabled for the project or not. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticating an anonymous user. *)

type google_identity_platform_config__sign_in__email = {
  enabled : bool prop;
      (** Whether email auth is enabled for the project or not. *)
  password_required : bool prop option; [@option]
      (** Whether a password is required for email auth or not. If true, both an email and
password must be provided to sign in. If false, a user may sign in via either
email/password or email link. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticating a user by their email address. *)

type google_identity_platform_config__sign_in__phone_number = {
  enabled : bool prop;
      (** Whether phone number auth is enabled for the project or not. *)
  test_phone_numbers : (string * string prop) list option; [@option]
      (** A map of <test phone number, fake code> that can be used for phone auth testing. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticated a user by their phone number. *)

type google_identity_platform_config__sign_in__hash_config = {
  algorithm : string prop;  (** algorithm *)
  memory_cost : float prop;  (** memory_cost *)
  rounds : float prop;  (** rounds *)
  salt_separator : string prop;  (** salt_separator *)
  signer_key : string prop;  (** signer_key *)
}
[@@deriving yojson_of]

type google_identity_platform_config__sign_in = {
  allow_duplicate_emails : bool prop option; [@option]
      (** Whether to allow more than one account to have the same email. *)
  hash_config :
    google_identity_platform_config__sign_in__hash_config list;
      (** Output only. Hash config information. *)
  anonymous :
    google_identity_platform_config__sign_in__anonymous list;
  email : google_identity_platform_config__sign_in__email list;
  phone_number :
    google_identity_platform_config__sign_in__phone_number list;
}
[@@deriving yojson_of]
(** Configuration related to local sign in methods. *)

type google_identity_platform_config__sms_region_config__allow_by_default = {
  disallowed_regions : string prop list option; [@option]
      (** Two letter unicode region codes to disallow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json *)
}
[@@deriving yojson_of]
(** A policy of allowing SMS to every region by default and adding disallowed regions to a disallow list. *)

type google_identity_platform_config__sms_region_config__allowlist_only = {
  allowed_regions : string prop list option; [@option]
      (** Two letter unicode region codes to allow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json *)
}
[@@deriving yojson_of]
(** A policy of only allowing regions by explicitly adding them to an allowlist. *)

type google_identity_platform_config__sms_region_config = {
  allow_by_default :
    google_identity_platform_config__sms_region_config__allow_by_default
    list;
  allowlist_only :
    google_identity_platform_config__sms_region_config__allowlist_only
    list;
}
[@@deriving yojson_of]
(** Configures the regions where users are allowed to send verification SMS for the project or tenant. This is based on the calling code of the destination phone number. *)

type google_identity_platform_config__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_identity_platform_config__timeouts *)

type google_identity_platform_config = {
  authorized_domains : string prop list option; [@option]
      (** List of domains authorized for OAuth redirects. *)
  autodelete_anonymous_users : bool prop option; [@option]
      (** Whether anonymous users will be auto-deleted after a period of 30 days *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  blocking_functions :
    google_identity_platform_config__blocking_functions list;
  client : google_identity_platform_config__client list;
  mfa : google_identity_platform_config__mfa list;
  monitoring : google_identity_platform_config__monitoring list;
  multi_tenant : google_identity_platform_config__multi_tenant list;
  quota : google_identity_platform_config__quota list;
  sign_in : google_identity_platform_config__sign_in list;
  sms_region_config :
    google_identity_platform_config__sms_region_config list;
  timeouts : google_identity_platform_config__timeouts option;
}
[@@deriving yojson_of]
(** google_identity_platform_config *)

type t = {
  authorized_domains : string list prop;
  autodelete_anonymous_users : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let google_identity_platform_config ?authorized_domains
    ?autodelete_anonymous_users ?id ?project ?timeouts
    ~blocking_functions ~client ~mfa ~monitoring ~multi_tenant ~quota
    ~sign_in ~sms_region_config __resource_id =
  let __resource_type = "google_identity_platform_config" in
  let __resource =
    ({
       authorized_domains;
       autodelete_anonymous_users;
       id;
       project;
       blocking_functions;
       client;
       mfa;
       monitoring;
       multi_tenant;
       quota;
       sign_in;
       sms_region_config;
       timeouts;
     }
      : google_identity_platform_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_identity_platform_config __resource);
  let __resource_attributes =
    ({
       authorized_domains =
         Prop.computed __resource_type __resource_id
           "authorized_domains";
       autodelete_anonymous_users =
         Prop.computed __resource_type __resource_id
           "autodelete_anonymous_users";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
