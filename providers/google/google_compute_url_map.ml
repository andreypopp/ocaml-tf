(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type default_route_action__cors_policy = {
  allow_credentials : bool prop option; [@option]
      (** In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
This translates to the Access-Control-Allow-Credentials header. *)
  allow_headers : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Allow-Headers header. *)
  allow_methods : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Allow-Methods header. *)
  allow_origin_regexes : string prop list option; [@option]
      (** Specifies the regular expression patterns that match allowed origins. For regular expression grammar
please see en.cppreference.com/w/cpp/regex/ecmascript
An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. *)
  allow_origins : string prop list option; [@option]
      (** Specifies the list of origins that will be allowed to do CORS requests.
An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. *)
  disabled : bool prop option; [@option]
      (** If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect. *)
  expose_headers : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Expose-Headers header. *)
  max_age : float prop option; [@option]
      (** Specifies how long results of a preflight request can be cached in seconds.
This translates to the Access-Control-Max-Age header. *)
}
[@@deriving yojson_of]
(** The specification for allowing client side cross-origin requests. Please see
[W3C Recommendation for Cross Origin Resource Sharing](https://www.w3.org/TR/cors/) *)

type default_route_action__fault_injection_policy__abort = {
  http_status : float prop option; [@option]
      (** The HTTP status code used to abort the request.
The value must be between 200 and 599 inclusive. *)
  percentage : float prop option; [@option]
      (** The percentage of traffic (connections/operations/requests) which will be aborted as part of fault injection.
The value must be between 0.0 and 100.0 inclusive. *)
}
[@@deriving yojson_of]
(** The specification for how client requests are aborted as part of fault injection. *)

type default_route_action__fault_injection_policy__delay__fixed_delay = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations less than one second are
represented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : string prop option; [@option]
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years *)
}
[@@deriving yojson_of]
(** Specifies the value of the fixed delay interval. *)

type default_route_action__fault_injection_policy__delay = {
  percentage : float prop option; [@option]
      (** The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
The value must be between 0.0 and 100.0 inclusive. *)
  fixed_delay :
    default_route_action__fault_injection_policy__delay__fixed_delay
    list;
}
[@@deriving yojson_of]
(** The specification for how client requests are delayed as part of fault injection, before being sent to a backend service. *)

type default_route_action__fault_injection_policy = {
  abort : default_route_action__fault_injection_policy__abort list;
  delay : default_route_action__fault_injection_policy__delay list;
}
[@@deriving yojson_of]
(** The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
As part of fault injection, when clients send requests to a backend service, delays can be introduced by Loadbalancer on a
percentage of requests before sending those request to the backend service. Similarly requests from clients can be aborted
by the Loadbalancer for a percentage of requests.

timeout and retryPolicy will be ignored by clients that are configured with a faultInjectionPolicy. *)

type default_route_action__request_mirror_policy = {
  backend_service : string prop;
      (** The full or partial URL to the BackendService resource being mirrored to. *)
}
[@@deriving yojson_of]
(** Specifies the policy on how requests intended for the route's backends are shadowed to a separate mirrored backend service.
Loadbalancer does not wait for responses from the shadow service. Prior to sending traffic to the shadow service,
the host / authority header is suffixed with -shadow. *)

type default_route_action__retry_policy__per_try_timeout = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations less than one second are
represented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : string prop option; [@option]
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years *)
}
[@@deriving yojson_of]
(** Specifies a non-zero timeout per retry attempt.

If not specified, will use the timeout set in HttpRouteAction. If timeout in HttpRouteAction is not set,
will use the largest timeout among all backend services associated with the route. *)

type default_route_action__retry_policy = {
  num_retries : float prop option; [@option]
      (** Specifies the allowed number retries. This number must be > 0. If not specified, defaults to 1. *)
  retry_conditions : string prop list option; [@option]
      (** Specfies one or more conditions when this retry rule applies. Valid values are:

* 5xx: Loadbalancer will attempt a retry if the backend service responds with any 5xx response code,
  or if the backend service does not respond at all, example: disconnects, reset, read timeout,
* connection failure, and refused streams.
* gateway-error: Similar to 5xx, but only applies to response codes 502, 503 or 504.
* connect-failure: Loadbalancer will retry on failures connecting to backend services,
  for example due to connection timeouts.
* retriable-4xx: Loadbalancer will retry for retriable 4xx response codes.
  Currently the only retriable error supported is 409.
* refused-stream:Loadbalancer will retry if the backend service resets the stream with a REFUSED_STREAM error code.
  This reset type indicates that it is safe to retry.
* cancelled: Loadbalancer will retry if the gRPC status code in the response header is set to cancelled
* deadline-exceeded: Loadbalancer will retry if the gRPC status code in the response header is set to deadline-exceeded
* resource-exhausted: Loadbalancer will retry if the gRPC status code in the response header is set to resource-exhausted
* unavailable: Loadbalancer will retry if the gRPC status code in the response header is set to unavailable *)
  per_try_timeout :
    default_route_action__retry_policy__per_try_timeout list;
}
[@@deriving yojson_of]
(** Specifies the retry policy associated with this route. *)

type default_route_action__timeout = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations less than one second are represented
with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : string prop option; [@option]
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years *)
}
[@@deriving yojson_of]
(** Specifies the timeout for the selected route. Timeout is computed from the time the request has been
fully processed (i.e. end-of-stream) up until the response has been completely processed. Timeout includes all retries.

If not specified, will use the largest timeout among all backend services associated with the route. *)

type default_route_action__url_rewrite = {
  host_rewrite : string prop option; [@option]
      (** Prior to forwarding the request to the selected service, the request's host header is replaced
with contents of hostRewrite.

The value must be between 1 and 255 characters. *)
  path_prefix_rewrite : string prop option; [@option]
      (** Prior to forwarding the request to the selected backend service, the matching portion of the
request's path is replaced by pathPrefixRewrite.

The value must be between 1 and 1024 characters. *)
}
[@@deriving yojson_of]
(** The spec to modify the URL of the request, prior to forwarding the request to the matched service. *)

type default_route_action__weighted_backend_services__header_action__request_headers_to_add = {
  header_name : string prop option; [@option]
      (** The name of the header to add. *)
  header_value : string prop option; [@option]
      (** The value of the header to add. *)
  replace : bool prop option; [@option]
      (** If false, headerValue is appended to any values that already exist for the header.
If true, headerValue is set for the header, discarding any values that were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add to a matching request prior to forwarding the request to the backendService. *)

type default_route_action__weighted_backend_services__header_action__response_headers_to_add = {
  header_name : string prop option; [@option]
      (** The name of the header to add. *)
  header_value : string prop option; [@option]
      (** The value of the header to add. *)
  replace : bool prop option; [@option]
      (** If false, headerValue is appended to any values that already exist for the header.
If true, headerValue is set for the header, discarding any values that were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add the response prior to sending the response back to the client. *)

type default_route_action__weighted_backend_services__header_action = {
  request_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the request prior to
forwarding the request to the backendService. *)
  response_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the response prior to sending the
response back to the client. *)
  request_headers_to_add :
    default_route_action__weighted_backend_services__header_action__request_headers_to_add
    list;
  response_headers_to_add :
    default_route_action__weighted_backend_services__header_action__response_headers_to_add
    list;
}
[@@deriving yojson_of]
(** Specifies changes to request and response headers that need to take effect for
the selected backendService.

headerAction specified here take effect before headerAction in the enclosing
HttpRouteRule, PathMatcher and UrlMap. *)

type default_route_action__weighted_backend_services = {
  backend_service : string prop option; [@option]
      (** The full or partial URL to the default BackendService resource. Before forwarding the
request to backendService, the loadbalancer applies any relevant headerActions
specified as part of this backendServiceWeight. *)
  weight : float prop option; [@option]
      (** Specifies the fraction of traffic sent to backendService, computed as
weight / (sum of all weightedBackendService weights in routeAction) .

The selection of a backend service is determined only for new traffic. Once a user's request
has been directed to a backendService, subsequent requests will be sent to the same backendService
as determined by the BackendService's session affinity policy.

The value must be between 0 and 1000 *)
  header_action :
    default_route_action__weighted_backend_services__header_action
    list;
}
[@@deriving yojson_of]
(** A list of weighted backend services to send traffic to when a route match occurs.
The weights determine the fraction of traffic that flows to their corresponding backend service.
If all traffic needs to go to a single backend service, there must be one weightedBackendService
with weight set to a non 0 number.

Once a backendService is identified and before forwarding the request to the backend service,
advanced routing actions like Url rewrites and header transformations are applied depending on
additional settings specified in this HttpRouteAction. *)

type default_route_action = {
  cors_policy : default_route_action__cors_policy list;
  fault_injection_policy :
    default_route_action__fault_injection_policy list;
  request_mirror_policy :
    default_route_action__request_mirror_policy list;
  retry_policy : default_route_action__retry_policy list;
  timeout : default_route_action__timeout list;
  url_rewrite : default_route_action__url_rewrite list;
  weighted_backend_services :
    default_route_action__weighted_backend_services list;
}
[@@deriving yojson_of]
(** defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions
like URL rewrites, header transformations, etc. prior to forwarding the request to the selected backend.
If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService
is set, defaultRouteAction cannot contain any weightedBackendServices.

Only one of defaultRouteAction or defaultUrlRedirect must be set. *)

