(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type rules__action_parameters__algorithms = {
  name : string prop;
      (** Name of the compression algorithm to use. Available values: `gzip`, `brotli`, `auto`, `default`, `none` *)
}
[@@deriving yojson_of]
(** Compression algorithms to use in order of preference. *)

type rules__action_parameters__autominify = {
  css : bool prop option; [@option]  (** CSS minification. *)
  html : bool prop option; [@option]  (** HTML minification. *)
  js : bool prop option; [@option]  (** JS minification. *)
}
[@@deriving yojson_of]
(** Indicate which file extensions to minify automatically. *)

type rules__action_parameters__browser_ttl = {
  default : float prop option; [@option]
      (** Default browser TTL. This value is required when override_origin is set *)
  mode : string prop;
      (** Mode of the browser TTL. Available values: `override_origin`, `respect_origin`, `bypass` *)
}
[@@deriving yojson_of]
(** List of browser TTL parameters to apply to the request. *)

type rules__action_parameters__cache_key__custom_key__cookie = {
  check_presence : string prop list option; [@option]
      (** List of cookies to check for presence in the custom key. *)
  include_ : string prop list option; [@option] [@key "include"]
      (** List of cookies to include in the custom key. *)
}
[@@deriving yojson_of]
(** Cookie parameters for the custom key. *)

type rules__action_parameters__cache_key__custom_key__header = {
  check_presence : string prop list option; [@option]
      (** List of headers to check for presence in the custom key. *)
  exclude_origin : bool prop option; [@option]
      (** Exclude the origin header from the custom key. *)
  include_ : string prop list option; [@option] [@key "include"]
      (** List of headers to include in the custom key. *)
}
[@@deriving yojson_of]
(** Header parameters for the custom key. *)

type rules__action_parameters__cache_key__custom_key__host = {
  resolved : bool prop option; [@option]
      (** Resolve hostname to IP address. *)
}
[@@deriving yojson_of]
(** Host parameters for the custom key. *)

type rules__action_parameters__cache_key__custom_key__query_string = {
  exclude : string prop list option; [@option]
      (** List of query string parameters to exclude from the custom key. *)
  include_ : string prop list option; [@option] [@key "include"]
      (** List of query string parameters to include in the custom key. *)
}
[@@deriving yojson_of]
(** Query string parameters for the custom key. *)

type rules__action_parameters__cache_key__custom_key__user = {
  device_type : bool prop option; [@option]
      (** Add device type to the custom key. *)
  geo : bool prop option; [@option]
      (** Add geo data to the custom key. *)
  lang : bool prop option; [@option]
      (** Add language data to the custom key. *)
}
[@@deriving yojson_of]
(** User parameters for the custom key. *)

type rules__action_parameters__cache_key__custom_key = {
  cookie :
    rules__action_parameters__cache_key__custom_key__cookie list;
  header :
    rules__action_parameters__cache_key__custom_key__header list;
  host : rules__action_parameters__cache_key__custom_key__host list;
  query_string :
    rules__action_parameters__cache_key__custom_key__query_string
    list;
  user : rules__action_parameters__cache_key__custom_key__user list;
}
[@@deriving yojson_of]
(** Custom key parameters for the request. *)

type rules__action_parameters__cache_key = {
  cache_by_device_type : bool prop option; [@option]
      (** Cache by device type. *)
  cache_deception_armor : bool prop option; [@option]
      (** Cache deception armor. *)
  ignore_query_strings_order : bool prop option; [@option]
      (** Ignore query strings order. *)
  custom_key : rules__action_parameters__cache_key__custom_key list;
}
[@@deriving yojson_of]
(** List of cache key parameters to apply to the request. *)

type rules__action_parameters__edge_ttl__status_code_ttl__status_code_range = {
  from : float prop option; [@option]  (** From status code. *)
  to_ : float prop option; [@option] [@key "to"]
      (** To status code. *)
}
[@@deriving yojson_of]
(** Status code range for which the edge TTL is applied. *)

type rules__action_parameters__edge_ttl__status_code_ttl = {
  status_code : float prop option; [@option]
      (** Status code for which the edge TTL is applied. *)
  value : float prop option; [@option]
      (** Status code edge TTL value. *)
  status_code_range :
    rules__action_parameters__edge_ttl__status_code_ttl__status_code_range
    list;
}
[@@deriving yojson_of]
(** Edge TTL for the status codes. *)

type rules__action_parameters__edge_ttl = {
  default : float prop option; [@option]  (** Default edge TTL. *)
  mode : string prop;
      (** Mode of the edge TTL. Available values: `override_origin`, `respect_origin`, `bypass_by_default` *)
  status_code_ttl :
    rules__action_parameters__edge_ttl__status_code_ttl list;
}
[@@deriving yojson_of]
(** List of edge TTL parameters to apply to the request. *)

type rules__action_parameters__from_list = {
  key : string prop option; [@option]
      (** Expression to use for the list lookup. *)
  name : string prop option; [@option]  (** Name of the list. *)
}
[@@deriving yojson_of]
(** Use a list to lookup information for the action. *)

type rules__action_parameters__from_value__target_url = {
  expression : string prop option; [@option]
      (** Use a value dynamically determined by the Firewall Rules expression language based on Wireshark display filters. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language) documentation for all available fields, operators, and functions. *)
  value : string prop option; [@option]
      (** Static value to provide as the HTTP request header value. *)
}
[@@deriving yojson_of]
(** Target URL for redirect. *)

