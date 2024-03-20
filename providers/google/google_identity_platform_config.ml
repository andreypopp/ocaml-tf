(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type blocking_functions__forward_inbound_credentials = {
  access_token : bool prop option; [@option]
      (** Whether to pass the user's OAuth identity provider's access token. *)
  id_token : bool prop option; [@option]
      (** Whether to pass the user's OIDC identity provider's ID token. *)
  refresh_token : bool prop option; [@option]
      (** Whether to pass the user's OAuth identity provider's refresh token. *)
}
[@@deriving yojson_of]
(** The user credentials to include in the JWT payload that is sent to the registered Blocking Functions. *)

type blocking_functions__triggers = {
  event_type : string prop;  (** event_type *)
  function_uri : string prop;
      (** HTTP URI trigger for the Cloud Function. *)
}
[@@deriving yojson_of]
(** Map of Trigger to event type. Key should be one of the supported event types: beforeCreate, beforeSignIn. *)

type blocking_functions = {
  forward_inbound_credentials :
    blocking_functions__forward_inbound_credentials list;
  triggers : blocking_functions__triggers list;
}
[@@deriving yojson_of]
(** Configuration related to blocking functions. *)

type client__permissions = {
  disabled_user_deletion : bool prop option; [@option]
      (** When true, end users cannot delete their account on the associated project through any of our API methods *)
  disabled_user_signup : bool prop option; [@option]
      (** When true, end users cannot sign up for a new account on the associated project through any of our API methods *)
}
[@@deriving yojson_of]
(** Configuration related to restricting a user's ability to affect their account. *)

type client = { permissions : client__permissions list }
[@@deriving yojson_of]
(** Options related to how clients making requests on behalf of a project should be configured. *)

type mfa__provider_configs__totp_provider_config = {
  adjacent_intervals : float prop option; [@option]
      (** The allowed number of adjacent intervals that will be used for verification to avoid clock skew. *)
}
[@@deriving yojson_of]
(** TOTP MFA provider config for this project. *)

type mfa__provider_configs = {
  state : string prop option; [@option]
      (** Whether MultiFactor Authentication has been enabled for this project. Possible values: [DISABLED, ENABLED, MANDATORY] *)
  totp_provider_config :
    mfa__provider_configs__totp_provider_config list;
}
[@@deriving yojson_of]
(** A list of usable second factors for this project along with their configurations.
This field does not support phone based MFA, for that use the 'enabledProviders' field. *)

type mfa = {
  enabled_providers : string prop list option; [@option]
      (** A list of usable second factors for this project. Possible values: [PHONE_SMS] *)
  state : string prop option; [@option]
      (** Whether MultiFactor Authentication has been enabled for this project. Possible values: [DISABLED, ENABLED, MANDATORY] *)
  provider_configs : mfa__provider_configs list;
}
[@@deriving yojson_of]
(** Options related to how clients making requests on behalf of a project should be configured. *)

type monitoring__request_logging = {
  enabled : bool prop option; [@option]
      (** Whether logging is enabled for this project or not. *)
}
[@@deriving yojson_of]
(** Configuration for logging requests made to this project to Stackdriver Logging *)

type monitoring = {
  request_logging : monitoring__request_logging list;
}
[@@deriving yojson_of]
(** Configuration related to monitoring project activity. *)

type multi_tenant = {
  allow_tenants : bool prop option; [@option]
      (** Whether this project can have tenants or not. *)
  default_tenant_location : string prop option; [@option]
      (** The default cloud parent org or folder that the tenant project should be created under.
The parent resource name should be in the format of /, such as folders/123 or organizations/456.
If the value is not set, the tenant will be created under the same organization or folder as the agent project. *)
}
[@@deriving yojson_of]
(** Configuration related to multi-tenant functionality. *)

type quota__sign_up_quota_config = {
  quota : float prop option; [@option]
      (** A sign up APIs quota that customers can override temporarily. *)
  quota_duration : string prop option; [@option]
      (** How long this quota will be active for. It is measurred in seconds, e.g., Example: 9.615s. *)
  start_time : string prop option; [@option]
      (** When this quota will take affect. *)
}
[@@deriving yojson_of]
(** Quota for the Signup endpoint, if overwritten. Signup quota is measured in sign ups per project per hour per IP. *)

type quota = {
  sign_up_quota_config : quota__sign_up_quota_config list;
}
[@@deriving yojson_of]
(** Configuration related to quotas. *)

type sign_in__anonymous = {
  enabled : bool prop;
      (** Whether anonymous user auth is enabled for the project or not. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticating an anonymous user. *)

type sign_in__email = {
  enabled : bool prop;
      (** Whether email auth is enabled for the project or not. *)
  password_required : bool prop option; [@option]
      (** Whether a password is required for email auth or not. If true, both an email and
password must be provided to sign in. If false, a user may sign in via either
email/password or email link. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticating a user by their email address. *)

type sign_in__phone_number = {
  enabled : bool prop;
      (** Whether phone number auth is enabled for the project or not. *)
  test_phone_numbers : (string * string prop) list option; [@option]
      (** A map of <test phone number, fake code> that can be used for phone auth testing. *)
}
[@@deriving yojson_of]
(** Configuration options related to authenticated a user by their phone number. *)

type sign_in__hash_config = {
  algorithm : string prop;  (** algorithm *)
  memory_cost : float prop;  (** memory_cost *)
  rounds : float prop;  (** rounds *)
  salt_separator : string prop;  (** salt_separator *)
  signer_key : string prop;  (** signer_key *)
}
[@@deriving yojson_of]

type sign_in = {
  allow_duplicate_emails : bool prop option; [@option]
      (** Whether to allow more than one account to have the same email. *)
  anonymous : sign_in__anonymous list;
  email : sign_in__email list;
  phone_number : sign_in__phone_number list;
}
[@@deriving yojson_of]
(** Configuration related to local sign in methods. *)

type sms_region_config__allow_by_default = {
  disallowed_regions : string prop list option; [@option]
      (** Two letter unicode region codes to disallow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json *)
}
[@@deriving yojson_of]
(** A policy of allowing SMS to every region by default and adding disallowed regions to a disallow list. *)

type sms_region_config__allowlist_only = {
  allowed_regions : string prop list option; [@option]
      (** Two letter unicode region codes to allow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json *)
}
[@@deriving yojson_of]
(** A policy of only allowing regions by explicitly adding them to an allowlist. *)

type sms_region_config = {
  allow_by_default : sms_region_config__allow_by_default list;
  allowlist_only : sms_region_config__allowlist_only list;
}
[@@deriving yojson_of]
(** Configures the regions where users are allowed to send verification SMS for the project or tenant. This is based on the calling code of the destination phone number. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_identity_platform_config = {
  authorized_domains : string prop list option; [@option]
      (** List of domains authorized for OAuth redirects. *)
  autodelete_anonymous_users : bool prop option; [@option]
      (** Whether anonymous users will be auto-deleted after a period of 30 days *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  blocking_functions : blocking_functions list;
  client : client list;
  mfa : mfa list;
  monitoring : monitoring list;
  multi_tenant : multi_tenant list;
  quota : quota list;
  sign_in : sign_in list;
  sms_region_config : sms_region_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_identity_platform_config *)

let blocking_functions__forward_inbound_credentials ?access_token
    ?id_token ?refresh_token () :
    blocking_functions__forward_inbound_credentials =
  { access_token; id_token; refresh_token }

let blocking_functions__triggers ~event_type ~function_uri () :
    blocking_functions__triggers =
  { event_type; function_uri }

let blocking_functions ~forward_inbound_credentials ~triggers () :
    blocking_functions =
  { forward_inbound_credentials; triggers }

let client__permissions ?disabled_user_deletion ?disabled_user_signup
    () : client__permissions =
  { disabled_user_deletion; disabled_user_signup }

let client ~permissions () : client = { permissions }

let mfa__provider_configs__totp_provider_config ?adjacent_intervals
    () : mfa__provider_configs__totp_provider_config =
  { adjacent_intervals }

let mfa__provider_configs ?state ~totp_provider_config () :
    mfa__provider_configs =
  { state; totp_provider_config }

let mfa ?enabled_providers ?state ~provider_configs () : mfa =
  { enabled_providers; state; provider_configs }

let monitoring__request_logging ?enabled () :
    monitoring__request_logging =
  { enabled }

let monitoring ~request_logging () : monitoring = { request_logging }

let multi_tenant ?allow_tenants ?default_tenant_location () :
    multi_tenant =
  { allow_tenants; default_tenant_location }

let quota__sign_up_quota_config ?quota ?quota_duration ?start_time ()
    : quota__sign_up_quota_config =
  { quota; quota_duration; start_time }

let quota ~sign_up_quota_config () : quota = { sign_up_quota_config }
let sign_in__anonymous ~enabled () : sign_in__anonymous = { enabled }

let sign_in__email ?password_required ~enabled () : sign_in__email =
  { enabled; password_required }

let sign_in__phone_number ?test_phone_numbers ~enabled () :
    sign_in__phone_number =
  { enabled; test_phone_numbers }

let sign_in ?allow_duplicate_emails ~anonymous ~email ~phone_number
    () : sign_in =
  { allow_duplicate_emails; anonymous; email; phone_number }

let sms_region_config__allow_by_default ?disallowed_regions () :
    sms_region_config__allow_by_default =
  { disallowed_regions }

let sms_region_config__allowlist_only ?allowed_regions () :
    sms_region_config__allowlist_only =
  { allowed_regions }

let sms_region_config ~allow_by_default ~allowlist_only () :
    sms_region_config =
  { allow_by_default; allowlist_only }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_identity_platform_config ?authorized_domains
    ?autodelete_anonymous_users ?id ?project ?timeouts
    ~blocking_functions ~client ~mfa ~monitoring ~multi_tenant ~quota
    ~sign_in ~sms_region_config () : google_identity_platform_config
    =
  {
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

type t = {
  authorized_domains : string list prop;
  autodelete_anonymous_users : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let make ?authorized_domains ?autodelete_anonymous_users ?id ?project
    ?timeouts ~blocking_functions ~client ~mfa ~monitoring
    ~multi_tenant ~quota ~sign_in ~sms_region_config __id =
  let __type = "google_identity_platform_config" in
  let __attrs =
    ({
       authorized_domains =
         Prop.computed __type __id "authorized_domains";
       autodelete_anonymous_users =
         Prop.computed __type __id "autodelete_anonymous_users";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_identity_platform_config
        (google_identity_platform_config ?authorized_domains
           ?autodelete_anonymous_users ?id ?project ?timeouts
           ~blocking_functions ~client ~mfa ~monitoring ~multi_tenant
           ~quota ~sign_in ~sms_region_config ());
    attrs = __attrs;
  }

let register ?tf_module ?authorized_domains
    ?autodelete_anonymous_users ?id ?project ?timeouts
    ~blocking_functions ~client ~mfa ~monitoring ~multi_tenant ~quota
    ~sign_in ~sms_region_config __id =
  let (r : _ Tf_core.resource) =
    make ?authorized_domains ?autodelete_anonymous_users ?id ?project
      ?timeouts ~blocking_functions ~client ~mfa ~monitoring
      ~multi_tenant ~quota ~sign_in ~sms_region_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