type default_url_redirect = {
  host_redirect : string prop option; [@option]
      (** The host that will be used in the redirect response instead of the one that was
supplied in the request. The value must be between 1 and 255 characters. *)
  https_redirect : bool prop option; [@option]
      (** If set to true, the URL scheme in the redirected request is set to https. If set to
false, the URL scheme of the redirected request will remain the same as that of the
request. This must only be set for UrlMaps used in TargetHttpProxys. Setting this
true for TargetHttpsProxy is not permitted. The default is set to false. *)
  path_redirect : string prop option; [@option]
      (** The path that will be used in the redirect response instead of the one that was
supplied in the request. pathRedirect cannot be supplied together with
prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the
original request will be used for the redirect. The value must be between 1 and 1024
characters. *)
  prefix_redirect : string prop option; [@option]
      (** The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch,
retaining the remaining portion of the URL before redirecting the request.
prefixRedirect cannot be supplied together with pathRedirect. Supply one alone or
neither. If neither is supplied, the path of the original request will be used for
the redirect. The value must be between 1 and 1024 characters. *)
  redirect_response_code : string prop option; [@option]
      (** The HTTP Status code to use for this RedirectAction. Supported values are:

* MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.

* FOUND, which corresponds to 302.

* SEE_OTHER which corresponds to 303.

* TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method
will be retained.

* PERMANENT_REDIRECT, which corresponds to 308. In this case,
the request method will be retained. Possible values: [FOUND, MOVED_PERMANENTLY_DEFAULT, PERMANENT_REDIRECT, SEE_OTHER, TEMPORARY_REDIRECT] *)
  strip_query : bool prop;
      (** If set to true, any accompanying query portion of the original URL is removed prior
to redirecting the request. If set to false, the query portion of the original URL is
retained. The default is set to false.
 This field is required to ensure an empty block is not set. The normal default value is false. *)
}
[@@deriving yojson_of]
(** When none of the specified hostRules match, the request is redirected to a URL specified
by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
defaultRouteAction must not be set. *)

type header_action__request_headers_to_add = {
  header_name : string prop;  (** The name of the header. *)
  header_value : string prop;  (** The value of the header to add. *)
  replace : bool prop;
      (** If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add to a matching request prior to forwarding the request to the
backendService. *)

type header_action__response_headers_to_add = {
  header_name : string prop;  (** The name of the header. *)
  header_value : string prop;  (** The value of the header to add. *)
  replace : bool prop;
      (** If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add the response prior to sending the response back to the client. *)

type header_action = {
  request_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the request
prior to forwarding the request to the backendService. *)
  response_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the response
prior to sending the response back to the client. *)
  request_headers_to_add :
    header_action__request_headers_to_add list;
  response_headers_to_add :
    header_action__response_headers_to_add list;
}
[@@deriving yojson_of]
(** Specifies changes to request and response headers that need to take effect for
the selected backendService. The headerAction specified here take effect after
headerAction specified under pathMatcher. *)

type host_rule = {
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when you create
the resource. *)
  hosts : string prop list;
      (** The list of host patterns to match. They must be valid hostnames, except * will
match any string of ([a-z0-9-.]\*\). In that case, * must be the first character
and must be followed in the pattern by either - or .. *)
  path_matcher : string prop;
      (** The name of the PathMatcher to use to match the path portion of the URL if the
hostRule matches the URL's host portion. *)
}
[@@deriving yojson_of]
(** The list of HostRules to use against the URL. *)

type path_matcher__default_route_action__cors_policy = {
  allow_credentials : bool prop option; [@option]
      (** In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
This translates to the Access-Control-Allow-Credentials header. *)
  allow_headers : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Allow-Headers header. *)
  allow_methods : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Allow-Methods header. *)
  allow_origin_regexes : string prop list option; [@option]
      (** Specifies the regular expression patterns that match allowed origins. For regular expression grammar
please see en.cppreference.com/w/cpp/regex/ecmascript
An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. *)
  allow_origins : string prop list option; [@option]
      (** Specifies the list of origins that will be allowed to do CORS requests.
An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. *)
  disabled : bool prop option; [@option]
      (** If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect. *)
  expose_headers : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Expose-Headers header. *)
  max_age : float prop option; [@option]
      (** Specifies how long results of a preflight request can be cached in seconds.
This translates to the Access-Control-Max-Age header. *)
}
[@@deriving yojson_of]
(** The specification for allowing client side cross-origin requests. Please see
[W3C Recommendation for Cross Origin Resource Sharing](https://www.w3.org/TR/cors/) *)

type path_matcher__default_route_action__fault_injection_policy__abort = {
  http_status : float prop option; [@option]
      (** The HTTP status code used to abort the request.
The value must be between 200 and 599 inclusive. *)
  percentage : float prop option; [@option]
      (** The percentage of traffic (connections/operations/requests) which will be aborted as part of fault injection.
The value must be between 0.0 and 100.0 inclusive. *)
}
[@@deriving yojson_of]
(** The specification for how client requests are aborted as part of fault injection. *)

type path_matcher__default_route_action__fault_injection_policy__delay__fixed_delay = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations less than one second are
represented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : string prop option; [@option]
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years *)
}
[@@deriving yojson_of]
(** Specifies the value of the fixed delay interval. *)

type path_matcher__default_route_action__fault_injection_policy__delay = {
  percentage : float prop option; [@option]
      (** The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
The value must be between 0.0 and 100.0 inclusive. *)
  fixed_delay :
    path_matcher__default_route_action__fault_injection_policy__delay__fixed_delay
    list;
}
[@@deriving yojson_of]
(** The specification for how client requests are delayed as part of fault injection, before being sent to a backend service. *)

type path_matcher__default_route_action__fault_injection_policy = {
  abort :
    path_matcher__default_route_action__fault_injection_policy__abort
    list;
  delay :
    path_matcher__default_route_action__fault_injection_policy__delay
    list;
}
[@@deriving yojson_of]
(** The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
As part of fault injection, when clients send requests to a backend service, delays can be introduced by Loadbalancer on a
percentage of requests before sending those request to the backend service. Similarly requests from clients can be aborted
by the Loadbalancer for a percentage of requests.

timeout and retryPolicy will be ignored by clients that are configured with a faultInjectionPolicy. *)

type path_matcher__default_route_action__request_mirror_policy = {
  backend_service : string prop;
      (** The full or partial URL to the BackendService resource being mirrored to. *)
}
[@@deriving yojson_of]
(** Specifies the policy on how requests intended for the route's backends are shadowed to a separate mirrored backend service.
Loadbalancer does not wait for responses from the shadow service. Prior to sending traffic to the shadow service,
the host / authority header is suffixed with -shadow. *)

type path_matcher__default_route_action__retry_policy__per_try_timeout = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations less than one second are
represented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : string prop option; [@option]
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years *)
}
[@@deriving yojson_of]
(** Specifies a non-zero timeout per retry attempt.

If not specified, will use the timeout set in HttpRouteAction. If timeout in HttpRouteAction is not set,
will use the largest timeout among all backend services associated with the route. *)

type path_matcher__default_route_action__retry_policy = {
  num_retries : float prop option; [@option]
      (** Specifies the allowed number retries. This number must be > 0. If not specified, defaults to 1. *)
  retry_conditions : string prop list option; [@option]
      (** Specfies one or more conditions when this retry rule applies. Valid values are:

* 5xx: Loadbalancer will attempt a retry if the backend service responds with any 5xx response code,
  or if the backend service does not respond at all, example: disconnects, reset, read timeout,
* connection failure, and refused streams.
* gateway-error: Similar to 5xx, but only applies to response codes 502, 503 or 504.
* connect-failure: Loadbalancer will retry on failures connecting to backend services,
  for example due to connection timeouts.
* retriable-4xx: Loadbalancer will retry for retriable 4xx response codes.
  Currently the only retriable error supported is 409.
* refused-stream:Loadbalancer will retry if the backend service resets the stream with a REFUSED_STREAM error code.
  This reset type indicates that it is safe to retry.
* cancelled: Loadbalancer will retry if the gRPC status code in the response header is set to cancelled
* deadline-exceeded: Loadbalancer will retry if the gRPC status code in the response header is set to deadline-exceeded
* resource-exhausted: Loadbalancer will retry if the gRPC status code in the response header is set to resource-exhausted
* unavailable: Loadbalancer will retry if the gRPC status code in the response header is set to unavailable *)
  per_try_timeout :
    path_matcher__default_route_action__retry_policy__per_try_timeout
    list;
}
[@@deriving yojson_of]
(** Specifies the retry policy associated with this route. *)

type path_matcher__default_route_action__timeout = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations less than one second are represented
with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : string prop option; [@option]
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years *)
}
[@@deriving yojson_of]
(** Specifies the timeout for the selected route. Timeout is computed from the time the request has been
fully processed (i.e. end-of-stream) up until the response has been completely processed. Timeout includes all retries.

If not specified, will use the largest timeout among all backend services associated with the route. *)

type path_matcher__default_route_action__url_rewrite = {
  host_rewrite : string prop option; [@option]
      (** Prior to forwarding the request to the selected service, the request's host header is replaced
with contents of hostRewrite.

The value must be between 1 and 255 characters. *)
  path_prefix_rewrite : string prop option; [@option]
      (** Prior to forwarding the request to the selected backend service, the matching portion of the
request's path is replaced by pathPrefixRewrite.

The value must be between 1 and 1024 characters. *)
}
[@@deriving yojson_of]
(** The spec to modify the URL of the request, prior to forwarding the request to the matched service. *)

type path_matcher__default_route_action__weighted_backend_services__header_action__request_headers_to_add = {
  header_name : string prop option; [@option]
      (** The name of the header to add. *)
  header_value : string prop option; [@option]
      (** The value of the header to add. *)
  replace : bool prop option; [@option]
      (** If false, headerValue is appended to any values that already exist for the header.
If true, headerValue is set for the header, discarding any values that were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add to a matching request prior to forwarding the request to the backendService. *)

type path_matcher__default_route_action__weighted_backend_services__header_action__response_headers_to_add = {
  header_name : string prop option; [@option]
      (** The name of the header to add. *)
  header_value : string prop option; [@option]
      (** The value of the header to add. *)
  replace : bool prop option; [@option]
      (** If false, headerValue is appended to any values that already exist for the header.
If true, headerValue is set for the header, discarding any values that were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add the response prior to sending the response back to the client. *)

type path_matcher__default_route_action__weighted_backend_services__header_action = {
  request_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the request prior to
forwarding the request to the backendService. *)
  response_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the response prior to sending the
response back to the client. *)
  request_headers_to_add :
    path_matcher__default_route_action__weighted_backend_services__header_action__request_headers_to_add
    list;
  response_headers_to_add :
    path_matcher__default_route_action__weighted_backend_services__header_action__response_headers_to_add
    list;
}
[@@deriving yojson_of]
(** Specifies changes to request and response headers that need to take effect for
the selected backendService.

headerAction specified here take effect before headerAction in the enclosing
HttpRouteRule, PathMatcher and UrlMap. *)

