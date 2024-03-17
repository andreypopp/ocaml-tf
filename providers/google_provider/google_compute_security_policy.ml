(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_security_policy__adaptive_protection_config__layer_7_ddos_defense_config = {
  enable : bool option; [@option]
      (** If set to true, enables CAAP for L7 DDoS detection. *)
  rule_visibility : string option; [@option]
      (** Rule visibility. Supported values include: STANDARD, PREMIUM. *)
}
[@@deriving yojson_of]
(** Layer 7 DDoS Defense Config of this security policy *)

type google_compute_security_policy__adaptive_protection_config = {
  layer_7_ddos_defense_config :
    google_compute_security_policy__adaptive_protection_config__layer_7_ddos_defense_config
    list;
}
[@@deriving yojson_of]
(** Adaptive Protection Config of this security policy. *)

type google_compute_security_policy__advanced_options_config__json_custom_config = {
  content_types : string list;
      (** A list of custom Content-Type header values to apply the JSON parsing. *)
}
[@@deriving yojson_of]
(** Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD. *)

type google_compute_security_policy__advanced_options_config = {
  json_parsing : string option; [@option]
      (** JSON body parsing. Supported values include: DISABLED, STANDARD. *)
  log_level : string option; [@option]
      (** Logging level. Supported values include: NORMAL, VERBOSE. *)
  user_ip_request_headers : string list option; [@option]
      (** An optional list of case-insensitive request header names to use for resolving the callers client IP address. *)
  json_custom_config :
    google_compute_security_policy__advanced_options_config__json_custom_config
    list;
}
[@@deriving yojson_of]
(** Advanced Options Config of this security policy. *)

type google_compute_security_policy__recaptcha_options_config = {
  redirect_site_key : string;
      (** A field to supply a reCAPTCHA site key to be used for all the rules using the redirect action with the type of GOOGLE_RECAPTCHA under the security policy. The specified site key needs to be created from the reCAPTCHA API. The user is responsible for the validity of the specified site key. If not specified, a Google-managed site key is used. *)
}
[@@deriving yojson_of]
(** reCAPTCHA configuration options to be applied for the security policy. *)

type google_compute_security_policy__rule__header_action__request_headers_to_adds = {
  header_name : string;  (** The name of the header to set. *)
  header_value : string option; [@option]
      (** The value to set the named header to. *)
}
[@@deriving yojson_of]
(** The list of request headers to add or overwrite if they're already present. *)

type google_compute_security_policy__rule__header_action = {
  request_headers_to_adds :
    google_compute_security_policy__rule__header_action__request_headers_to_adds
    list;
}
[@@deriving yojson_of]
(** Additional actions that are performed on headers. *)

type google_compute_security_policy__rule__match__config = {
  src_ip_ranges : string list;
      (** Set of IP addresses or ranges (IPV4 or IPV6) in CIDR notation to match against inbound traffic. There is a limit of 10 IP ranges per rule. A value of '*' matches all IPs (can be used to override the default behavior). *)
}
[@@deriving yojson_of]
(** The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified. *)

type google_compute_security_policy__rule__match__expr = {
  expression : string;
      (** Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported. *)
}
[@@deriving yojson_of]
(** User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. *)

type google_compute_security_policy__rule__match = {
  versioned_expr : string option; [@option]
      (** Predefined rule expression. If this field is specified, config must also be specified. Available options:   SRC_IPS_V1: Must specify the corresponding src_ip_ranges field in config. *)
  config : google_compute_security_policy__rule__match__config list;
  expr : google_compute_security_policy__rule__match__expr list;
}
[@@deriving yojson_of]
(** A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding action is enforced. *)

type google_compute_security_policy__rule__rate_limit_options__ban_threshold = {
  count : float;
      (** Number of HTTP(S) requests for calculating the threshold. *)
  interval_sec : float;
      (** Interval over which the threshold is computed. *)
}
[@@deriving yojson_of]
(** Can only be specified if the action for the rule is rate_based_ban. If specified, the key will be banned for the configured 'banDurationSec' when the number of requests that exceed the 'rateLimitThreshold' also exceed this 'banThreshold'. *)

type google_compute_security_policy__rule__rate_limit_options__exceed_redirect_options = {
  target : string option; [@option]
      (** Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA. *)
  type_ : string; [@key "type"]  (** Type of the redirect action. *)
}
[@@deriving yojson_of]
(** Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect. *)

type google_compute_security_policy__rule__rate_limit_options__rate_limit_threshold = {
  count : float;
      (** Number of HTTP(S) requests for calculating the threshold. *)
  interval_sec : float;
      (** Interval over which the threshold is computed. *)
}
[@@deriving yojson_of]
(** Threshold at which to begin ratelimiting. *)

type google_compute_security_policy__rule__rate_limit_options = {
  ban_duration_sec : float option; [@option]
      (** Can only be specified if the action for the rule is rate_based_ban. If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold. *)
  conform_action : string;
      (** Action to take for requests that are under the configured rate limit threshold. Valid option is allow only. *)
  enforce_on_key : string option; [@option]
      (** Determines the key to enforce the rateLimitThreshold on *)
  enforce_on_key_name : string option; [@option]
      (** Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value. *)
  exceed_action : string;
      (** Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint. Valid options are deny() where valid values for status are 403, 404, 429, and 502, and redirect where the redirect parameters come from exceedRedirectOptions below. *)
  ban_threshold :
    google_compute_security_policy__rule__rate_limit_options__ban_threshold
    list;
  exceed_redirect_options :
    google_compute_security_policy__rule__rate_limit_options__exceed_redirect_options
    list;
  rate_limit_threshold :
    google_compute_security_policy__rule__rate_limit_options__rate_limit_threshold
    list;
}
[@@deriving yojson_of]
(** Rate limit threshold for this security policy. Must be specified if the action is rate_based_ban or throttle. Cannot be specified for any other actions. *)

type google_compute_security_policy__rule__redirect_options = {
  target : string option; [@option]
      (** Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA. *)
  type_ : string; [@key "type"]
      (** Type of the redirect action. Available options: EXTERNAL_302: Must specify the corresponding target field in config. GOOGLE_RECAPTCHA: Cannot specify target field in config. *)
}
[@@deriving yojson_of]
(** Parameters defining the redirect action. Cannot be specified for any other actions. *)

type google_compute_security_policy__rule = {
  action : string;
      (** Action to take when match matches the request. *)
  description : string option; [@option]
      (** An optional description of this rule. Max size is 64. *)
  preview : bool option; [@option]
      (** When set to true, the action specified above is not enforced. Stackdriver logs for requests that trigger a preview action are annotated as such. *)
  priority : float;
      (** An unique positive integer indicating the priority of evaluation for a rule. Rules are evaluated from highest priority (lowest numerically) to lowest priority (highest numerically) in order. *)
  header_action :
    google_compute_security_policy__rule__header_action list;
  match_ : google_compute_security_policy__rule__match list;
  rate_limit_options :
    google_compute_security_policy__rule__rate_limit_options list;
  redirect_options :
    google_compute_security_policy__rule__redirect_options list;
}
[@@deriving yojson_of]
(** The set of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match \*\). If no rules are provided when creating a security policy, a default rule with action allow will be added. *)

type google_compute_security_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_security_policy__timeouts *)

type google_compute_security_policy = {
  description : string option; [@option]
      (** An optional description of this security policy. Max size is 2048. *)
  name : string;  (** The name of the security policy. *)
  adaptive_protection_config :
    google_compute_security_policy__adaptive_protection_config list;
  advanced_options_config :
    google_compute_security_policy__advanced_options_config list;
  recaptcha_options_config :
    google_compute_security_policy__recaptcha_options_config list;
  rule : google_compute_security_policy__rule list;
  timeouts : google_compute_security_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_security_policy *)

let google_compute_security_policy ?description ?timeouts ~name
    ~adaptive_protection_config ~advanced_options_config
    ~recaptcha_options_config ~rule __resource_id =
  let __resource_type = "google_compute_security_policy" in
  let __resource =
    {
      description;
      name;
      adaptive_protection_config;
      advanced_options_config;
      recaptcha_options_config;
      rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_security_policy __resource);
  ()