type rules__action_parameters__from_value = {
  preserve_query_string : bool prop option; [@option]
      (** Preserve query string for redirect URL. *)
  status_code : float prop option; [@option]
      (** Status code for redirect. *)
  target_url : rules__action_parameters__from_value__target_url list;
}
[@@deriving yojson_of]
(** Use a value to lookup information for the action. *)

type rules__action_parameters__headers = {
  expression : string prop option; [@option]
      (** Use a value dynamically determined by the Firewall Rules expression language based on Wireshark display filters. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language) documentation for all available fields, operators, and functions. *)
  name : string prop option; [@option]
      (** Name of the HTTP request header to target. *)
  operation : string prop option; [@option]
      (** Action to perform on the HTTP request header. Available values: `remove`, `set`, `add`. *)
  value : string prop option; [@option]
      (** Static value to provide as the HTTP request header value. *)
}
[@@deriving yojson_of]
(** List of HTTP header modifications to perform in the ruleset rule. Note: Headers are order dependent and must be provided sorted alphabetically ascending based on the `name` value. *)

type rules__action_parameters__matched_data = {
  public_key : string prop option; [@option]
      (** Public key to use within WAF Ruleset payload logging to view the HTTP request parameters. You can generate a public key [using the `matched-data-cli` command-line tool](https://developers.cloudflare.com/waf/managed-rulesets/payload-logging/command-line/generate-key-pair) or [in the Cloudflare dashboard](https://developers.cloudflare.com/waf/managed-rulesets/payload-logging/configure). *)
}
[@@deriving yojson_of]
(** List of properties to configure WAF payload logging. *)

type rules__action_parameters__origin = {
  host : string prop option; [@option]
      (** Origin Hostname where request is sent. *)
  port : float prop option; [@option]
      (** Origin Port where request is sent. *)
}
[@@deriving yojson_of]
(** List of properties to change request origin. *)

type rules__action_parameters__overrides__categories = {
  action : string prop option; [@option]
      (** Action to perform in the tag-level override. Available values: `block`, `challenge`, `compress_response`, `ddos_dynamic`, `ddos_mitigation`, `execute`, `force_connection_close`, `js_challenge`, `log`, `log_custom_field`, `managed_challenge`, `redirect`, `rewrite`, `route`, `score`, `serve_error`, `set_cache_settings`, `set_config`, `skip`. *)
  category : string prop option; [@option]
      (** Tag name to apply the ruleset rule override to. *)
  enabled : bool prop option; [@option]
      (** Defines if the current tag-level override enables or disables the ruleset rules with the specified tag. *)
}
[@@deriving yojson_of]
(** List of tag-based overrides. *)

type rules__action_parameters__overrides__rules = {
  action : string prop option; [@option]
      (** Action to perform in the rule-level override. Available values: `block`, `challenge`, `compress_response`, `ddos_dynamic`, `ddos_mitigation`, `execute`, `force_connection_close`, `js_challenge`, `log`, `log_custom_field`, `managed_challenge`, `redirect`, `rewrite`, `route`, `score`, `serve_error`, `set_cache_settings`, `set_config`, `skip`. *)
  enabled : bool prop option; [@option]
      (** Defines if the current rule-level override enables or disables the rule. *)
  id : string prop option; [@option]
      (** Rule ID to apply the override to. *)
  score_threshold : float prop option; [@option]
      (** Anomaly score threshold to apply in the ruleset rule override. Only applicable to modsecurity-based rulesets. *)
  sensitivity_level : string prop option; [@option]
      (** Sensitivity level for a ruleset rule override. *)
}
[@@deriving yojson_of]
(** List of rule-based overrides. *)

type rules__action_parameters__overrides = {
  action : string prop option; [@option]
      (** Action to perform in the rule-level override. Available values: `block`, `challenge`, `compress_response`, `ddos_dynamic`, `ddos_mitigation`, `execute`, `force_connection_close`, `js_challenge`, `log`, `log_custom_field`, `managed_challenge`, `redirect`, `rewrite`, `route`, `score`, `serve_error`, `set_cache_settings`, `set_config`, `skip`. *)
  enabled : bool prop option; [@option]
      (** Defines if the current ruleset-level override enables or disables the ruleset. *)
  sensitivity_level : string prop option; [@option]
      (** Sensitivity level to override for all ruleset rules. Available values: `default`, `medium`, `low`, `eoff`. *)
  categories : rules__action_parameters__overrides__categories list;
  rules : rules__action_parameters__overrides__rules list;
}
[@@deriving yojson_of]
(** List of override configurations to apply to the ruleset. *)

type rules__action_parameters__response = {
  content : string prop option; [@option]
      (** Body content to include in the response. *)
  content_type : string prop option; [@option]
      (** HTTP content type to send in the response. *)
  status_code : float prop option; [@option]
      (** HTTP status code to send in the response. *)
}
[@@deriving yojson_of]
(** List of parameters that configure the response given to end users. *)

type rules__action_parameters__serve_stale = {
  disable_stale_while_updating : bool prop option; [@option]
      (** Disable stale while updating. *)
}
[@@deriving yojson_of]
(** List of serve stale parameters to apply to the request. *)

type rules__action_parameters__sni = {
  value : string prop option; [@option]
      (** Value to define for SNI. *)
}
[@@deriving yojson_of]
(** List of properties to manange Server Name Indication. *)

type rules__action_parameters__uri__path = {
  expression : string prop option; [@option]
      (** Expression that defines the updated (dynamic) value of the URI path or query string component. Uses the Firewall Rules expression language based on Wireshark display filters. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language) documentation for all available fields, operators, and functions. *)
  value : string prop option; [@option]
      (** Static string value of the updated URI path or query string component. *)
}
[@@deriving yojson_of]
(** URI path configuration when performing a URL rewrite. *)

type rules__action_parameters__uri__query = {
  expression : string prop option; [@option]
      (** Expression that defines the updated (dynamic) value of the URI path or query string component. Uses the Firewall Rules expression language based on Wireshark display filters. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language) documentation for all available fields, operators, and functions. *)
  value : string prop option; [@option]
      (** Static string value of the updated URI path or query string component. *)
}
[@@deriving yojson_of]
(** Query string configuration when performing a URL rewrite. *)