type path_matcher__default_route_action__weighted_backend_services = {
  backend_service : string prop option; [@option]
      (** The full or partial URL to the default BackendService resource. Before forwarding the
request to backendService, the loadbalancer applies any relevant headerActions
specified as part of this backendServiceWeight. *)
  weight : float prop option; [@option]
      (** Specifies the fraction of traffic sent to backendService, computed as
weight / (sum of all weightedBackendService weights in routeAction) .

The selection of a backend service is determined only for new traffic. Once a user's request
has been directed to a backendService, subsequent requests will be sent to the same backendService
as determined by the BackendService's session affinity policy.

The value must be between 0 and 1000 *)
  header_action :
    path_matcher__default_route_action__weighted_backend_services__header_action
    list;
}
[@@deriving yojson_of]
(** A list of weighted backend services to send traffic to when a route match occurs.
The weights determine the fraction of traffic that flows to their corresponding backend service.
If all traffic needs to go to a single backend service, there must be one weightedBackendService
with weight set to a non 0 number.

Once a backendService is identified and before forwarding the request to the backend service,
advanced routing actions like Url rewrites and header transformations are applied depending on
additional settings specified in this HttpRouteAction. *)

type path_matcher__default_route_action = {
  cors_policy : path_matcher__default_route_action__cors_policy list;
  fault_injection_policy :
    path_matcher__default_route_action__fault_injection_policy list;
  request_mirror_policy :
    path_matcher__default_route_action__request_mirror_policy list;
  retry_policy :
    path_matcher__default_route_action__retry_policy list;
  timeout : path_matcher__default_route_action__timeout list;
  url_rewrite : path_matcher__default_route_action__url_rewrite list;
  weighted_backend_services :
    path_matcher__default_route_action__weighted_backend_services
    list;
}
[@@deriving yojson_of]
(** defaultRouteAction takes effect when none of the pathRules or routeRules match. The load balancer performs
advanced routing actions like URL rewrites, header transformations, etc. prior to forwarding the request
to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set.
Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices.

Only one of defaultRouteAction or defaultUrlRedirect must be set. *)

type path_matcher__default_url_redirect = {
  host_redirect : string prop option; [@option]
      (** The host that will be used in the redirect response instead of the one that was
supplied in the request. The value must be between 1 and 255 characters. *)
  https_redirect : bool prop option; [@option]
      (** If set to true, the URL scheme in the redirected request is set to https. If set to
false, the URL scheme of the redirected request will remain the same as that of the
request. This must only be set for UrlMaps used in TargetHttpProxys. Setting this
true for TargetHttpsProxy is not permitted. The default is set to false. *)
  path_redirect : string prop option; [@option]
      (** The path that will be used in the redirect response instead of the one that was
supplied in the request. pathRedirect cannot be supplied together with
prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the
original request will be used for the redirect. The value must be between 1 and 1024
characters. *)
  prefix_redirect : string prop option; [@option]
      (** The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch,
retaining the remaining portion of the URL before redirecting the request.
prefixRedirect cannot be supplied together with pathRedirect. Supply one alone or
neither. If neither is supplied, the path of the original request will be used for
the redirect. The value must be between 1 and 1024 characters. *)
  redirect_response_code : string prop option; [@option]
      (** The HTTP Status code to use for this RedirectAction. Supported values are:

* MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.

* FOUND, which corresponds to 302.

* SEE_OTHER which corresponds to 303.

* TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method
will be retained.

* PERMANENT_REDIRECT, which corresponds to 308. In this case,
the request method will be retained. Possible values: [FOUND, MOVED_PERMANENTLY_DEFAULT, PERMANENT_REDIRECT, SEE_OTHER, TEMPORARY_REDIRECT] *)
  strip_query : bool prop;
      (** If set to true, any accompanying query portion of the original URL is removed prior
to redirecting the request. If set to false, the query portion of the original URL is
retained.
 This field is required to ensure an empty block is not set. The normal default value is false. *)
}
[@@deriving yojson_of]
(** When none of the specified hostRules match, the request is redirected to a URL specified
by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
defaultRouteAction must not be set. *)

type path_matcher__header_action__request_headers_to_add = {
  header_name : string prop;  (** The name of the header. *)
  header_value : string prop;  (** The value of the header to add. *)
  replace : bool prop;
      (** If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add to a matching request prior to forwarding the request to the
backendService. *)

type path_matcher__header_action__response_headers_to_add = {
  header_name : string prop;  (** The name of the header. *)
  header_value : string prop;  (** The value of the header to add. *)
  replace : bool prop;
      (** If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add the response prior to sending the response back to the client. *)

type path_matcher__header_action = {
  request_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the request
prior to forwarding the request to the backendService. *)
  response_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the response
prior to sending the response back to the client. *)
  request_headers_to_add :
    path_matcher__header_action__request_headers_to_add list;
  response_headers_to_add :
    path_matcher__header_action__response_headers_to_add list;
}
[@@deriving yojson_of]
(** Specifies changes to request and response headers that need to take effect for
the selected backendService. HeaderAction specified here are applied after the
matching HttpRouteRule HeaderAction and before the HeaderAction in the UrlMap *)

type path_matcher__path_rule__route_action__cors_policy = {
  allow_credentials : bool prop option; [@option]
      (** In response to a preflight request, setting this to true indicates that the
actual request can include user credentials. This translates to the Access-
Control-Allow-Credentials header. Defaults to false. *)
  allow_headers : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Allow-Headers header. *)
  allow_methods : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Allow-Methods header. *)
  allow_origin_regexes : string prop list option; [@option]
      (** Specifies the regular expression patterns that match allowed origins. For
regular expression grammar please see en.cppreference.com/w/cpp/regex/ecmascript
An origin is allowed if it matches either allow_origins or allow_origin_regex. *)
  allow_origins : string prop list option; [@option]
      (** Specifies the list of origins that will be allowed to do CORS requests. An
origin is allowed if it matches either allow_origins or allow_origin_regex. *)
  disabled : bool prop;
      (** If true, specifies the CORS policy is disabled. *)
  expose_headers : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Expose-Headers header. *)
  max_age : float prop option; [@option]
      (** Specifies how long the results of a preflight request can be cached. This
translates to the content for the Access-Control-Max-Age header. *)
}
[@@deriving yojson_of]
(** The specification for allowing client side cross-origin requests. Please see W3C
Recommendation for Cross Origin Resource Sharing *)

type path_matcher__path_rule__route_action__fault_injection_policy__abort = {
  http_status : float prop;
      (** The HTTP status code used to abort the request. The value must be between 200
and 599 inclusive. *)
  percentage : float prop;
      (** The percentage of traffic (connections/operations/requests) which will be
aborted as part of fault injection. The value must be between 0.0 and 100.0
inclusive. *)
}
[@@deriving yojson_of]
(** The specification for how client requests are aborted as part of fault
injection. *)

type path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 'seconds' field and a positive
'nanos' field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : string prop;
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive. *)
}
[@@deriving yojson_of]
(** Specifies the value of the fixed delay interval. *)

type path_matcher__path_rule__route_action__fault_injection_policy__delay = {
  percentage : float prop;
      (** The percentage of traffic (connections/operations/requests) on which delay will
be introduced as part of fault injection. The value must be between 0.0 and
100.0 inclusive. *)
  fixed_delay :
    path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay
    list;
}
[@@deriving yojson_of]
(** The specification for how client requests are delayed as part of fault
injection, before being sent to a backend service. *)

type path_matcher__path_rule__route_action__fault_injection_policy = {
  abort :
    path_matcher__path_rule__route_action__fault_injection_policy__abort
    list;
  delay :
    path_matcher__path_rule__route_action__fault_injection_policy__delay
    list;
}
[@@deriving yojson_of]
(** The specification for fault injection introduced into traffic to test the
resiliency of clients to backend service failure. As part of fault injection,
when clients send requests to a backend service, delays can be introduced by
Loadbalancer on a percentage of requests before sending those request to the
backend service. Similarly requests from clients can be aborted by the
Loadbalancer for a percentage of requests. timeout and retry_policy will be
ignored by clients that are configured with a fault_injection_policy. *)

type path_matcher__path_rule__route_action__request_mirror_policy = {
  backend_service : string prop;
      (** The BackendService resource being mirrored to. *)
}
[@@deriving yojson_of]
(** Specifies the policy on how requests intended for the route's backends are
shadowed to a separate mirrored backend service. Loadbalancer does not wait for
responses from the shadow service. Prior to sending traffic to the shadow
service, the host / authority header is suffixed with -shadow. *)

type path_matcher__path_rule__route_action__retry_policy__per_try_timeout = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 'seconds' field and a positive
'nanos' field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : string prop;
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive. *)
}
[@@deriving yojson_of]
(** Specifies a non-zero timeout per retry attempt. *)

type path_matcher__path_rule__route_action__retry_policy = {
  num_retries : float prop option; [@option]
      (** Specifies the allowed number retries. This number must be > 0. *)
  retry_conditions : string prop list option; [@option]
      (** Specifies one or more conditions when this retry rule applies. Valid values are:

* 5xx: Loadbalancer will attempt a retry if the backend service responds with
any 5xx response code, or if the backend service does not respond at all,
example: disconnects, reset, read timeout, connection failure, and refused
streams.
* gateway-error: Similar to 5xx, but only applies to response codes
502, 503 or 504.
* connect-failure: Loadbalancer will retry on failures
connecting to backend services, for example due to connection timeouts.
* retriable-4xx: Loadbalancer will retry for retriable 4xx response codes.
Currently the only retriable error supported is 409.
* refused-stream: Loadbalancer will retry if the backend service resets the stream with a
REFUSED_STREAM error code. This reset type indicates that it is safe to retry.
* cancelled: Loadbalancer will retry if the gRPC status code in the response
header is set to cancelled
* deadline-exceeded: Loadbalancer will retry if the
gRPC status code in the response header is set to deadline-exceeded
* resource-exhausted: Loadbalancer will retry if the gRPC status code in the response
header is set to resource-exhausted
* unavailable: Loadbalancer will retry if
the gRPC status code in the response header is set to unavailable *)
  per_try_timeout :
    path_matcher__path_rule__route_action__retry_policy__per_try_timeout
    list;
}
[@@deriving yojson_of]
(** Specifies the retry policy associated with this route. *)

