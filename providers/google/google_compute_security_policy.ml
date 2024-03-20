(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type adaptive_protection_config__layer_7_ddos_defense_config = {
  enable : bool prop option; [@option]
      (** If set to true, enables CAAP for L7 DDoS detection. *)
  rule_visibility : string prop option; [@option]
      (** Rule visibility. Supported values include: STANDARD, PREMIUM. *)
}
[@@deriving yojson_of]
(** Layer 7 DDoS Defense Config of this security policy *)

type adaptive_protection_config = {
  layer_7_ddos_defense_config :
    adaptive_protection_config__layer_7_ddos_defense_config list;
}
[@@deriving yojson_of]
(** Adaptive Protection Config of this security policy. *)

type advanced_options_config__json_custom_config = {
  content_types : string prop list;
      (** A list of custom Content-Type header values to apply the JSON parsing. *)
}
[@@deriving yojson_of]
(** Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD. *)

type advanced_options_config = {
  json_parsing : string prop option; [@option]
      (** JSON body parsing. Supported values include: DISABLED, STANDARD. *)
  log_level : string prop option; [@option]
      (** Logging level. Supported values include: NORMAL, VERBOSE. *)
  user_ip_request_headers : string prop list option; [@option]
      (** An optional list of case-insensitive request header names to use for resolving the callers client IP address. *)
  json_custom_config :
    advanced_options_config__json_custom_config list;
}
[@@deriving yojson_of]
(** Advanced Options Config of this security policy. *)

type recaptcha_options_config = {
  redirect_site_key : string prop;
      (** A field to supply a reCAPTCHA site key to be used for all the rules using the redirect action with the type of GOOGLE_RECAPTCHA under the security policy. The specified site key needs to be created from the reCAPTCHA API. The user is responsible for the validity of the specified site key. If not specified, a Google-managed site key is used. *)
}
[@@deriving yojson_of]
(** reCAPTCHA configuration options to be applied for the security policy. *)

type rule__header_action__request_headers_to_adds = {
  header_name : string prop;  (** The name of the header to set. *)
  header_value : string prop option; [@option]
      (** The value to set the named header to. *)
}
[@@deriving yojson_of]
(** The list of request headers to add or overwrite if they're already present. *)

type rule__header_action = {
  request_headers_to_adds :
    rule__header_action__request_headers_to_adds list;
}
[@@deriving yojson_of]
(** Additional actions that are performed on headers. *)

type rule__match__config = {
  src_ip_ranges : string prop list;
      (** Set of IP addresses or ranges (IPV4 or IPV6) in CIDR notation to match against inbound traffic. There is a limit of 10 IP ranges per rule. A value of '*' matches all IPs (can be used to override the default behavior). *)
}
[@@deriving yojson_of]
(** The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified. *)

type rule__match__expr = {
  expression : string prop;
      (** Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported. *)
}
[@@deriving yojson_of]
(** User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. *)

type rule__match = {
  versioned_expr : string prop option; [@option]
      (** Predefined rule expression. If this field is specified, config must also be specified. Available options:   SRC_IPS_V1: Must specify the corresponding src_ip_ranges field in config. *)
  config : rule__match__config list;
  expr : rule__match__expr list;
}
[@@deriving yojson_of]
(** A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding action is enforced. *)

type rule__rate_limit_options__ban_threshold = {
  count : float prop;
      (** Number of HTTP(S) requests for calculating the threshold. *)
  interval_sec : float prop;
      (** Interval over which the threshold is computed. *)
}
[@@deriving yojson_of]
(** Can only be specified if the action for the rule is rate_based_ban. If specified, the key will be banned for the configured 'banDurationSec' when the number of requests that exceed the 'rateLimitThreshold' also exceed this 'banThreshold'. *)

type rule__rate_limit_options__exceed_redirect_options = {
  target : string prop option; [@option]
      (** Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA. *)
  type_ : string prop; [@key "type"]
      (** Type of the redirect action. *)
}
[@@deriving yojson_of]
(** Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect. *)

type rule__rate_limit_options__rate_limit_threshold = {
  count : float prop;
      (** Number of HTTP(S) requests for calculating the threshold. *)
  interval_sec : float prop;
      (** Interval over which the threshold is computed. *)
}
[@@deriving yojson_of]
(** Threshold at which to begin ratelimiting. *)

type rule__rate_limit_options = {
  ban_duration_sec : float prop option; [@option]
      (** Can only be specified if the action for the rule is rate_based_ban. If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold. *)
  conform_action : string prop;
      (** Action to take for requests that are under the configured rate limit threshold. Valid option is allow only. *)
  enforce_on_key : string prop option; [@option]
      (** Determines the key to enforce the rateLimitThreshold on *)
  enforce_on_key_name : string prop option; [@option]
      (** Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value. *)
  exceed_action : string prop;
      (** Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint. Valid options are deny() where valid values for status are 403, 404, 429, and 502, and redirect where the redirect parameters come from exceedRedirectOptions below. *)
  ban_threshold : rule__rate_limit_options__ban_threshold list;
  exceed_redirect_options :
    rule__rate_limit_options__exceed_redirect_options list;
  rate_limit_threshold :
    rule__rate_limit_options__rate_limit_threshold list;
}
[@@deriving yojson_of]
(** Rate limit threshold for this security policy. Must be specified if the action is rate_based_ban or throttle. Cannot be specified for any other actions. *)

type rule__redirect_options = {
  target : string prop option; [@option]
      (** Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA. *)
  type_ : string prop; [@key "type"]
      (** Type of the redirect action. Available options: EXTERNAL_302: Must specify the corresponding target field in config. GOOGLE_RECAPTCHA: Cannot specify target field in config. *)
}
[@@deriving yojson_of]
(** Parameters defining the redirect action. Cannot be specified for any other actions. *)

type rule = {
  action : string prop;
      (** Action to take when match matches the request. *)
  description : string prop option; [@option]
      (** An optional description of this rule. Max size is 64. *)
  preview : bool prop option; [@option]
      (** When set to true, the action specified above is not enforced. Stackdriver logs for requests that trigger a preview action are annotated as such. *)
  priority : float prop;
      (** An unique positive integer indicating the priority of evaluation for a rule. Rules are evaluated from highest priority (lowest numerically) to lowest priority (highest numerically) in order. *)
  header_action : rule__header_action list;
  match_ : rule__match list;
  rate_limit_options : rule__rate_limit_options list;
  redirect_options : rule__redirect_options list;
}
[@@deriving yojson_of]
(** The set of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match \*\). If no rules are provided when creating a security policy, a default rule with action allow will be added. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_security_policy = {
  description : string prop option; [@option]
      (** An optional description of this security policy. Max size is 2048. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the security policy. *)
  project : string prop option; [@option]
      (** The project in which the resource belongs. If it is not provided, the provider project is used. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type indicates the intended use of the security policy. CLOUD_ARMOR - Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. CLOUD_ARMOR_EDGE - Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google's cache. *)
  adaptive_protection_config : adaptive_protection_config list;
  advanced_options_config : advanced_options_config list;
  recaptcha_options_config : recaptcha_options_config list;
  rule : rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_security_policy *)

let adaptive_protection_config__layer_7_ddos_defense_config ?enable
    ?rule_visibility () :
    adaptive_protection_config__layer_7_ddos_defense_config =
  { enable; rule_visibility }

let adaptive_protection_config ~layer_7_ddos_defense_config () :
    adaptive_protection_config =
  { layer_7_ddos_defense_config }

let advanced_options_config__json_custom_config ~content_types () :
    advanced_options_config__json_custom_config =
  { content_types }

let advanced_options_config ?json_parsing ?log_level
    ?user_ip_request_headers ~json_custom_config () :
    advanced_options_config =
  {
    json_parsing;
    log_level;
    user_ip_request_headers;
    json_custom_config;
  }

let recaptcha_options_config ~redirect_site_key () :
    recaptcha_options_config =
  { redirect_site_key }

let rule__header_action__request_headers_to_adds ?header_value
    ~header_name () : rule__header_action__request_headers_to_adds =
  { header_name; header_value }

let rule__header_action ~request_headers_to_adds () :
    rule__header_action =
  { request_headers_to_adds }

let rule__match__config ~src_ip_ranges () : rule__match__config =
  { src_ip_ranges }

let rule__match__expr ~expression () : rule__match__expr =
  { expression }

let rule__match ?versioned_expr ~config ~expr () : rule__match =
  { versioned_expr; config; expr }

let rule__rate_limit_options__ban_threshold ~count ~interval_sec () :
    rule__rate_limit_options__ban_threshold =
  { count; interval_sec }

let rule__rate_limit_options__exceed_redirect_options ?target ~type_
    () : rule__rate_limit_options__exceed_redirect_options =
  { target; type_ }

let rule__rate_limit_options__rate_limit_threshold ~count
    ~interval_sec () : rule__rate_limit_options__rate_limit_threshold
    =
  { count; interval_sec }

let rule__rate_limit_options ?ban_duration_sec ?enforce_on_key
    ?enforce_on_key_name ~conform_action ~exceed_action
    ~ban_threshold ~exceed_redirect_options ~rate_limit_threshold ()
    : rule__rate_limit_options =
  {
    ban_duration_sec;
    conform_action;
    enforce_on_key;
    enforce_on_key_name;
    exceed_action;
    ban_threshold;
    exceed_redirect_options;
    rate_limit_threshold;
  }

let rule__redirect_options ?target ~type_ () : rule__redirect_options
    =
  { target; type_ }

let rule ?description ?preview ~action ~priority ~header_action
    ~match_ ~rate_limit_options ~redirect_options () : rule =
  {
    action;
    description;
    preview;
    priority;
    header_action;
    match_;
    rate_limit_options;
    redirect_options;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_security_policy ?description ?id ?project ?type_
    ?timeouts ~name ~adaptive_protection_config
    ~advanced_options_config ~recaptcha_options_config ~rule () :
    google_compute_security_policy =
  {
    description;
    id;
    name;
    project;
    type_;
    adaptive_protection_config;
    advanced_options_config;
    recaptcha_options_config;
    rule;
    timeouts;
  }

type t = {
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  type_ : string prop;
}

let make ?description ?id ?project ?type_ ?timeouts ~name
    ~adaptive_protection_config ~advanced_options_config
    ~recaptcha_options_config ~rule __id =
  let __type = "google_compute_security_policy" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_security_policy
        (google_compute_security_policy ?description ?id ?project
           ?type_ ?timeouts ~name ~adaptive_protection_config
           ~advanced_options_config ~recaptcha_options_config ~rule
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?type_ ?timeouts
    ~name ~adaptive_protection_config ~advanced_options_config
    ~recaptcha_options_config ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?type_ ?timeouts ~name
      ~adaptive_protection_config ~advanced_options_config
      ~recaptcha_options_config ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
