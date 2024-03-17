(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_network_services_edge_cache_service__log_config = {
  enable : bool prop option; [@option]
      (** Specifies whether to enable logging for traffic served by this service. *)
  sample_rate : float prop option; [@option]
      (** Configures the sampling rate of requests, where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0, and the value of the field must be in [0, 1].

This field can only be specified if logging is enabled for this service. *)
}
[@@deriving yojson_of]
(** Specifies the logging options for the traffic served by this service. If logging is enabled, logs will be exported to Cloud Logging. *)

type google_network_services_edge_cache_service__routing__host_rule = {
  description : string prop option; [@option]
      (** A human-readable description of the hostRule. *)
  hosts : string prop list;
      (** The list of host patterns to match.

Host patterns must be valid hostnames. Ports are not allowed. Wildcard hosts are supported in the suffix or prefix form. * matches any string of ([a-z0-9-.]\*\). It does not match the empty string.

When multiple hosts are specified, hosts are matched in the following priority:

  1. Exact domain names: ''www.foo.com''.
  2. Suffix domain wildcards: ''*.foo.com'' or ''*-bar.foo.com''.
  3. Prefix domain wildcards: ''foo.*'' or ''foo-*''.
  4. Special wildcard ''*'' matching any domain.

  Notes:

    The wildcard will not match the empty string. e.g. ''*-bar.foo.com'' will match ''baz-bar.foo.com'' but not ''-bar.foo.com''. The longest wildcards match first. Only a single host in the entire service can match on ''*''. A domain must be unique across all configured hosts within a service.

    Hosts are matched against the HTTP Host header, or for HTTP/2 and HTTP/3, the :authority header, from the incoming request.

    You may specify up to 10 hosts. *)
  path_matcher : string prop;
      (** The name of the pathMatcher associated with this hostRule. *)
}
[@@deriving yojson_of]
(** The list of hostRules to match against. These rules define which hostnames the EdgeCacheService will match against, and which route configurations apply. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action__request_header_to_add = {
  header_name : string prop;  (** The name of the header to add. *)
  header_value : string prop;  (** The value of the header to add. *)
  replace : bool prop option; [@option]
      (** Whether to replace all existing headers with the same name. *)
}
[@@deriving yojson_of]
(** Describes a header to add. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action__request_header_to_remove = {
  header_name : string prop;  (** The name of the header to remove. *)
}
[@@deriving yojson_of]
(** A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action__response_header_to_add = {
  header_name : string prop;  (** The name of the header to add. *)
  header_value : string prop;  (** The value of the header to add. *)
  replace : bool prop option; [@option]
      (** Whether to replace all existing headers with the same name. *)
}
[@@deriving yojson_of]
(** Headers to add to the response prior to sending it back to the client.

Response headers are only sent to the client, and do not have an effect on the cache serving the response. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action__response_header_to_remove = {
  header_name : string prop;
      (** Headers to remove from the response prior to sending it back to the client.

Response headers are only sent to the client, and do not have an effect on the cache serving the response. *)
}
[@@deriving yojson_of]
(** A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action = {
  request_header_to_add :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action__request_header_to_add
    list;
  request_header_to_remove :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action__request_header_to_remove
    list;
  response_header_to_add :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action__response_header_to_add
    list;
  response_header_to_remove :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action__response_header_to_remove
    list;
}
[@@deriving yojson_of]
(** The header actions, including adding & removing headers, for requests that match this route. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__match_rule__header_match = {
  exact_match : string prop option; [@option]
      (** The value of the header should exactly match contents of exactMatch. *)
  header_name : string prop;  (** The header name to match on. *)
  invert_match : bool prop option; [@option]
      (** If set to false (default), the headerMatch is considered a match if the match criteria above are met.
If set to true, the headerMatch is considered a match if the match criteria above are NOT met. *)
  prefix_match : string prop option; [@option]
      (** The value of the header must start with the contents of prefixMatch. *)
  present_match : bool prop option; [@option]
      (** A header with the contents of headerName must exist. The match takes place whether or not the request's header has a value. *)
  suffix_match : string prop option; [@option]
      (** The value of the header must end with the contents of suffixMatch. *)
}
[@@deriving yojson_of]
(** Specifies a list of header match criteria, all of which must match corresponding headers in the request. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__match_rule__query_parameter_match = {
  exact_match : string prop option; [@option]
      (** The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch. *)
  name : string prop;
      (** The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails. *)
  present_match : bool prop option; [@option]
      (** Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not. *)
}
[@@deriving yojson_of]
(** Specifies a list of query parameter match criteria, all of which must match corresponding query parameters in the request. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__match_rule = {
  full_path_match : string prop option; [@option]
      (** For satisfying the matchRule condition, the path of the request must exactly match the value specified in fullPathMatch after removing any query parameters and anchor that may be part of the original URL. *)
  ignore_case : bool prop option; [@option]
      (** Specifies that prefixMatch and fullPathMatch matches are case sensitive. *)
  path_template_match : string prop option; [@option]
      (** For satisfying the matchRule condition, the path of the request
must match the wildcard pattern specified in pathTemplateMatch
after removing any query parameters and anchor that may be part
of the original URL.

pathTemplateMatch must be between 1 and 255 characters
(inclusive).  The pattern specified by pathTemplateMatch may
have at most 5 wildcard operators and at most 5 variable
captures in total. *)
  prefix_match : string prop option; [@option]
      (** For satisfying the matchRule condition, the request's path must begin with the specified prefixMatch. prefixMatch must begin with a /. *)
  header_match :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__match_rule__header_match
    list;
  query_parameter_match :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__match_rule__query_parameter_match
    list;
}
[@@deriving yojson_of]
(** The list of criteria for matching attributes of a request to this routeRule. This list has OR semantics: the request matches this routeRule when any of the matchRules are satisfied. However predicates
within a given matchRule have AND semantics. All predicates within a matchRule must match for the request to match the rule. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures = {
  actions : string prop list;
      (** The actions to take to add signatures to responses. Possible values: [GENERATE_COOKIE, GENERATE_TOKEN_HLS_COOKIELESS, PROPAGATE_TOKEN_HLS_COOKIELESS] *)
  copied_parameters : string prop list option; [@option]
      (** The parameters to copy from the verified token to the generated token.

Only the following parameters may be copied:

  * 'PathGlobs'
  * 'paths'
  * 'acl'
  * 'URLPrefix'
  * 'IPRanges'
  * 'SessionID'
  * 'id'
  * 'Data'
  * 'data'
  * 'payload'
  * 'Headers'

You may specify up to 6 parameters to copy.  A given parameter is be copied only if the parameter exists in the verified token.  Parameter names are matched exactly as specified.  The order of the parameters does not matter.  Duplicates are not allowed.

This field may only be specified when the GENERATE_COOKIE or GENERATE_TOKEN_HLS_COOKIELESS actions are specified. *)
  keyset : string prop option; [@option]
      (** The keyset to use for signature generation.

The following are both valid paths to an EdgeCacheKeyset resource:

  * 'projects/project/locations/global/edgeCacheKeysets/yourKeyset'
  * 'yourKeyset'

This must be specified when the GENERATE_COOKIE or GENERATE_TOKEN_HLS_COOKIELESS actions are specified.  This field may not be specified otherwise. *)
  token_query_parameter : string prop option; [@option]
      (** The query parameter in which to put the generated token.

If not specified, defaults to 'edge-cache-token'.

If specified, the name must be 1-64 characters long and match the regular expression '[a-zA-Z]([a-zA-Z0-9_-])*' which means the first character must be a letter, and all following characters must be a dash, underscore, letter or digit.

This field may only be set when the GENERATE_TOKEN_HLS_COOKIELESS or PROPAGATE_TOKEN_HLS_COOKIELESS actions are specified. *)
  token_ttl : string prop option; [@option]
      (** The duration the token is valid starting from the moment the token is first generated.

Defaults to '86400s' (1 day).

The TTL must be >= 0 and <= 604,800 seconds (1 week).

This field may only be specified when the GENERATE_COOKIE or GENERATE_TOKEN_HLS_COOKIELESS actions are specified.

A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
}
[@@deriving yojson_of]
(** Enable signature generation or propagation on this route.

This field may only be specified when signedRequestMode is set to REQUIRE_TOKENS. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy = {
  exclude_host : bool prop option; [@option]
      (** If true, requests to different hosts will be cached separately.

Note: this should only be enabled if hosts share the same origin and content. Removing the host from the cache key may inadvertently result in different objects being cached than intended, depending on which route the first user matched. *)
  exclude_query_string : bool prop option; [@option]
      (** If true, exclude query string parameters from the cache key

If false (the default), include the query string parameters in
the cache key according to includeQueryParameters and
excludeQueryParameters. If neither includeQueryParameters nor
excludeQueryParameters is set, the entire query string will be
included. *)
  excluded_query_parameters : string prop list option; [@option]
      (** Names of query string parameters to exclude from cache keys. All other parameters will be included.

Either specify includedQueryParameters or excludedQueryParameters, not both. '&' and '=' will be percent encoded and not treated as delimiters. *)
  include_protocol : bool prop option; [@option]
      (** If true, http and https requests will be cached separately. *)
  included_cookie_names : string prop list option; [@option]
      (** Names of Cookies to include in cache keys.  The cookie name and cookie value of each cookie named will be used as part of the cache key.

Cookie names:
  - must be valid RFC 6265 cookie-name tokens
  - are case sensitive
  - cannot start with Edge-Cache- (case insensitive)

  Note that specifying several cookies, and/or cookies that have a large range of values (e.g., per-user) will dramatically impact the cache hit rate, and may result in a higher eviction rate and reduced performance.

  You may specify up to three cookie names. *)
  included_header_names : string prop list option; [@option]
      (** Names of HTTP request headers to include in cache keys. The value of the header field will be used as part of the cache key.

- Header names must be valid HTTP RFC 7230 header field values.
- Header field names are case insensitive
- To include the HTTP method, use :method

Note that specifying several headers, and/or headers that have a large range of values (e.g. per-user) will dramatically impact the cache hit rate, and may result in a higher eviction rate and reduced performance. *)
  included_query_parameters : string prop list option; [@option]
      (** Names of query string parameters to include in cache keys. All other parameters will be excluded.

Either specify includedQueryParameters or excludedQueryParameters, not both. '&' and '=' will be percent encoded and not treated as delimiters. *)
}
[@@deriving yojson_of]
(** Defines the request parameters that contribute to the cache key. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options = {
  allowed_signature_algorithms : string prop list option; [@option]
      (** The allowed signature algorithms to use.

Defaults to using only ED25519.

You may specify up to 3 signature algorithms to use. Possible values: [ED25519, HMAC_SHA_256, HMAC_SHA1] *)
  token_query_parameter : string prop option; [@option]
      (** The query parameter in which to find the token.

The name must be 1-64 characters long and match the regular expression '[a-zA-Z]([a-zA-Z0-9_-])*' which means the first character must be a letter, and all following characters must be a dash, underscore, letter or digit.

Defaults to 'edge-cache-token'. *)
}
[@@deriving yojson_of]
(** Additional options for signed tokens.

signedTokenOptions may only be specified when signedRequestMode is REQUIRE_TOKENS. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cdn_policy = {
  cache_mode : string prop option; [@option]
      (** Cache modes allow users to control the behaviour of the cache, what content it should cache automatically, whether to respect origin headers, or whether to unconditionally cache all responses.

For all cache modes, Cache-Control headers will be passed to the client. Use clientTtl to override what is sent to the client. Possible values: [CACHE_ALL_STATIC, USE_ORIGIN_HEADERS, FORCE_CACHE_ALL, BYPASS_CACHE] *)
  client_ttl : string prop option; [@option]
      (** Specifies a separate client (e.g. browser client) TTL, separate from the TTL used by the edge caches. Leaving this empty will use the same cache TTL for both the CDN and the client-facing response.

- The TTL must be > 0 and <= 86400s (1 day)
- The clientTtl cannot be larger than the defaultTtl (if set)
- Fractions of a second are not allowed.

Omit this field to use the defaultTtl, or the max-age set by the origin, as the client-facing TTL.

When the cache mode is set to USE_ORIGIN_HEADERS or BYPASS_CACHE, you must omit this field.
A duration in seconds terminated by 's'. Example: 3s. *)
  default_ttl : string prop option; [@option]
      (** Specifies the default TTL for cached content served by this origin for responses that do not have an existing valid TTL (max-age or s-max-age).

Defaults to 3600s (1 hour).

- The TTL must be >= 0 and <= 31,536,000 seconds (1 year)
- Setting a TTL of 0 means always revalidate (equivalent to must-revalidate)
- The value of defaultTTL cannot be set to a value greater than that of maxTTL.
- Fractions of a second are not allowed.
- When the cacheMode is set to FORCE_CACHE_ALL, the defaultTTL will overwrite the TTL set in all responses.

Note that infrequently accessed objects may be evicted from the cache before the defined TTL. Objects that expire will be revalidated with the origin.

When the cache mode is set to USE_ORIGIN_HEADERS or BYPASS_CACHE, you must omit this field.

A duration in seconds terminated by 's'. Example: 3s. *)
  max_ttl : string prop option; [@option]
      (** Specifies the maximum allowed TTL for cached content served by this origin.

Defaults to 86400s (1 day).

Cache directives that attempt to set a max-age or s-maxage higher than this, or an Expires header more than maxTtl seconds in the future will be capped at the value of maxTTL, as if it were the value of an s-maxage Cache-Control directive.

- The TTL must be >= 0 and <= 31,536,000 seconds (1 year)
- Setting a TTL of 0 means always revalidate
- The value of maxTtl must be equal to or greater than defaultTtl.
- Fractions of a second are not allowed.

When the cache mode is set to USE_ORIGIN_HEADERS, FORCE_CACHE_ALL, or BYPASS_CACHE, you must omit this field.

A duration in seconds terminated by 's'. Example: 3s. *)
  negative_caching : bool prop option; [@option]
      (** Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. This can reduce the load on your origin and improve end-user experience by reducing response latency.

By default, the CDNPolicy will apply the following default TTLs to these status codes:

- HTTP 300 (Multiple Choice), 301, 308 (Permanent Redirects): 10m
- HTTP 404 (Not Found), 410 (Gone), 451 (Unavailable For Legal Reasons): 120s
- HTTP 405 (Method Not Found), 414 (URI Too Long), 501 (Not Implemented): 60s

These defaults can be overridden in negativeCachingPolicy *)
  negative_caching_policy : (string * string prop) list option;
      [@option]
      (** Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.

- Omitting the policy and leaving negativeCaching enabled will use the default TTLs for each status code, defined in negativeCaching.
- TTLs must be >= 0 (where 0 is always revalidate) and <= 86400s (1 day)

Note that when specifying an explicit negativeCachingPolicy, you should take care to specify a cache TTL for all response codes that you wish to cache. The CDNPolicy will not apply any default negative caching when a policy exists. *)
  signed_request_keyset : string prop option; [@option]
      (** The EdgeCacheKeyset containing the set of public keys used to validate signed requests at the edge. *)
  signed_request_maximum_expiration_ttl : string prop option;
      [@option]
      (** Limit how far into the future the expiration time of a signed request may be.

When set, a signed request is rejected if its expiration time is later than now + signedRequestMaximumExpirationTtl, where now is the time at which the signed request is first handled by the CDN.

- The TTL must be > 0.
- Fractions of a second are not allowed.

By default, signedRequestMaximumExpirationTtl is not set and the expiration time of a signed request may be arbitrarily far into future. *)
  signed_request_mode : string prop option; [@option]
      (** Whether to enforce signed requests. The default value is DISABLED, which means all content is public, and does not authorize access.

You must also set a signedRequestKeyset to enable signed requests.

When set to REQUIRE_SIGNATURES, all matching requests will have their signature validated. Requests that were not signed with the corresponding private key, or that are otherwise invalid (expired, do not match the signature, IP address, or header) will be rejected with a HTTP 403 and (if enabled) logged. Possible values: [DISABLED, REQUIRE_SIGNATURES, REQUIRE_TOKENS] *)
  add_signatures :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures
    list;
  cache_key_policy :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy
    list;
  signed_token_options :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options
    list;
}
[@@deriving yojson_of]
(** The policy to use for defining caching and signed request behaviour for requests that match this route. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cors_policy = {
  allow_credentials : bool prop option; [@option]
      (** In response to a preflight request, setting this to true indicates that the actual request can include user credentials.

This translates to the Access-Control-Allow-Credentials response header. *)
  allow_headers : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Allow-Headers response header. *)
  allow_methods : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Allow-Methods response header. *)
  allow_origins : string prop list option; [@option]
      (** Specifies the list of origins that will be allowed to do CORS requests.

This translates to the Access-Control-Allow-Origin response header. *)
  disabled : bool prop option; [@option]
      (** If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect. *)
  expose_headers : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Allow-Headers response header. *)
  max_age : string prop;
      (** Specifies how long results of a preflight request can be cached by a client in seconds. Note that many browser clients enforce a maximum TTL of 600s (10 minutes).

- Setting the value to -1 forces a pre-flight check for all requests (not recommended)
- A maximum TTL of 86400s can be set, but note that (as above) some clients may force pre-flight checks at a more regular interval.
- This translates to the Access-Control-Max-Age header.

A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
}
[@@deriving yojson_of]
(** CORSPolicy defines Cross-Origin-Resource-Sharing configuration, including which CORS response headers will be set. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__url_rewrite = {
  host_rewrite : string prop option; [@option]
      (** Prior to forwarding the request to the selected origin, the request's host header is replaced with contents of hostRewrite. *)
  path_prefix_rewrite : string prop option; [@option]
      (** Prior to forwarding the request to the selected origin, the matching portion of the request's path is replaced by pathPrefixRewrite. *)
  path_template_rewrite : string prop option; [@option]
      (** Prior to forwarding the request to the selected origin, if the
request matched a pathTemplateMatch, the matching portion of the
request's path is replaced re-written using the pattern specified
by pathTemplateRewrite.

pathTemplateRewrite must be between 1 and 255 characters
(inclusive), must start with a '/', and must only use variables
captured by the route's pathTemplate matchers.

pathTemplateRewrite may only be used when all of a route's
MatchRules specify pathTemplate.

Only one of pathPrefixRewrite and pathTemplateRewrite may be
specified. *)
}
[@@deriving yojson_of]
(** The URL rewrite configuration for requests that match this route. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action = {
  cdn_policy :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cdn_policy
    list;
  cors_policy :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__cors_policy
    list;
  url_rewrite :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action__url_rewrite
    list;
}
[@@deriving yojson_of]
(** In response to a matching path, the routeAction performs advanced routing actions like URL rewrites, header transformations, etc. prior to forwarding the request to the selected origin. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule__url_redirect = {
  host_redirect : string prop option; [@option]
      (** The host that will be used in the redirect response instead of the one that was supplied in the request. *)
  https_redirect : bool prop option; [@option]
      (** If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request.

This can only be set if there is at least one (1) edgeSslCertificate set on the service. *)
  path_redirect : string prop option; [@option]
      (** The path that will be used in the redirect response instead of the one that was supplied in the request.

pathRedirect cannot be supplied together with prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.

The path value must be between 1 and 1024 characters. *)
  prefix_redirect : string prop option; [@option]
      (** The prefix that replaces the prefixMatch specified in the routeRule, retaining the remaining portion of the URL before redirecting the request.

prefixRedirect cannot be supplied together with pathRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect. *)
  redirect_response_code : string prop option; [@option]
      (** The HTTP Status code to use for this RedirectAction.

The supported values are:

- 'MOVED_PERMANENTLY_DEFAULT', which is the default value and corresponds to 301.
- 'FOUND', which corresponds to 302.
- 'SEE_OTHER' which corresponds to 303.
- 'TEMPORARY_REDIRECT', which corresponds to 307. in this case, the request method will be retained.
- 'PERMANENT_REDIRECT', which corresponds to 308. in this case, the request method will be retained. Possible values: [MOVED_PERMANENTLY_DEFAULT, FOUND, SEE_OTHER, TEMPORARY_REDIRECT, PERMANENT_REDIRECT] *)
  strip_query : bool prop option; [@option]
      (** If set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained. *)
}
[@@deriving yojson_of]
(** The URL redirect configuration for requests that match this route. *)

type google_network_services_edge_cache_service__routing__path_matcher__route_rule = {
  description : string prop option; [@option]
      (** A human-readable description of the routeRule. *)
  origin : string prop option; [@option]
      (** The Origin resource that requests to this route should fetch from when a matching response is not in cache. Origins can be defined as short names (my-origin) or fully-qualified resource URLs - e.g. networkservices.googleapis.com/projects/my-project/global/edgecacheorigins/my-origin

Only one of origin or urlRedirect can be set. *)
  priority : string prop;
      (** The priority of this route rule, where 1 is the highest priority.

You cannot configure two or more routeRules with the same priority. Priority for each rule must be set to a number between 1 and 999 inclusive.

Priority numbers can have gaps, which enable you to add or remove rules in the future without affecting the rest of the rules. For example, 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers
to which you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the future without any impact on existing rules. *)
  header_action :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__header_action
    list;
  match_rule :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__match_rule
    list;
  route_action :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__route_action
    list;
  url_redirect :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule__url_redirect
    list;
}
[@@deriving yojson_of]
(** The routeRules to match against. routeRules support advanced routing behaviour, and can match on paths, headers and query parameters, as well as status codes and HTTP methods. *)

type google_network_services_edge_cache_service__routing__path_matcher = {
  description : string prop option; [@option]
      (** A human-readable description of the resource. *)
  name : string prop;
      (** The name to which this PathMatcher is referred by the HostRule. *)
  route_rule :
    google_network_services_edge_cache_service__routing__path_matcher__route_rule
    list;
}
[@@deriving yojson_of]
(** The list of pathMatchers referenced via name by hostRules. PathMatcher is used to match the path portion of the URL when a HostRule matches the URL's host portion. *)

type google_network_services_edge_cache_service__routing = {
  host_rule :
    google_network_services_edge_cache_service__routing__host_rule
    list;
  path_matcher :
    google_network_services_edge_cache_service__routing__path_matcher
    list;
}
[@@deriving yojson_of]
(** Defines how requests are routed, modified, cached and/or which origin content is filled from. *)

type google_network_services_edge_cache_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_services_edge_cache_service__timeouts *)

type google_network_services_edge_cache_service = {
  description : string prop option; [@option]
      (** A human-readable description of the resource. *)
  disable_http2 : bool prop option; [@option]
      (** Disables HTTP/2.

HTTP/2 (h2) is enabled by default and recommended for performance. HTTP/2 improves connection re-use and reduces connection setup overhead by sending multiple streams over the same connection.

Some legacy HTTP clients may have issues with HTTP/2 connections due to broken HTTP/2 implementations. Setting this to true will prevent HTTP/2 from being advertised and negotiated. *)
  disable_quic : bool prop option; [@option]
      (** HTTP/3 (IETF QUIC) and Google QUIC are enabled by default. *)
  edge_security_policy : string prop option; [@option]
      (** Resource URL that points at the Cloud Armor edge security policy that is applied on each request against the EdgeCacheService. *)
  edge_ssl_certificates : string prop list option; [@option]
      (** URLs to sslCertificate resources that are used to authenticate connections between users and the EdgeCacheService.

Note that only global certificates with a scope of EDGE_CACHE can be attached to an EdgeCacheService. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Set of label tags associated with the EdgeCache resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;
      (** Name of the resource; provided by the client when the resource is created.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit. *)
  project : string prop option; [@option]  (** project *)
  require_tls : bool prop option; [@option]
      (** Require TLS (HTTPS) for all clients connecting to this service.

Clients who connect over HTTP (port 80) will receive a HTTP 301 to the same URL over HTTPS (port 443).
You must have at least one (1) edgeSslCertificate specified to enable this. *)
  ssl_policy : string prop option; [@option]
      (** URL of the SslPolicy resource that will be associated with the EdgeCacheService.

If not set, the EdgeCacheService has no SSL policy configured, and will default to the COMPATIBLE policy. *)
  log_config :
    google_network_services_edge_cache_service__log_config list;
  routing : google_network_services_edge_cache_service__routing list;
  timeouts :
    google_network_services_edge_cache_service__timeouts option;
}
[@@deriving yojson_of]
(** google_network_services_edge_cache_service *)

let google_network_services_edge_cache_service ?description
    ?disable_http2 ?disable_quic ?edge_security_policy
    ?edge_ssl_certificates ?id ?labels ?project ?require_tls
    ?ssl_policy ?timeouts ~name ~log_config ~routing __resource_id =
  let __resource_type =
    "google_network_services_edge_cache_service"
  in
  let __resource =
    {
      description;
      disable_http2;
      disable_quic;
      edge_security_policy;
      edge_ssl_certificates;
      id;
      labels;
      name;
      project;
      require_tls;
      ssl_policy;
      log_config;
      routing;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_services_edge_cache_service __resource);
  ()