type path_matcher__path_rule__route_action__timeout = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 'seconds' field and a positive
'nanos' field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : string prop;
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive. *)
}
[@@deriving yojson_of]
(** Specifies the timeout for the selected route. Timeout is computed from the time
the request is has been fully processed (i.e. end-of-stream) up until the
response has been completely processed. Timeout includes all retries. If not
specified, the default value is 15 seconds. *)

type path_matcher__path_rule__route_action__url_rewrite = {
  host_rewrite : string prop option; [@option]
      (** Prior to forwarding the request to the selected service, the request's host
header is replaced with contents of hostRewrite. The value must be between 1 and
255 characters. *)
  path_prefix_rewrite : string prop option; [@option]
      (** Prior to forwarding the request to the selected backend service, the matching
portion of the request's path is replaced by pathPrefixRewrite. The value must
be between 1 and 1024 characters. *)
}
[@@deriving yojson_of]
(** The spec to modify the URL of the request, prior to forwarding the request to
the matched service *)

type path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add = {
  header_name : string prop;  (** The name of the header. *)
  header_value : string prop;  (** The value of the header to add. *)
  replace : bool prop;
      (** If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add to a matching request prior to forwarding the request to the
backendService. *)

type path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add = {
  header_name : string prop;  (** The name of the header. *)
  header_value : string prop;  (** The value of the header to add. *)
  replace : bool prop;
      (** If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add the response prior to sending the response back to the client. *)

type path_matcher__path_rule__route_action__weighted_backend_services__header_action = {
  request_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the request
prior to forwarding the request to the backendService. *)
  response_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the response
prior to sending the response back to the client. *)
  request_headers_to_add :
    path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add
    list;
  response_headers_to_add :
    path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add
    list;
}
[@@deriving yojson_of]
(** Specifies changes to request and response headers that need to take effect for
the selected backendService. headerAction specified here take effect before
headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap. *)

type path_matcher__path_rule__route_action__weighted_backend_services = {
  backend_service : string prop;
      (** The default BackendService resource. Before
forwarding the request to backendService, the loadbalancer applies any relevant
headerActions specified as part of this backendServiceWeight. *)
  weight : float prop;
      (** Specifies the fraction of traffic sent to backendService, computed as weight /
(sum of all weightedBackendService weights in routeAction) . The selection of a
backend service is determined only for new traffic. Once a user's request has
been directed to a backendService, subsequent requests will be sent to the same
backendService as determined by the BackendService's session affinity policy.
The value must be between 0 and 1000 *)
  header_action :
    path_matcher__path_rule__route_action__weighted_backend_services__header_action
    list;
}
[@@deriving yojson_of]
(** A list of weighted backend services to send traffic to when a route match
occurs. The weights determine the fraction of traffic that flows to their
corresponding backend service. If all traffic needs to go to a single backend
service, there must be one  weightedBackendService with weight set to a non 0
number. Once a backendService is identified and before forwarding the request to
the backend service, advanced routing actions like Url rewrites and header
transformations are applied depending on additional settings specified in this
HttpRouteAction. *)

type path_matcher__path_rule__route_action = {
  cors_policy :
    path_matcher__path_rule__route_action__cors_policy list;
  fault_injection_policy :
    path_matcher__path_rule__route_action__fault_injection_policy
    list;
  request_mirror_policy :
    path_matcher__path_rule__route_action__request_mirror_policy list;
  retry_policy :
    path_matcher__path_rule__route_action__retry_policy list;
  timeout : path_matcher__path_rule__route_action__timeout list;
  url_rewrite :
    path_matcher__path_rule__route_action__url_rewrite list;
  weighted_backend_services :
    path_matcher__path_rule__route_action__weighted_backend_services
    list;
}
[@@deriving yojson_of]
(** In response to a matching path, the load balancer performs advanced routing
actions like URL rewrites, header transformations, etc. prior to forwarding the
request to the selected backend. If routeAction specifies any
weightedBackendServices, service must not be set. Conversely if service is set,
routeAction cannot contain any  weightedBackendServices. Only one of routeAction
or urlRedirect must be set. *)

type path_matcher__path_rule__url_redirect = {
  host_redirect : string prop option; [@option]
      (** The host that will be used in the redirect response instead of the one
that was supplied in the request. The value must be between 1 and 255
characters. *)
  https_redirect : bool prop option; [@option]
      (** If set to true, the URL scheme in the redirected request is set to https.
If set to false, the URL scheme of the redirected request will remain the
same as that of the request. This must only be set for UrlMaps used in
TargetHttpProxys. Setting this true for TargetHttpsProxy is not
permitted. The default is set to false. *)
  path_redirect : string prop option; [@option]
      (** The path that will be used in the redirect response instead of the one
that was supplied in the request. pathRedirect cannot be supplied
together with prefixRedirect. Supply one alone or neither. If neither is
supplied, the path of the original request will be used for the redirect.
The value must be between 1 and 1024 characters. *)
  prefix_redirect : string prop option; [@option]
      (** The prefix that replaces the prefixMatch specified in the
HttpRouteRuleMatch, retaining the remaining portion of the URL before
redirecting the request. prefixRedirect cannot be supplied together with
pathRedirect. Supply one alone or neither. If neither is supplied, the
path of the original request will be used for the redirect. The value
must be between 1 and 1024 characters. *)
  redirect_response_code : string prop option; [@option]
      (** The HTTP Status code to use for this RedirectAction. Supported values are:

* MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.

* FOUND, which corresponds to 302.

* SEE_OTHER which corresponds to 303.

* TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method
will be retained.

* PERMANENT_REDIRECT, which corresponds to 308. In this case,
the request method will be retained. Possible values: [FOUND, MOVED_PERMANENTLY_DEFAULT, PERMANENT_REDIRECT, SEE_OTHER, TEMPORARY_REDIRECT] *)
  strip_query : bool prop;
      (** If set to true, any accompanying query portion of the original URL is
removed prior to redirecting the request. If set to false, the query
portion of the original URL is retained.
 This field is required to ensure an empty block is not set. The normal default value is false. *)
}
[@@deriving yojson_of]
(** When a path pattern is matched, the request is redirected to a URL specified
by urlRedirect. If urlRedirect is specified, service or routeAction must not
be set. *)