type rules__action_parameters__uri = {
  origin : bool prop option; [@option]  (** origin *)
  path : rules__action_parameters__uri__path list;
  query : rules__action_parameters__uri__query list;
}
[@@deriving yojson_of]
(** List of URI properties to configure for the ruleset rule when performing URL rewrite transformations. *)

type rules__action_parameters = {
  additional_cacheable_ports : float prop list option; [@option]
      (** Specifies uncommon ports to allow cacheable assets to be served from. *)
  automatic_https_rewrites : bool prop option; [@option]
      (** Turn on or off Cloudflare Automatic HTTPS rewrites. *)
  bic : bool prop option; [@option]
      (** Inspect the visitor's browser for headers commonly associated with spammers and certain bots. *)
  cache : bool prop option; [@option]
      (** Whether to cache if expression matches. *)
  content : string prop option; [@option]
      (** Content of the custom error response. *)
  content_type : string prop option; [@option]
      (** Content-Type of the custom error response. *)
  cookie_fields : string prop list option; [@option]
      (** List of cookie values to include as part of custom fields logging. *)
  disable_apps : bool prop option; [@option]
      (** Turn off all active Cloudflare Apps. *)
  disable_railgun : bool prop option; [@option]
      (** Turn off railgun feature of the Cloudflare Speed app. *)
  disable_zaraz : bool prop option; [@option]
      (** Turn off zaraz feature. *)
  email_obfuscation : bool prop option; [@option]
      (** Turn on or off the Cloudflare Email Obfuscation feature of the Cloudflare Scrape Shield app. *)
  host_header : string prop option; [@option]
      (** Host Header that request origin receives. *)
  hotlink_protection : bool prop option; [@option]
      (** Turn on or off the hotlink protection feature. *)
  id : string prop option; [@option]
      (** Identifier of the action parameter to modify. *)
  increment : float prop option; [@option]  (** increment *)
  mirage : bool prop option; [@option]
      (** Turn on or off Cloudflare Mirage of the Cloudflare Speed app. *)
  opportunistic_encryption : bool prop option; [@option]
      (** Turn on or off the Cloudflare Opportunistic Encryption feature of the Edge Certificates tab in the Cloudflare SSL/TLS app. *)
  origin_cache_control : bool prop option; [@option]
      (** Enable or disable the use of a more compliant Cache Control parsing mechanism, enabled by default for most zones. *)
  origin_error_page_passthru : bool prop option; [@option]
      (** Pass-through error page for origin. *)
  phases : string prop list option; [@option]
      (** Point in the request/response lifecycle where the ruleset will be created. Available values: `ddos_l4`, `ddos_l7`, `http_config_settings`, `http_custom_errors`, `http_log_custom_fields`, `http_ratelimit`, `http_request_cache_settings`, `http_request_dynamic_redirect`, `http_request_firewall_custom`, `http_request_firewall_managed`, `http_request_late_transform`, `http_request_origin`, `http_request_redirect`, `http_request_sanitize`, `http_request_sbfm`, `http_request_transform`, `http_response_compression`, `http_response_firewall_managed`, `http_response_headers_transform`, `magic_transit`. *)
  polish : string prop option; [@option]
      (** Apply options from the Polish feature of the Cloudflare Speed app. *)
  products : string prop list option; [@option]
      (** Products to target with the actions. Available values: `bic`, `hot`, `ratelimit`, `securityLevel`, `uablock`, `waf`, `zonelockdown`. *)
  read_timeout : float prop option; [@option]
      (** Specifies a maximum timeout for reading content from an origin server. *)
  request_fields : string prop list option; [@option]
      (** List of request headers to include as part of custom fields logging, in lowercase. *)
  respect_strong_etags : bool prop option; [@option]
      (** Respect strong ETags. *)
  response_fields : string prop list option; [@option]
      (** List of response headers to include as part of custom fields logging, in lowercase. *)
  rocket_loader : bool prop option; [@option]
      (** Turn on or off Cloudflare Rocket Loader in the Cloudflare Speed app. *)
  rules : (string * string prop) list option; [@option]
      (** Map of managed WAF rule ID to comma-delimited string of ruleset rule IDs. Example: `rules = { efb7b8c949ac4650a09736fc376e9aee = 5de7edfa648c4d6891dc3e7f84534ffa,e3a567afc347477d9702d9047e97d760 }`. *)
  ruleset : string prop option; [@option]
      (** Which ruleset ID to target. *)
  rulesets : string prop list option; [@option]
      (** List of managed WAF rule IDs to target. Only valid when the `action` is set to skip. *)
  security_level : string prop option; [@option]
      (** Control options for the Security Level feature from the Security app. *)
  server_side_excludes : bool prop option; [@option]
      (** Turn on or off the Server Side Excludes feature of the Cloudflare Scrape Shield app. *)
  ssl : string prop option; [@option]
      (** Control options for the SSL feature of the Edge Certificates tab in the Cloudflare SSL/TLS app. *)
  status_code : float prop option; [@option]
      (** HTTP status code of the custom error response. *)
  sxg : bool prop option; [@option]
      (** Turn on or off the SXG feature. *)
  version : string prop option; [@option]
      (** Version of the ruleset to deploy. *)
  algorithms : rules__action_parameters__algorithms list;
  autominify : rules__action_parameters__autominify list;
  browser_ttl : rules__action_parameters__browser_ttl list;
  cache_key : rules__action_parameters__cache_key list;
  edge_ttl : rules__action_parameters__edge_ttl list;
  from_list : rules__action_parameters__from_list list;
  from_value : rules__action_parameters__from_value list;
  headers : rules__action_parameters__headers list;
  matched_data : rules__action_parameters__matched_data list;
  origin : rules__action_parameters__origin list;
  overrides : rules__action_parameters__overrides list;
  response : rules__action_parameters__response list;
  serve_stale : rules__action_parameters__serve_stale list;
  sni : rules__action_parameters__sni list;
  uri : rules__action_parameters__uri list;
}
[@@deriving yojson_of]
(** List of parameters that configure the behavior of the ruleset rule action. *)

type rules__exposed_credential_check = {
  password_expression : string prop option; [@option]
      (** Firewall Rules expression language based on Wireshark display filters for where to check for the password value. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language). *)
  username_expression : string prop option; [@option]
      (** Firewall Rules expression language based on Wireshark display filters for where to check for the username value. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language). *)
}
[@@deriving yojson_of]
(** List of parameters that configure exposed credential checks. *)

type rules__logging = {
  enabled : bool prop option; [@option]
      (** Override the default logging behavior when a rule is matched. *)
}
[@@deriving yojson_of]
(** List parameters to configure how the rule generates logs. Only valid for skip action. *)

type rules__ratelimit = {
  characteristics : string prop list option; [@option]
      (** List of parameters that define how Cloudflare tracks the request rate for this rule. *)
  counting_expression : string prop option; [@option]
      (** Criteria for counting HTTP requests to trigger the Rate Limiting action. Uses the Firewall Rules expression language based on Wireshark display filters. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language) documentation for all available fields, operators, and functions. *)
  mitigation_timeout : float prop option; [@option]
      (** Once the request rate is reached, the Rate Limiting rule blocks further requests for the period of time defined in this field. *)
  period : float prop option; [@option]
      (** The period of time to consider (in seconds) when evaluating the request rate. *)
  requests_per_period : float prop option; [@option]
      (** The number of requests over the period of time that will trigger the Rate Limiting rule. *)
  requests_to_origin : bool prop option; [@option]
      (** Whether to include requests to origin within the Rate Limiting count. *)
  score_per_period : float prop option; [@option]
      (** The maximum aggregate score over the period of time that will trigger Rate Limiting rule. *)
  score_response_header_name : string prop option; [@option]
      (** Name of HTTP header in the response, set by the origin server, with the score for the current request. *)
}
[@@deriving yojson_of]
(** List of parameters that configure HTTP rate limiting behaviour. *)