type path_matcher__path_rule = {
  paths : string prop list;
      (** The list of path patterns to match. Each must start with / and the only place a
\* is allowed is at the end following a /. The string fed to the path matcher
does not include any text after the first ? or #, and those chars are not
allowed here. *)
  service : string prop option; [@option]
      (** The backend service or backend bucket to use if any of the given paths match. *)
  route_action : path_matcher__path_rule__route_action list;
  url_redirect : path_matcher__path_rule__url_redirect list;
}
[@@deriving yojson_of]
(** The list of path rules. Use this list instead of routeRules when routing based
on simple path matching is all that's required. The order by which path rules
are specified does not matter. Matches are always done on the longest-path-first
basis. For example: a pathRule with a path /a/b/c/* will match before /a/b/*
irrespective of the order in which those paths appear in this list. Within a
given pathMatcher, only one of pathRules or routeRules must be set. *)

type path_matcher__route_rules__header_action__request_headers_to_add = {
  header_name : string prop;  (** The name of the header. *)
  header_value : string prop;  (** The value of the header to add. *)
  replace : bool prop;
      (** If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add to a matching request prior to forwarding the request to the
backendService. *)

type path_matcher__route_rules__header_action__response_headers_to_add = {
  header_name : string prop;  (** The name of the header. *)
  header_value : string prop;  (** The value of the header to add. *)
  replace : bool prop;
      (** If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add the response prior to sending the response back to the client. *)

type path_matcher__route_rules__header_action = {
  request_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the request
prior to forwarding the request to the backendService. *)
  response_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the response
prior to sending the response back to the client. *)
  request_headers_to_add :
    path_matcher__route_rules__header_action__request_headers_to_add
    list;
  response_headers_to_add :
    path_matcher__route_rules__header_action__response_headers_to_add
    list;
}
[@@deriving yojson_of]
(** Specifies changes to request and response headers that need to take effect for
the selected backendService. The headerAction specified here are applied before
the matching pathMatchers[].headerAction and after pathMatchers[].routeRules[].r
outeAction.weightedBackendService.backendServiceWeightAction[].headerAction *)

type path_matcher__route_rules__match_rules__header_matches__range_match = {
  range_end : float prop;  (** The end of the range (exclusive). *)
  range_start : float prop;
      (** The start of the range (inclusive). *)
}
[@@deriving yojson_of]
(** The header value must be an integer and its value must be in the range specified
in rangeMatch. If the header does not contain an integer, number or is empty,
the match fails. For example for a range [-5, 0]   - -3 will match.  - 0 will
not match.  - 0.25 will not match.  - -3someString will not match.   Only one of
exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch
must be set. *)

type path_matcher__route_rules__match_rules__header_matches = {
  exact_match : string prop option; [@option]
      (** The value should exactly match contents of exactMatch. Only one of exactMatch,
prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. *)
  header_name : string prop;
      (** The name of the HTTP header to match. For matching against the HTTP request's
authority, use a headerMatch with the header name :authority. For matching a
request's method, use the headerName :method. *)
  invert_match : bool prop option; [@option]
      (** If set to false, the headerMatch is considered a match if the match criteria
above are met. If set to true, the headerMatch is considered a match if the
match criteria above are NOT met. Defaults to false. *)
  prefix_match : string prop option; [@option]
      (** The value of the header must start with the contents of prefixMatch. Only one of
exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch
must be set. *)
  present_match : bool prop option; [@option]
      (** A header with the contents of headerName must exist. The match takes place
whether or not the request's header has a value or not. Only one of exactMatch,
prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. *)
  regex_match : string prop option; [@option]
      (** The value of the header must match the regular expression specified in
regexMatch. For regular expression grammar, please see:
en.cppreference.com/w/cpp/regex/ecmascript  For matching against a port
specified in the HTTP request, use a headerMatch with headerName set to PORT and
a regular expression that satisfies the RFC2616 Host header's port specifier.
Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or
rangeMatch must be set. *)
  suffix_match : string prop option; [@option]
      (** The value of the header must end with the contents of suffixMatch. Only one of
exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch
must be set. *)
  range_match :
    path_matcher__route_rules__match_rules__header_matches__range_match
    list;
}
[@@deriving yojson_of]
(** Specifies a list of header match criteria, all of which must match corresponding
headers in the request. *)

type path_matcher__route_rules__match_rules__metadata_filters__filter_labels = {
  name : string prop;
      (** Name of metadata label. The name can have a maximum length of 1024 characters
and must be at least 1 character long. *)
  value : string prop;
      (** The value of the label must match the specified value. value can have a maximum
length of 1024 characters. *)
}
[@@deriving yojson_of]
(** The list of label value pairs that must match labels in the provided metadata
based on filterMatchCriteria  This list must not be empty and can have at the
most 64 entries. *)

type path_matcher__route_rules__match_rules__metadata_filters = {
  filter_match_criteria : string prop;
      (** Specifies how individual filterLabel matches within the list of filterLabels
contribute towards the overall metadataFilter match. Supported values are:
  - MATCH_ANY: At least one of the filterLabels must have a matching label in the
provided metadata.
  - MATCH_ALL: All filterLabels must have matching labels in
the provided metadata. Possible values: [MATCH_ALL, MATCH_ANY] *)
  filter_labels :
    path_matcher__route_rules__match_rules__metadata_filters__filter_labels
    list;
}
[@@deriving yojson_of]
(** Opaque filter criteria used by Loadbalancer to restrict routing configuration to
a limited set xDS compliant clients. In their xDS requests to Loadbalancer, xDS
clients present node metadata. If a match takes place, the relevant routing
configuration is made available to those proxies. For each metadataFilter in
this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the
filterLabels must match the corresponding label provided in the metadata. If its
filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match
with corresponding labels in the provided metadata. metadataFilters specified
here can be overrides those specified in ForwardingRule that refers to this
UrlMap. metadataFilters only applies to Loadbalancers that have their
loadBalancingScheme set to INTERNAL_SELF_MANAGED. *)

type path_matcher__route_rules__match_rules__query_parameter_matches = {
  exact_match : string prop option; [@option]
      (** The queryParameterMatch matches if the value of the parameter exactly matches
the contents of exactMatch. Only one of presentMatch, exactMatch and regexMatch
must be set. *)
  name : string prop;
      (** The name of the query parameter to match. The query parameter must exist in the
request, in the absence of which the request match fails. *)
  present_match : bool prop option; [@option]
      (** Specifies that the queryParameterMatch matches if the request contains the query
parameter, irrespective of whether the parameter has a value or not. Only one of
presentMatch, exactMatch and regexMatch must be set. *)
  regex_match : string prop option; [@option]
      (** The queryParameterMatch matches if the value of the parameter matches the
regular expression specified by regexMatch. For the regular expression grammar,
please see en.cppreference.com/w/cpp/regex/ecmascript  Only one of presentMatch,
exactMatch and regexMatch must be set. *)
}
[@@deriving yojson_of]
(** Specifies a list of query parameter match criteria, all of which must match
corresponding query parameters in the request. *)

type path_matcher__route_rules__match_rules = {
  full_path_match : string prop option; [@option]
      (** For satisfying the matchRule condition, the path of the request must exactly
match the value specified in fullPathMatch after removing any query parameters
and anchor that may be part of the original URL. FullPathMatch must be between 1
and 1024 characters. Only one of prefixMatch, fullPathMatch or regexMatch must
be specified. *)
  ignore_case : bool prop option; [@option]
      (** Specifies that prefixMatch and fullPathMatch matches are case sensitive.
Defaults to false. *)
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
      (** For satisfying the matchRule condition, the request's path must begin with the
specified prefixMatch. prefixMatch must begin with a /. The value must be
between 1 and 1024 characters. Only one of prefixMatch, fullPathMatch or
regexMatch must be specified. *)
  regex_match : string prop option; [@option]
      (** For satisfying the matchRule condition, the path of the request must satisfy the
regular expression specified in regexMatch after removing any query parameters
and anchor supplied with the original URL. For regular expression grammar please
see en.cppreference.com/w/cpp/regex/ecmascript  Only one of prefixMatch,
fullPathMatch or regexMatch must be specified. *)
  header_matches :
    path_matcher__route_rules__match_rules__header_matches list;
  metadata_filters :
    path_matcher__route_rules__match_rules__metadata_filters list;
  query_parameter_matches :
    path_matcher__route_rules__match_rules__query_parameter_matches
    list;
}
[@@deriving yojson_of]
(** The rules for determining a match. *)

type path_matcher__route_rules__route_action__cors_policy = {
  allow_credentials : bool prop option; [@option]
      (** In response to a preflight request, setting this to true indicates that the
actual request can include user credentials. This translates to the Access-
Control-Allow-Credentials header. Defaults to false. *)
  allow_headers : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Allow-Headers header. *)
  allow_methods : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Allow-Methods header. *)
  allow_origin_regexes : string prop list option; [@option]
      (** Specifies the regular expression patterns that match allowed origins. For
regular expression grammar please see en.cppreference.com/w/cpp/regex/ecmascript
An origin is allowed if it matches either allow_origins or allow_origin_regex. *)
  allow_origins : string prop list option; [@option]
      (** Specifies the list of origins that will be allowed to do CORS requests. An
origin is allowed if it matches either allow_origins or allow_origin_regex. *)
  disabled : bool prop option; [@option]
      (** If true, specifies the CORS policy is disabled.
which indicates that the CORS policy is in effect. Defaults to false. *)
  expose_headers : string prop list option; [@option]
      (** Specifies the content for the Access-Control-Expose-Headers header. *)
  max_age : float prop option; [@option]
      (** Specifies how long the results of a preflight request can be cached. This
translates to the content for the Access-Control-Max-Age header. *)
}
[@@deriving yojson_of]
(** The specification for allowing client side cross-origin requests. Please see W3C
Recommendation for Cross Origin Resource Sharing *)

type path_matcher__route_rules__route_action__fault_injection_policy__abort = {
  http_status : float prop option; [@option]
      (** The HTTP status code used to abort the request. The value must be between 200
and 599 inclusive. *)
  percentage : float prop option; [@option]
      (** The percentage of traffic (connections/operations/requests) which will be
aborted as part of fault injection. The value must be between 0.0 and 100.0
inclusive. *)
}
[@@deriving yojson_of]
(** The specification for how client requests are aborted as part of fault
injection. *)

type path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 'seconds' field and a positive
'nanos' field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : string prop;
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive. *)
}
[@@deriving yojson_of]
(** Specifies the value of the fixed delay interval. *)

type path_matcher__route_rules__route_action__fault_injection_policy__delay = {
  percentage : float prop option; [@option]
      (** The percentage of traffic (connections/operations/requests) on which delay will
be introduced as part of fault injection. The value must be between 0.0 and
100.0 inclusive. *)
  fixed_delay :
    path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay
    list;
}
[@@deriving yojson_of]
(** The specification for how client requests are delayed as part of fault
injection, before being sent to a backend service. *)

type path_matcher__route_rules__route_action__fault_injection_policy = {
  abort :
    path_matcher__route_rules__route_action__fault_injection_policy__abort
    list;
  delay :
    path_matcher__route_rules__route_action__fault_injection_policy__delay
    list;
}
[@@deriving yojson_of]
(** The specification for fault injection introduced into traffic to test the
resiliency of clients to backend service failure. As part of fault injection,
when clients send requests to a backend service, delays can be introduced by
Loadbalancer on a percentage of requests before sending those request to the
backend service. Similarly requests from clients can be aborted by the
Loadbalancer for a percentage of requests. timeout and retry_policy will be
ignored by clients that are configured with a fault_injection_policy. *)

type path_matcher__route_rules__route_action__request_mirror_policy = {
  backend_service : string prop;
      (** The BackendService resource being mirrored to. *)
}
[@@deriving yojson_of]
(** Specifies the policy on how requests intended for the route's backends are
shadowed to a separate mirrored backend service. Loadbalancer does not wait for
responses from the shadow service. Prior to sending traffic to the shadow
service, the host / authority header is suffixed with -shadow. *)

type path_matcher__route_rules__route_action__retry_policy__per_try_timeout = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 'seconds' field and a positive
'nanos' field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : string prop;
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive. *)
}
[@@deriving yojson_of]
(** Specifies a non-zero timeout per retry attempt.
If not specified, will use the timeout set in HttpRouteAction. If timeout in HttpRouteAction
is not set, will use the largest timeout among all backend services associated with the route. *)

type path_matcher__route_rules__route_action__retry_policy = {
  num_retries : float prop;
      (** Specifies the allowed number retries. This number must be > 0. *)
  retry_conditions : string prop list option; [@option]
      (** Specfies one or more conditions when this retry rule applies. Valid values are:

* 5xx: Loadbalancer will attempt a retry if the backend service responds with
  any 5xx response code, or if the backend service does not respond at all,
  example: disconnects, reset, read timeout, connection failure, and refused
  streams.
* gateway-error: Similar to 5xx, but only applies to response codes
  502, 503 or 504.
* connect-failure: Loadbalancer will retry on failures
  connecting to backend services, for example due to connection timeouts.
* retriable-4xx: Loadbalancer will retry for retriable 4xx response codes.
  Currently the only retriable error supported is 409.
* refused-stream: Loadbalancer will retry if the backend service resets the stream with a
  REFUSED_STREAM error code. This reset type indicates that it is safe to retry.
* cancelled: Loadbalancer will retry if the gRPC status code in the response
  header is set to cancelled
* deadline-exceeded: Loadbalancer will retry if the
  gRPC status code in the response header is set to deadline-exceeded
* resource-exhausted: Loadbalancer will retry if the gRPC status code in the response
  header is set to resource-exhausted
* unavailable: Loadbalancer will retry if the gRPC status code in
  the response header is set to unavailable *)
  per_try_timeout :
    path_matcher__route_rules__route_action__retry_policy__per_try_timeout
    list;
}
[@@deriving yojson_of]
(** Specifies the retry policy associated with this route. *)

type path_matcher__route_rules__route_action__timeout = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 'seconds' field and a positive
'nanos' field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : string prop;
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive. *)
}
[@@deriving yojson_of]
(** Specifies the timeout for the selected route. Timeout is computed from the time
the request is has been fully processed (i.e. end-of-stream) up until the
response has been completely processed. Timeout includes all retries. If not
specified, the default value is 15 seconds. *)

type path_matcher__route_rules__route_action__url_rewrite = {
  host_rewrite : string prop option; [@option]
      (** Prior to forwarding the request to the selected service, the request's host
header is replaced with contents of hostRewrite. The value must be between 1 and
255 characters. *)
  path_prefix_rewrite : string prop option; [@option]
      (** Prior to forwarding the request to the selected backend service, the matching
portion of the request's path is replaced by pathPrefixRewrite. The value must
be between 1 and 1024 characters. *)
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
(** The spec to modify the URL of the request, prior to forwarding the request to
the matched service *)

type path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add = {
  header_name : string prop;  (** The name of the header. *)
  header_value : string prop;  (** The value of the header to add. *)
  replace : bool prop;
      (** If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add to a matching request prior to forwarding the request to the
backendService. *)

type path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add = {
  header_name : string prop;  (** The name of the header. *)
  header_value : string prop;  (** The value of the header to add. *)
  replace : bool prop;
      (** If false, headerValue is appended to any values that already exist for the
header. If true, headerValue is set for the header, discarding any values that
were set for that header. *)
}
[@@deriving yojson_of]
(** Headers to add the response prior to sending the response back to the client. *)

type path_matcher__route_rules__route_action__weighted_backend_services__header_action = {
  request_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the request
prior to forwarding the request to the backendService. *)
  response_headers_to_remove : string prop list option; [@option]
      (** A list of header names for headers that need to be removed from the response
prior to sending the response back to the client. *)
  request_headers_to_add :
    path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add
    list;
  response_headers_to_add :
    path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add
    list;
}
[@@deriving yojson_of]
(** Specifies changes to request and response headers that need to take effect for
the selected backendService. headerAction specified here take effect before
headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap. *)

type path_matcher__route_rules__route_action__weighted_backend_services = {
  backend_service : string prop;
      (** The default BackendService resource. Before
forwarding the request to backendService, the loadbalancer applies any relevant
headerActions specified as part of this backendServiceWeight. *)
  weight : float prop;
      (** Specifies the fraction of traffic sent to backendService, computed as weight /
(sum of all weightedBackendService weights in routeAction) . The selection of a
backend service is determined only for new traffic. Once a user's request has
been directed to a backendService, subsequent requests will be sent to the same
backendService as determined by the BackendService's session affinity policy.
The value must be between 0 and 1000 *)
  header_action :
    path_matcher__route_rules__route_action__weighted_backend_services__header_action
    list;
}
[@@deriving yojson_of]
(** A list of weighted backend services to send traffic to when a route match
occurs. The weights determine the fraction of traffic that flows to their
corresponding backend service. If all traffic needs to go to a single backend
service, there must be one  weightedBackendService with weight set to a non 0
number. Once a backendService is identified and before forwarding the request to
the backend service, advanced routing actions like Url rewrites and header
transformations are applied depending on additional settings specified in this
HttpRouteAction. *)

type path_matcher__route_rules__route_action = {
  cors_policy :
    path_matcher__route_rules__route_action__cors_policy list;
  fault_injection_policy :
    path_matcher__route_rules__route_action__fault_injection_policy
    list;
  request_mirror_policy :
    path_matcher__route_rules__route_action__request_mirror_policy
    list;
  retry_policy :
    path_matcher__route_rules__route_action__retry_policy list;
  timeout : path_matcher__route_rules__route_action__timeout list;
  url_rewrite :
    path_matcher__route_rules__route_action__url_rewrite list;
  weighted_backend_services :
    path_matcher__route_rules__route_action__weighted_backend_services
    list;
}
[@@deriving yojson_of]
(** In response to a matching matchRule, the load balancer performs advanced routing
actions like URL rewrites, header transformations, etc. prior to forwarding the
request to the selected backend. If  routeAction specifies any
weightedBackendServices, service must not be set. Conversely if service is set,
routeAction cannot contain any  weightedBackendServices. Only one of routeAction
or urlRedirect must be set. *)

type path_matcher__route_rules__url_redirect = {
  host_redirect : string prop option; [@option]
      (** The host that will be used in the redirect response instead of the one that was
supplied in the request. The value must be between 1 and 255 characters. *)
  https_redirect : bool prop option; [@option]
      (** If set to true, the URL scheme in the redirected request is set to https. If set
to false, the URL scheme of the redirected request will remain the same as that
of the request. This must only be set for UrlMaps used in TargetHttpProxys.
Setting this true for TargetHttpsProxy is not permitted. Defaults to false. *)
  path_redirect : string prop option; [@option]
      (** The path that will be used in the redirect response instead of the one that was
supplied in the request. Only one of pathRedirect or prefixRedirect must be
specified. The value must be between 1 and 1024 characters. *)
  prefix_redirect : string prop option; [@option]
      (** The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch,
retaining the remaining portion of the URL before redirecting the request. *)
  redirect_response_code : string prop option; [@option]
      (** The HTTP Status code to use for this RedirectAction. Supported values are:

* MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.

* FOUND, which corresponds to 302.

* SEE_OTHER which corresponds to 303.

* TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method will be retained.

* PERMANENT_REDIRECT, which corresponds to 308. In this case, the request method will be retained. Possible values: [FOUND, MOVED_PERMANENTLY_DEFAULT, PERMANENT_REDIRECT, SEE_OTHER, TEMPORARY_REDIRECT] *)
  strip_query : bool prop option; [@option]
      (** If set to true, any accompanying query portion of the original URL is removed
prior to redirecting the request. If set to false, the query portion of the
original URL is retained. Defaults to false. *)
}
[@@deriving yojson_of]
(** When this rule is matched, the request is redirected to a URL specified by
urlRedirect. If urlRedirect is specified, service or routeAction must not be
set. *)

type path_matcher__route_rules = {
  priority : float prop;
      (** For routeRules within a given pathMatcher, priority determines the order
in which load balancer will interpret routeRules. RouteRules are evaluated
in order of priority, from the lowest to highest number. The priority of
a rule decreases as its number increases (1, 2, 3, N+1). The first rule
that matches the request is applied.

You cannot configure two or more routeRules with the same priority.
Priority for each rule must be set to a number between 0 and
2147483647 inclusive.

Priority numbers can have gaps, which enable you to add or remove rules
in the future without affecting the rest of the rules. For example,
1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers to which
you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the
future without any impact on existing rules. *)
  service : string prop option; [@option]
      (** The backend service resource to which traffic is
directed if this rule is matched. If routeAction is additionally specified,
advanced routing actions like URL Rewrites, etc. take effect prior to sending
the request to the backend. However, if service is specified, routeAction cannot
contain any weightedBackendService s. Conversely, if routeAction specifies any
weightedBackendServices, service must not be specified. Only one of urlRedirect,
service or routeAction.weightedBackendService must be set. *)
  header_action : path_matcher__route_rules__header_action list;
  match_rules : path_matcher__route_rules__match_rules list;
  route_action : path_matcher__route_rules__route_action list;
  url_redirect : path_matcher__route_rules__url_redirect list;
}
[@@deriving yojson_of]
(** The list of ordered HTTP route rules. Use this list instead of pathRules when
advanced route matching and routing actions are desired. The order of specifying
routeRules matters: the first rule that matches will cause its specified routing
action to take effect. Within a given pathMatcher, only one of pathRules or
routeRules must be set. routeRules are not supported in UrlMaps intended for
External load balancers. *)

type path_matcher = {
  default_service : string prop option; [@option]
      (** The backend service or backend bucket to use when none of the given paths match. *)
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when you create
the resource. *)
  name : string prop;
      (** The name to which this PathMatcher is referred by the HostRule. *)
  default_route_action : path_matcher__default_route_action list;
  default_url_redirect : path_matcher__default_url_redirect list;
  header_action : path_matcher__header_action list;
  path_rule : path_matcher__path_rule list;
  route_rules : path_matcher__route_rules list;
}
[@@deriving yojson_of]
(** The list of named PathMatchers to use against the URL. *)

type test = {
  description : string prop option; [@option]
      (** Description of this test case. *)
  host : string prop;  (** Host portion of the URL. *)
  path : string prop;  (** Path portion of the URL. *)
  service : string prop;
      (** The backend service or backend bucket link that should be matched by this test. *)
}
[@@deriving yojson_of]
(** The list of expected URL mapping tests. Request to update this UrlMap will
succeed only if all of the test cases pass. You can specify a maximum of 100
tests per UrlMap. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_url_map = {
  default_service : string prop option; [@option]
      (** The backend service or backend bucket to use when none of the given rules match. *)
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when you create
the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is created. The
name must be 1-63 characters long, and comply with RFC1035. Specifically, the
name must be 1-63 characters long and match the regular expression
'[a-z]([-a-z0-9]*[a-z0-9])?' which means the first character must be a lowercase
letter, and all following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  default_route_action : default_route_action list;
  default_url_redirect : default_url_redirect list;
  header_action : header_action list;
  host_rule : host_rule list;
  path_matcher : path_matcher list;
  test : test list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_url_map *)

let default_route_action__cors_policy ?allow_credentials
    ?allow_headers ?allow_methods ?allow_origin_regexes
    ?allow_origins ?disabled ?expose_headers ?max_age () :
    default_route_action__cors_policy =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    allow_origin_regexes;
    allow_origins;
    disabled;
    expose_headers;
    max_age;
  }

let default_route_action__fault_injection_policy__abort ?http_status
    ?percentage () :
    default_route_action__fault_injection_policy__abort =
  { http_status; percentage }

let default_route_action__fault_injection_policy__delay__fixed_delay
    ?nanos ?seconds () :
    default_route_action__fault_injection_policy__delay__fixed_delay
    =
  { nanos; seconds }

let default_route_action__fault_injection_policy__delay ?percentage
    ~fixed_delay () :
    default_route_action__fault_injection_policy__delay =
  { percentage; fixed_delay }

let default_route_action__fault_injection_policy ~abort ~delay () :
    default_route_action__fault_injection_policy =
  { abort; delay }

let default_route_action__request_mirror_policy ~backend_service () :
    default_route_action__request_mirror_policy =
  { backend_service }

let default_route_action__retry_policy__per_try_timeout ?nanos
    ?seconds () : default_route_action__retry_policy__per_try_timeout
    =
  { nanos; seconds }

let default_route_action__retry_policy ?num_retries ?retry_conditions
    ~per_try_timeout () : default_route_action__retry_policy =
  { num_retries; retry_conditions; per_try_timeout }

let default_route_action__timeout ?nanos ?seconds () :
    default_route_action__timeout =
  { nanos; seconds }

let default_route_action__url_rewrite ?host_rewrite
    ?path_prefix_rewrite () : default_route_action__url_rewrite =
  { host_rewrite; path_prefix_rewrite }

let default_route_action__weighted_backend_services__header_action__request_headers_to_add
    ?header_name ?header_value ?replace () :
    default_route_action__weighted_backend_services__header_action__request_headers_to_add
    =
  { header_name; header_value; replace }

let default_route_action__weighted_backend_services__header_action__response_headers_to_add
    ?header_name ?header_value ?replace () :
    default_route_action__weighted_backend_services__header_action__response_headers_to_add
    =
  { header_name; header_value; replace }

let default_route_action__weighted_backend_services__header_action
    ?request_headers_to_remove ?response_headers_to_remove
    ~request_headers_to_add ~response_headers_to_add () :
    default_route_action__weighted_backend_services__header_action =
  {
    request_headers_to_remove;
    response_headers_to_remove;
    request_headers_to_add;
    response_headers_to_add;
  }

let default_route_action__weighted_backend_services ?backend_service
    ?weight ~header_action () :
    default_route_action__weighted_backend_services =
  { backend_service; weight; header_action }

let default_route_action ~cors_policy ~fault_injection_policy
    ~request_mirror_policy ~retry_policy ~timeout ~url_rewrite
    ~weighted_backend_services () : default_route_action =
  {
    cors_policy;
    fault_injection_policy;
    request_mirror_policy;
    retry_policy;
    timeout;
    url_rewrite;
    weighted_backend_services;
  }

let default_url_redirect ?host_redirect ?https_redirect
    ?path_redirect ?prefix_redirect ?redirect_response_code
    ~strip_query () : default_url_redirect =
  {
    host_redirect;
    https_redirect;
    path_redirect;
    prefix_redirect;
    redirect_response_code;
    strip_query;
  }

let header_action__request_headers_to_add ~header_name ~header_value
    ~replace () : header_action__request_headers_to_add =
  { header_name; header_value; replace }

let header_action__response_headers_to_add ~header_name ~header_value
    ~replace () : header_action__response_headers_to_add =
  { header_name; header_value; replace }

let header_action ?request_headers_to_remove
    ?response_headers_to_remove ~request_headers_to_add
    ~response_headers_to_add () : header_action =
  {
    request_headers_to_remove;
    response_headers_to_remove;
    request_headers_to_add;
    response_headers_to_add;
  }

let host_rule ?description ~hosts ~path_matcher () : host_rule =
  { description; hosts; path_matcher }

let path_matcher__default_route_action__cors_policy
    ?allow_credentials ?allow_headers ?allow_methods
    ?allow_origin_regexes ?allow_origins ?disabled ?expose_headers
    ?max_age () : path_matcher__default_route_action__cors_policy =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    allow_origin_regexes;
    allow_origins;
    disabled;
    expose_headers;
    max_age;
  }

let path_matcher__default_route_action__fault_injection_policy__abort
    ?http_status ?percentage () :
    path_matcher__default_route_action__fault_injection_policy__abort
    =
  { http_status; percentage }

let path_matcher__default_route_action__fault_injection_policy__delay__fixed_delay
    ?nanos ?seconds () :
    path_matcher__default_route_action__fault_injection_policy__delay__fixed_delay
    =
  { nanos; seconds }

let path_matcher__default_route_action__fault_injection_policy__delay
    ?percentage ~fixed_delay () :
    path_matcher__default_route_action__fault_injection_policy__delay
    =
  { percentage; fixed_delay }

let path_matcher__default_route_action__fault_injection_policy ~abort
    ~delay () :
    path_matcher__default_route_action__fault_injection_policy =
  { abort; delay }

let path_matcher__default_route_action__request_mirror_policy
    ~backend_service () :
    path_matcher__default_route_action__request_mirror_policy =
  { backend_service }

let path_matcher__default_route_action__retry_policy__per_try_timeout
    ?nanos ?seconds () :
    path_matcher__default_route_action__retry_policy__per_try_timeout
    =
  { nanos; seconds }

let path_matcher__default_route_action__retry_policy ?num_retries
    ?retry_conditions ~per_try_timeout () :
    path_matcher__default_route_action__retry_policy =
  { num_retries; retry_conditions; per_try_timeout }

let path_matcher__default_route_action__timeout ?nanos ?seconds () :
    path_matcher__default_route_action__timeout =
  { nanos; seconds }

let path_matcher__default_route_action__url_rewrite ?host_rewrite
    ?path_prefix_rewrite () :
    path_matcher__default_route_action__url_rewrite =
  { host_rewrite; path_prefix_rewrite }

let path_matcher__default_route_action__weighted_backend_services__header_action__request_headers_to_add
    ?header_name ?header_value ?replace () :
    path_matcher__default_route_action__weighted_backend_services__header_action__request_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__default_route_action__weighted_backend_services__header_action__response_headers_to_add
    ?header_name ?header_value ?replace () :
    path_matcher__default_route_action__weighted_backend_services__header_action__response_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__default_route_action__weighted_backend_services__header_action
    ?request_headers_to_remove ?response_headers_to_remove
    ~request_headers_to_add ~response_headers_to_add () :
    path_matcher__default_route_action__weighted_backend_services__header_action
    =
  {
    request_headers_to_remove;
    response_headers_to_remove;
    request_headers_to_add;
    response_headers_to_add;
  }

let path_matcher__default_route_action__weighted_backend_services
    ?backend_service ?weight ~header_action () :
    path_matcher__default_route_action__weighted_backend_services =
  { backend_service; weight; header_action }

let path_matcher__default_route_action ~cors_policy
    ~fault_injection_policy ~request_mirror_policy ~retry_policy
    ~timeout ~url_rewrite ~weighted_backend_services () :
    path_matcher__default_route_action =
  {
    cors_policy;
    fault_injection_policy;
    request_mirror_policy;
    retry_policy;
    timeout;
    url_rewrite;
    weighted_backend_services;
  }

let path_matcher__default_url_redirect ?host_redirect ?https_redirect
    ?path_redirect ?prefix_redirect ?redirect_response_code
    ~strip_query () : path_matcher__default_url_redirect =
  {
    host_redirect;
    https_redirect;
    path_redirect;
    prefix_redirect;
    redirect_response_code;
    strip_query;
  }

let path_matcher__header_action__request_headers_to_add ~header_name
    ~header_value ~replace () :
    path_matcher__header_action__request_headers_to_add =
  { header_name; header_value; replace }

let path_matcher__header_action__response_headers_to_add ~header_name
    ~header_value ~replace () :
    path_matcher__header_action__response_headers_to_add =
  { header_name; header_value; replace }

let path_matcher__header_action ?request_headers_to_remove
    ?response_headers_to_remove ~request_headers_to_add
    ~response_headers_to_add () : path_matcher__header_action =
  {
    request_headers_to_remove;
    response_headers_to_remove;
    request_headers_to_add;
    response_headers_to_add;
  }

let path_matcher__path_rule__route_action__cors_policy
    ?allow_credentials ?allow_headers ?allow_methods
    ?allow_origin_regexes ?allow_origins ?expose_headers ?max_age
    ~disabled () : path_matcher__path_rule__route_action__cors_policy
    =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    allow_origin_regexes;
    allow_origins;
    disabled;
    expose_headers;
    max_age;
  }

let path_matcher__path_rule__route_action__fault_injection_policy__abort
    ~http_status ~percentage () :
    path_matcher__path_rule__route_action__fault_injection_policy__abort
    =
  { http_status; percentage }

let path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay
    ?nanos ~seconds () :
    path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay
    =
  { nanos; seconds }

let path_matcher__path_rule__route_action__fault_injection_policy__delay
    ~percentage ~fixed_delay () :
    path_matcher__path_rule__route_action__fault_injection_policy__delay
    =
  { percentage; fixed_delay }

let path_matcher__path_rule__route_action__fault_injection_policy
    ~abort ~delay () :
    path_matcher__path_rule__route_action__fault_injection_policy =
  { abort; delay }

let path_matcher__path_rule__route_action__request_mirror_policy
    ~backend_service () :
    path_matcher__path_rule__route_action__request_mirror_policy =
  { backend_service }

let path_matcher__path_rule__route_action__retry_policy__per_try_timeout
    ?nanos ~seconds () :
    path_matcher__path_rule__route_action__retry_policy__per_try_timeout
    =
  { nanos; seconds }

let path_matcher__path_rule__route_action__retry_policy ?num_retries
    ?retry_conditions ~per_try_timeout () :
    path_matcher__path_rule__route_action__retry_policy =
  { num_retries; retry_conditions; per_try_timeout }

let path_matcher__path_rule__route_action__timeout ?nanos ~seconds ()
    : path_matcher__path_rule__route_action__timeout =
  { nanos; seconds }

let path_matcher__path_rule__route_action__url_rewrite ?host_rewrite
    ?path_prefix_rewrite () :
    path_matcher__path_rule__route_action__url_rewrite =
  { host_rewrite; path_prefix_rewrite }

let path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add
    ~header_name ~header_value ~replace () :
    path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add
    ~header_name ~header_value ~replace () :
    path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__path_rule__route_action__weighted_backend_services__header_action
    ?request_headers_to_remove ?response_headers_to_remove
    ~request_headers_to_add ~response_headers_to_add () :
    path_matcher__path_rule__route_action__weighted_backend_services__header_action
    =
  {
    request_headers_to_remove;
    response_headers_to_remove;
    request_headers_to_add;
    response_headers_to_add;
  }

let path_matcher__path_rule__route_action__weighted_backend_services
    ~backend_service ~weight ~header_action () :
    path_matcher__path_rule__route_action__weighted_backend_services
    =
  { backend_service; weight; header_action }

let path_matcher__path_rule__route_action ~cors_policy
    ~fault_injection_policy ~request_mirror_policy ~retry_policy
    ~timeout ~url_rewrite ~weighted_backend_services () :
    path_matcher__path_rule__route_action =
  {
    cors_policy;
    fault_injection_policy;
    request_mirror_policy;
    retry_policy;
    timeout;
    url_rewrite;
    weighted_backend_services;
  }

let path_matcher__path_rule__url_redirect ?host_redirect
    ?https_redirect ?path_redirect ?prefix_redirect
    ?redirect_response_code ~strip_query () :
    path_matcher__path_rule__url_redirect =
  {
    host_redirect;
    https_redirect;
    path_redirect;
    prefix_redirect;
    redirect_response_code;
    strip_query;
  }

let path_matcher__path_rule ?service ~paths ~route_action
    ~url_redirect () : path_matcher__path_rule =
  { paths; service; route_action; url_redirect }

let path_matcher__route_rules__header_action__request_headers_to_add
    ~header_name ~header_value ~replace () :
    path_matcher__route_rules__header_action__request_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__route_rules__header_action__response_headers_to_add
    ~header_name ~header_value ~replace () :
    path_matcher__route_rules__header_action__response_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__route_rules__header_action
    ?request_headers_to_remove ?response_headers_to_remove
    ~request_headers_to_add ~response_headers_to_add () :
    path_matcher__route_rules__header_action =
  {
    request_headers_to_remove;
    response_headers_to_remove;
    request_headers_to_add;
    response_headers_to_add;
  }

let path_matcher__route_rules__match_rules__header_matches__range_match
    ~range_end ~range_start () :
    path_matcher__route_rules__match_rules__header_matches__range_match
    =
  { range_end; range_start }

let path_matcher__route_rules__match_rules__header_matches
    ?exact_match ?invert_match ?prefix_match ?present_match
    ?regex_match ?suffix_match ~header_name ~range_match () :
    path_matcher__route_rules__match_rules__header_matches =
  {
    exact_match;
    header_name;
    invert_match;
    prefix_match;
    present_match;
    regex_match;
    suffix_match;
    range_match;
  }

let path_matcher__route_rules__match_rules__metadata_filters__filter_labels
    ~name ~value () :
    path_matcher__route_rules__match_rules__metadata_filters__filter_labels
    =
  { name; value }

let path_matcher__route_rules__match_rules__metadata_filters
    ~filter_match_criteria ~filter_labels () :
    path_matcher__route_rules__match_rules__metadata_filters =
  { filter_match_criteria; filter_labels }

let path_matcher__route_rules__match_rules__query_parameter_matches
    ?exact_match ?present_match ?regex_match ~name () :
    path_matcher__route_rules__match_rules__query_parameter_matches =
  { exact_match; name; present_match; regex_match }

let path_matcher__route_rules__match_rules ?full_path_match
    ?ignore_case ?path_template_match ?prefix_match ?regex_match
    ~header_matches ~metadata_filters ~query_parameter_matches () :
    path_matcher__route_rules__match_rules =
  {
    full_path_match;
    ignore_case;
    path_template_match;
    prefix_match;
    regex_match;
    header_matches;
    metadata_filters;
    query_parameter_matches;
  }

let path_matcher__route_rules__route_action__cors_policy
    ?allow_credentials ?allow_headers ?allow_methods
    ?allow_origin_regexes ?allow_origins ?disabled ?expose_headers
    ?max_age () :
    path_matcher__route_rules__route_action__cors_policy =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    allow_origin_regexes;
    allow_origins;
    disabled;
    expose_headers;
    max_age;
  }

let path_matcher__route_rules__route_action__fault_injection_policy__abort
    ?http_status ?percentage () :
    path_matcher__route_rules__route_action__fault_injection_policy__abort
    =
  { http_status; percentage }

let path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay
    ?nanos ~seconds () :
    path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay
    =
  { nanos; seconds }

let path_matcher__route_rules__route_action__fault_injection_policy__delay
    ?percentage ~fixed_delay () :
    path_matcher__route_rules__route_action__fault_injection_policy__delay
    =
  { percentage; fixed_delay }

let path_matcher__route_rules__route_action__fault_injection_policy
    ~abort ~delay () :
    path_matcher__route_rules__route_action__fault_injection_policy =
  { abort; delay }

let path_matcher__route_rules__route_action__request_mirror_policy
    ~backend_service () :
    path_matcher__route_rules__route_action__request_mirror_policy =
  { backend_service }

let path_matcher__route_rules__route_action__retry_policy__per_try_timeout
    ?nanos ~seconds () :
    path_matcher__route_rules__route_action__retry_policy__per_try_timeout
    =
  { nanos; seconds }

let path_matcher__route_rules__route_action__retry_policy
    ?retry_conditions ~num_retries ~per_try_timeout () :
    path_matcher__route_rules__route_action__retry_policy =
  { num_retries; retry_conditions; per_try_timeout }

let path_matcher__route_rules__route_action__timeout ?nanos ~seconds
    () : path_matcher__route_rules__route_action__timeout =
  { nanos; seconds }

let path_matcher__route_rules__route_action__url_rewrite
    ?host_rewrite ?path_prefix_rewrite ?path_template_rewrite () :
    path_matcher__route_rules__route_action__url_rewrite =
  { host_rewrite; path_prefix_rewrite; path_template_rewrite }

let path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add
    ~header_name ~header_value ~replace () :
    path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add
    ~header_name ~header_value ~replace () :
    path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__route_rules__route_action__weighted_backend_services__header_action
    ?request_headers_to_remove ?response_headers_to_remove
    ~request_headers_to_add ~response_headers_to_add () :
    path_matcher__route_rules__route_action__weighted_backend_services__header_action
    =
  {
    request_headers_to_remove;
    response_headers_to_remove;
    request_headers_to_add;
    response_headers_to_add;
  }

let path_matcher__route_rules__route_action__weighted_backend_services
    ~backend_service ~weight ~header_action () :
    path_matcher__route_rules__route_action__weighted_backend_services
    =
  { backend_service; weight; header_action }

let path_matcher__route_rules__route_action ~cors_policy
    ~fault_injection_policy ~request_mirror_policy ~retry_policy
    ~timeout ~url_rewrite ~weighted_backend_services () :
    path_matcher__route_rules__route_action =
  {
    cors_policy;
    fault_injection_policy;
    request_mirror_policy;
    retry_policy;
    timeout;
    url_rewrite;
    weighted_backend_services;
  }

let path_matcher__route_rules__url_redirect ?host_redirect
    ?https_redirect ?path_redirect ?prefix_redirect
    ?redirect_response_code ?strip_query () :
    path_matcher__route_rules__url_redirect =
  {
    host_redirect;
    https_redirect;
    path_redirect;
    prefix_redirect;
    redirect_response_code;
    strip_query;
  }

let path_matcher__route_rules ?service ~priority ~header_action
    ~match_rules ~route_action ~url_redirect () :
    path_matcher__route_rules =
  {
    priority;
    service;
    header_action;
    match_rules;
    route_action;
    url_redirect;
  }

let path_matcher ?default_service ?description ~name
    ~default_route_action ~default_url_redirect ~header_action
    ~path_rule ~route_rules () : path_matcher =
  {
    default_service;
    description;
    name;
    default_route_action;
    default_url_redirect;
    header_action;
    path_rule;
    route_rules;
  }

let test ?description ~host ~path ~service () : test =
  { description; host; path; service }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_url_map ?default_service ?description ?id ?project
    ?timeouts ~name ~default_route_action ~default_url_redirect
    ~header_action ~host_rule ~path_matcher ~test () :
    google_compute_url_map =
  {
    default_service;
    description;
    id;
    name;
    project;
    default_route_action;
    default_url_redirect;
    header_action;
    host_rule;
    path_matcher;
    test;
    timeouts;
  }

type t = {
  creation_timestamp : string prop;
  default_service : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  map_id : float prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

let register ?tf_module ?default_service ?description ?id ?project
    ?timeouts ~name ~default_route_action ~default_url_redirect
    ~header_action ~host_rule ~path_matcher ~test __resource_id =
  let __resource_type = "google_compute_url_map" in
  let __resource =
    google_compute_url_map ?default_service ?description ?id ?project
      ?timeouts ~name ~default_route_action ~default_url_redirect
      ~header_action ~host_rule ~path_matcher ~test ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_url_map __resource);
  let __resource_attributes =
    ({
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       default_service =
         Prop.computed __resource_type __resource_id
           "default_service";
       description =
         Prop.computed __resource_type __resource_id "description";
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       map_id = Prop.computed __resource_type __resource_id "map_id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
     }
      : t)
  in
  __resource_attributes