type rules = {
  action : string prop option; [@option]
      (** Action to perform in the ruleset rule. Available values: `block`, `challenge`, `compress_response`, `ddos_dynamic`, `ddos_mitigation`, `execute`, `force_connection_close`, `js_challenge`, `log`, `log_custom_field`, `managed_challenge`, `redirect`, `rewrite`, `route`, `score`, `serve_error`, `set_cache_settings`, `set_config`, `skip`. *)
  description : string prop option; [@option]
      (** Brief summary of the ruleset rule and its intended use. *)
  enabled : bool prop option; [@option]
      (** Whether the rule is active. *)
  expression : string prop;
      (** Criteria for an HTTP request to trigger the ruleset rule action. Uses the Firewall Rules expression language based on Wireshark display filters. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language) documentation for all available fields, operators, and functions. *)
  ref : string prop option; [@option]  (** Rule reference. *)
  action_parameters : rules__action_parameters list;
  exposed_credential_check : rules__exposed_credential_check list;
  logging : rules__logging list;
  ratelimit : rules__ratelimit list;
}
[@@deriving yojson_of]
(** List of rules to apply to the ruleset. *)

type cloudflare_ruleset = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. *)
  description : string prop option; [@option]
      (** Brief summary of the ruleset and its intended use. *)
  kind : string prop;
      (** Type of Ruleset to create. Available values: `custom`, `managed`, `root`, `zone`. *)
  name : string prop;  (** Name of the ruleset. *)
  phase : string prop;
      (** Point in the request/response lifecycle where the ruleset will be created. Available values: `ddos_l4`, `ddos_l7`, `http_config_settings`, `http_custom_errors`, `http_log_custom_fields`, `http_ratelimit`, `http_request_cache_settings`, `http_request_dynamic_redirect`, `http_request_firewall_custom`, `http_request_firewall_managed`, `http_request_late_transform`, `http_request_origin`, `http_request_redirect`, `http_request_sanitize`, `http_request_sbfm`, `http_request_transform`, `http_response_compression`, `http_response_firewall_managed`, `http_response_headers_transform`, `magic_transit`. *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. *)
  rules : rules list;
}
[@@deriving yojson_of]
(** The [Cloudflare Ruleset Engine](https://developers.cloudflare.com/firewall/cf-rulesets)
allows you to create and deploy rules and rulesets.

The engine syntax, inspired by the Wireshark Display Filter language, is the
same syntax used in custom Firewall Rules. Cloudflare uses the Ruleset Engine
in different products, allowing you to configure several products using the same
basic syntax.
 *)

let rules__action_parameters__algorithms ~name () :
    rules__action_parameters__algorithms =
  { name }

let rules__action_parameters__autominify ?css ?html ?js () :
    rules__action_parameters__autominify =
  { css; html; js }

let rules__action_parameters__browser_ttl ?default ~mode () :
    rules__action_parameters__browser_ttl =
  { default; mode }

let rules__action_parameters__cache_key__custom_key__cookie
    ?check_presence ?include_ () :
    rules__action_parameters__cache_key__custom_key__cookie =
  { check_presence; include_ }

let rules__action_parameters__cache_key__custom_key__header
    ?check_presence ?exclude_origin ?include_ () :
    rules__action_parameters__cache_key__custom_key__header =
  { check_presence; exclude_origin; include_ }

let rules__action_parameters__cache_key__custom_key__host ?resolved
    () : rules__action_parameters__cache_key__custom_key__host =
  { resolved }

let rules__action_parameters__cache_key__custom_key__query_string
    ?exclude ?include_ () :
    rules__action_parameters__cache_key__custom_key__query_string =
  { exclude; include_ }

let rules__action_parameters__cache_key__custom_key__user
    ?device_type ?geo ?lang () :
    rules__action_parameters__cache_key__custom_key__user =
  { device_type; geo; lang }

let rules__action_parameters__cache_key__custom_key ~cookie ~header
    ~host ~query_string ~user () :
    rules__action_parameters__cache_key__custom_key =
  { cookie; header; host; query_string; user }

let rules__action_parameters__cache_key ?cache_by_device_type
    ?cache_deception_armor ?ignore_query_strings_order ~custom_key ()
    : rules__action_parameters__cache_key =
  {
    cache_by_device_type;
    cache_deception_armor;
    ignore_query_strings_order;
    custom_key;
  }

let rules__action_parameters__edge_ttl__status_code_ttl__status_code_range
    ?from ?to_ () :
    rules__action_parameters__edge_ttl__status_code_ttl__status_code_range
    =
  { from; to_ }

let rules__action_parameters__edge_ttl__status_code_ttl ?status_code
    ?value ~status_code_range () :
    rules__action_parameters__edge_ttl__status_code_ttl =
  { status_code; value; status_code_range }

let rules__action_parameters__edge_ttl ?default ~mode
    ~status_code_ttl () : rules__action_parameters__edge_ttl =
  { default; mode; status_code_ttl }

let rules__action_parameters__from_list ?key ?name () :
    rules__action_parameters__from_list =
  { key; name }

let rules__action_parameters__from_value__target_url ?expression
    ?value () : rules__action_parameters__from_value__target_url =
  { expression; value }

let rules__action_parameters__from_value ?preserve_query_string
    ?status_code ~target_url () :
    rules__action_parameters__from_value =
  { preserve_query_string; status_code; target_url }

let rules__action_parameters__headers ?expression ?name ?operation
    ?value () : rules__action_parameters__headers =
  { expression; name; operation; value }

let rules__action_parameters__matched_data ?public_key () :
    rules__action_parameters__matched_data =
  { public_key }

let rules__action_parameters__origin ?host ?port () :
    rules__action_parameters__origin =
  { host; port }

let rules__action_parameters__overrides__categories ?action ?category
    ?enabled () : rules__action_parameters__overrides__categories =
  { action; category; enabled }

let rules__action_parameters__overrides__rules ?action ?enabled ?id
    ?score_threshold ?sensitivity_level () :
    rules__action_parameters__overrides__rules =
  { action; enabled; id; score_threshold; sensitivity_level }

let rules__action_parameters__overrides ?action ?enabled
    ?sensitivity_level ~categories ~rules () :
    rules__action_parameters__overrides =
  { action; enabled; sensitivity_level; categories; rules }

let rules__action_parameters__response ?content ?content_type
    ?status_code () : rules__action_parameters__response =
  { content; content_type; status_code }

let rules__action_parameters__serve_stale
    ?disable_stale_while_updating () :
    rules__action_parameters__serve_stale =
  { disable_stale_while_updating }

let rules__action_parameters__sni ?value () :
    rules__action_parameters__sni =
  { value }

let rules__action_parameters__uri__path ?expression ?value () :
    rules__action_parameters__uri__path =
  { expression; value }

let rules__action_parameters__uri__query ?expression ?value () :
    rules__action_parameters__uri__query =
  { expression; value }

let rules__action_parameters__uri ?origin ~path ~query () :
    rules__action_parameters__uri =
  { origin; path; query }

let rules__action_parameters ?additional_cacheable_ports
    ?automatic_https_rewrites ?bic ?cache ?content ?content_type
    ?cookie_fields ?disable_apps ?disable_railgun ?disable_zaraz
    ?email_obfuscation ?host_header ?hotlink_protection ?id
    ?increment ?mirage ?opportunistic_encryption
    ?origin_cache_control ?origin_error_page_passthru ?phases ?polish
    ?products ?read_timeout ?request_fields ?respect_strong_etags
    ?response_fields ?rocket_loader ?rules ?ruleset ?rulesets
    ?security_level ?server_side_excludes ?ssl ?status_code ?sxg
    ?version ~algorithms ~autominify ~browser_ttl ~cache_key
    ~edge_ttl ~from_list ~from_value ~headers ~matched_data ~origin
    ~overrides ~response ~serve_stale ~sni ~uri () :
    rules__action_parameters =
  {
    additional_cacheable_ports;
    automatic_https_rewrites;
    bic;
    cache;
    content;
    content_type;
    cookie_fields;
    disable_apps;
    disable_railgun;
    disable_zaraz;
    email_obfuscation;
    host_header;
    hotlink_protection;
    id;
    increment;
    mirage;
    opportunistic_encryption;
    origin_cache_control;
    origin_error_page_passthru;
    phases;
    polish;
    products;
    read_timeout;
    request_fields;
    respect_strong_etags;
    response_fields;
    rocket_loader;
    rules;
    ruleset;
    rulesets;
    security_level;
    server_side_excludes;
    ssl;
    status_code;
    sxg;
    version;
    algorithms;
    autominify;
    browser_ttl;
    cache_key;
    edge_ttl;
    from_list;
    from_value;
    headers;
    matched_data;
    origin;
    overrides;
    response;
    serve_stale;
    sni;
    uri;
  }

let rules__exposed_credential_check ?password_expression
    ?username_expression () : rules__exposed_credential_check =
  { password_expression; username_expression }

let rules__logging ?enabled () : rules__logging = { enabled }

let rules__ratelimit ?characteristics ?counting_expression
    ?mitigation_timeout ?period ?requests_per_period
    ?requests_to_origin ?score_per_period ?score_response_header_name
    () : rules__ratelimit =
  {
    characteristics;
    counting_expression;
    mitigation_timeout;
    period;
    requests_per_period;
    requests_to_origin;
    score_per_period;
    score_response_header_name;
  }

let rules ?action ?description ?enabled ?ref ~expression
    ~action_parameters ~exposed_credential_check ~logging ~ratelimit
    () : rules =
  {
    action;
    description;
    enabled;
    expression;
    ref;
    action_parameters;
    exposed_credential_check;
    logging;
    ratelimit;
  }

let cloudflare_ruleset ?account_id ?description ?zone_id ~kind ~name
    ~phase ~rules () : cloudflare_ruleset =
  { account_id; description; kind; name; phase; zone_id; rules }

type t = {
  account_id : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  phase : string prop;
  zone_id : string prop;
}

let register ?tf_module ?account_id ?description ?zone_id ~kind ~name
    ~phase ~rules __resource_id =
  let __resource_type = "cloudflare_ruleset" in
  let __resource =
    cloudflare_ruleset ?account_id ?description ?zone_id ~kind ~name
      ~phase ~rules ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_ruleset __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       name = Prop.computed __resource_type __resource_id "name";
       phase = Prop.computed __resource_type __resource_id "phase";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
